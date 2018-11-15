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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        hhwealth_quart    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       19      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       17      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        4      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       14      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        6      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       16      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        4      82
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               0        9      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        3      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       14      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        3      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       12      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        3      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               0        7      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        4      55
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0        9      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        7      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        5      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        2      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        5      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        2      31
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               1        2      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               0        7      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               1        2      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               1        1      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               0        7      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               1        1      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       15      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       13      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        2      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        1      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        4      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        1      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       24      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       12      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       18      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       20      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        5      90
Birth       ki1000108-IRC              INDIA                          Wealth Q4               0       80     388
Birth       ki1000108-IRC              INDIA                          Wealth Q4               1       11     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1               0       90     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1               1        8     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2               0       83     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2               1       16     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3               0       90     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3               1       10     388
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      278     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       15     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      147     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       10     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      149     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       12     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      195     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       10     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      810    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       32    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      635    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       52    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      500    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       38    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      917    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       65    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     3089   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1     1062   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3292   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1910   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     3570   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1776   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3308   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1587   19594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      127     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       56     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      146     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       63     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      158     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       61     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      144     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       67     822
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       16      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        5      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       14      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        5      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       16      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        4      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       15      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        3      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       15      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        4      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       14      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        3      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       13      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        4      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        8      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        2      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0        7      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        3      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0        7      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        2      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0        3      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        5      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        1      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       13      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        4      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        1      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       14      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       10      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        3      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       12      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        3      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       10      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        5      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       54     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       40     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       77     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       14     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       64     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       30     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       63     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       27     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4               0       78     407
6 months    ki1000108-IRC              INDIA                          Wealth Q4               1       21     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1               0       79     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1               1       26     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2               0       67     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2               1       33     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3               0       83     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3               1       20     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      132     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       23     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      103     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       35     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      123     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       17     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      129     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       19     581
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      435    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       67    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      556    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       49    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      366    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       43    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      468    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       36    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      117     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       24     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      112     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       33     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      109     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       30     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      106     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       32     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               0       50     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               1        2     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               1        7     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               0       45     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               1        7     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               0       49     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               1        3     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      220     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1      119     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0       98     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       77     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      104     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       91     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      125     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       91     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      623    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1      120    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      431    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      139    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      382    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      103    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      700    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      210    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      142     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               1       75     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      127     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       76     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      122     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       77     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      129     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               1       68     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     3879   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      863   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     2615   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1090   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     2976   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1181   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3109   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1090   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      914    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      226    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      830    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      373    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      887    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      324    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      977    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      294    4825
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       10      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1       11      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       10      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1       11      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0        9      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        8      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       11      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        7      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       10      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        8      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       12      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        7      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       14      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        3      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0        7      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1       10      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0        7      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        4      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        4      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        6      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        8      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        2      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0        6      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        4      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0        5      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        2      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        2      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        6      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        4      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        3      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0        8      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        8      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       10      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        6      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       12      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        5      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       13      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        4      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       12      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        5      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       10      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       12      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       11      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       27     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       68     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       21     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       70     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       26     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       69     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       59     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       69     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4               1       31     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               0       51     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               1       54     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       55     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               1       46     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               0       64     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               1       39     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      123     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       33     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0       60     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       69     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0       95     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       47     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      108     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       41     576
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0       77     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       50     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       64     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       63     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0       72     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       54     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0       63     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       56     499
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       38     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        3     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       30     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1       10     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       38     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        4     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       37     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        4     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      103    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1      300    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0       37    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1      166    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0       41    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1      172    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0       36    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1      183    1038
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      372    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1      316    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      144    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      345    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      140    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      283    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      281    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      564    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0       97     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1       63     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0       72     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       57     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0       75     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       71     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0       78     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1       61     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     1425    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      806    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0      826    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     1194    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     1031    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     1175    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     1109    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     1057    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      800    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      341    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      624    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      546    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      678    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      488    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      783    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      487    4747


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
![](/tmp/a702c3b1-48a5-46f3-99db-39c3c6ad5881/7658a6cf-a491-47bf-b201-d4e278d59289/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a702c3b1-48a5-46f3-99db-39c3c6ad5881/7658a6cf-a491-47bf-b201-d4e278d59289/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a702c3b1-48a5-46f3-99db-39c3c6ad5881/7658a6cf-a491-47bf-b201-d4e278d59289/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a702c3b1-48a5-46f3-99db-39c3c6ad5881/7658a6cf-a491-47bf-b201-d4e278d59289/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1208791   0.0538154   0.1879429
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0816327   0.0273532   0.1359121
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1616162   0.0890131   0.2342192
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1000000   0.0411252   0.1588748
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0511945   0.0259434   0.0764457
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0636943   0.0254714   0.1019172
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0745342   0.0339404   0.1151279
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0487805   0.0192751   0.0782858
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0380048   0.0250875   0.0509220
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0756914   0.0559093   0.0954735
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0706320   0.0489787   0.0922852
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0661914   0.0506392   0.0817437
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2558420   0.2416437   0.2700403
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3671665   0.3526978   0.3816352
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3322110   0.3181407   0.3462813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.3242084   0.3100327   0.3383841
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3060109   0.2278929   0.3841289
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3014354   0.2328109   0.3700599
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2785388   0.2086803   0.3483973
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3175355   0.2503811   0.3846900
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4255319   0.3254461   0.5256177
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1538462   0.0796153   0.2280770
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3191489   0.2247871   0.4135107
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3000000   0.2051962   0.3948038
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2121212   0.1314931   0.2927493
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2476190   0.1649584   0.3302796
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3300000   0.2377266   0.4222734
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1941748   0.1176890   0.2706605
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1483871   0.0923758   0.2043984
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2536232   0.1809698   0.3262766
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1214286   0.0672775   0.1755797
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1283784   0.0744396   0.1823172
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1334661   0.1037096   0.1632227
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0809917   0.0592468   0.1027367
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1051345   0.0754010   0.1348679
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0714286   0.0489389   0.0939183
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1702128   0.1081253   0.2323002
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2275862   0.1592819   0.2958905
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2158273   0.1473754   0.2842793
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2318841   0.1614077   0.3023604
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.3510324   0.3001968   0.4018681
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4400000   0.3664158   0.5135842
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4666667   0.3966069   0.5367264
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4212963   0.3554126   0.4871800
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1615074   0.1350419   0.1879729
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2438596   0.2086013   0.2791180
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2123711   0.1759657   0.2487765
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2307692   0.2033898   0.2581487
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3456221   0.2823081   0.4089361
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3743842   0.3077682   0.4410003
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3869347   0.3192235   0.4546458
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3451777   0.2787477   0.4116077
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1819907   0.1692409   0.1947405
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2941970   0.2780225   0.3103715
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2840991   0.2693513   0.2988470
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2595856   0.2449596   0.2742116
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1982456   0.1690704   0.2274209
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3100582   0.2800404   0.3400760
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2675475   0.2403841   0.2947109
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2313139   0.2052433   0.2573845
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.5238095   0.3088018   0.7388172
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.5238095   0.3088018   0.7388172
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.4705882   0.2317634   0.7094131
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.3888889   0.1622036   0.6155741
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7157895   0.6249690   0.8066099
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7692308   0.6825487   0.8559128
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7263158   0.6365402   0.8160914
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6483516   0.5501155   0.7465878
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3100000   0.2192420   0.4007580
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5142857   0.4185712   0.6100002
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4554455   0.3582027   0.5526884
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3786408   0.2848530   0.4724285
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2115385   0.1473956   0.2756813
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5348837   0.4487366   0.6210309
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3309859   0.2535213   0.4084506
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2751678   0.2033967   0.3469389
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3937008   0.3086441   0.4787575
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4960630   0.4090191   0.5831069
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4285714   0.3420764   0.5150664
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4705882   0.3808190   0.5603575
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7444169   0.7018101   0.7870237
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8177340   0.7646005   0.8708675
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8075117   0.7545400   0.8604835
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.8356164   0.7865067   0.8847262
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.4593023   0.4220572   0.4965474
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7055215   0.6651137   0.7459292
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6690307   0.6241785   0.7138829
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6674556   0.6356836   0.6992276
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3937500   0.3179790   0.4695210
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.4418605   0.3560884   0.5276325
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.4863014   0.4051572   0.5674455
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.4388489   0.3562800   0.5214179
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3612730   0.3376969   0.3848491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5910891   0.5669688   0.6152095
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5326383   0.5094170   0.5558595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4879963   0.4635988   0.5123938
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2988606   0.2660724   0.3316489
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4666667   0.4335535   0.4997798
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4185249   0.3875807   0.4494691
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3834646   0.3530006   0.4139285


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0575980   0.0416028   0.0735933
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613316   0.0528136   0.0698496
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3233133   0.3156536   0.3309730
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1617900   0.1318200   0.1917600
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4086486   0.3769522   0.4403450
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2522280   0.2381653   0.2662906
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4805195   0.3681932   0.5928458
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7909441   0.7661948   0.8156934
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4390244   0.3983906   0.4796582
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907805   0.4776507   0.5039102
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3922477   0.3752571   0.4092384


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.6753247   0.2840672   1.6054774
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3370064   0.6547919   2.7300066
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8272727   0.3683993   1.8577130
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2441614   0.5721643   2.7054073
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4559006   0.6982621   3.0356032
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9528455   0.4365830   2.0795921
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.9916303   1.2971947   3.0578225
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8585037   1.1759273   2.9372872
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7416624   1.1521723   2.6327556
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4351300   1.3429126   1.5336799
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2985008   1.2139340   1.3889588
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2672213   1.1828685   1.3575894
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.9850478   0.7001632   1.3858473
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9102250   0.6372081   1.3002182
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0376608   0.7471703   1.4410903
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3615385   0.2113666   0.6184046
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7500000   0.5140216   1.0943119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7050000   0.4754511   1.0453757
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1673469   0.7038798   1.9359824
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.5557143   0.9705053   2.4938009
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9153953   0.5295166   1.5824783
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.7091997   1.0641395   2.7452827
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8183230   0.4562326   1.4677874
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8651586   0.4918146   1.5219140
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6068336   0.4280625   0.8602646
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7877240   0.5495069   1.1292107
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5351812   0.3638731   0.7871397
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3370690   0.8336980   2.1443659
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2679856   0.7819711   2.0560702
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.3623188   0.8473835   2.1901685
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2534454   1.0046826   1.5638026
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.3294118   1.0791188   1.6377581
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2001634   0.9697855   1.4852688
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5098977   1.2135004   1.8786899
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3149313   1.0373186   1.6668402
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4288462   1.1671439   1.7492284
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0832184   0.8390850   1.3983828
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1195310   0.8689850   1.4423145
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.9987140   0.7656844   1.3026643
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6165496   1.4809643   1.7645481
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5610637   1.4323847   1.7013026
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.4263673   1.3096424   1.5534956
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5640103   1.3089812   1.8687268
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3495758   1.1272778   1.6157108
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1668048   0.9663673   1.4088156
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0000000   0.5596234   1.7869160
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         0.8983957   0.4677295   1.7256019
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         0.7424242   0.3639422   1.5145091
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0746606   0.9069278   1.2734150
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0147059   0.8499851   1.2113483
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9057854   0.7433566   1.1037061
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.6589862   1.1726791   2.3469635
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4691792   1.0226018   2.1107800
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2214219   0.8323714   1.7923145
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.5285412   1.7937396   3.5643528
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.5646607   1.0667648   2.2949417
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.3007932   0.8719768   1.9404907
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2600000   0.9538844   1.6643526
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0885714   0.8099518   1.4630349
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1952941   0.8959986   1.5945650
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0984893   1.0073731   1.1978470
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0847574   0.9943149   1.1834266
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1225114   1.0341013   1.2184801
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5360721   1.3909006   1.6963955
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4566239   1.3111527   1.6182349
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4531945   1.3227785   1.5964686
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1221853   0.8538014   1.4749331
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2350511   0.9573467   1.5933112
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1145369   0.8515552   1.4587341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6361288   1.5180142   1.7634337
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4743374   1.3682824   1.5886127
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3507689   1.2444502   1.4661709
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5614858   1.3716479   1.7775975
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4004014   1.2315869   1.5923554
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2830882   1.1220270   1.4672688


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0048997   -0.0632572    0.0534577
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0064035   -0.0144668    0.0272738
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0233268    0.0111920    0.0354617
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0674713    0.0549926    0.0799500
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0055243   -0.0731080    0.0620594
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1247189   -0.2090344   -0.0404035
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0335790   -0.0377782    0.1049362
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0134029   -0.0351927    0.0619986
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0369315   -0.0616559   -0.0122071
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0411549   -0.0141930    0.0965029
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0576162    0.0164491    0.0987833
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0497186    0.0262132    0.0732240
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0171230   -0.0373396    0.0715855
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0693930    0.0585163    0.0802696
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0539824    0.0279587    0.0800061
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0432900   -0.2266751    0.1400950
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0007357   -0.0791270    0.0776556
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1056479    0.0250503    0.1862456
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1183226    0.0603353    0.1763100
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0531930   -0.0206905    0.1270765
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0465272    0.0146169    0.0784376
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1574666    0.1261932    0.1887400
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0452744   -0.0194686    0.1100174
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1295075    0.1099511    0.1490639
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0933871    0.0654185    0.1213556


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0422466   -0.6888711    0.3568023
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1111757   -0.3344106    0.4079718
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3803397    0.1562675    0.5449044
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2086871    0.1691491    0.2463435
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0183845   -0.2699300    0.1833353
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4146061   -0.7265610   -0.1590152
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1366667   -0.2080049    0.3829955
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0828415   -0.2721917    0.3387948
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3825723   -0.6596108   -0.1517797
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1947077   -0.1132835    0.4174927
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1409920    0.0339826    0.2361476
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2353810    0.1164988    0.3382667
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0472039   -0.1154182    0.1861165
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2760440    0.2316504    0.3178727
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2140221    0.1034246    0.3109768
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0900901   -0.5479021    0.2323181
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0010289   -0.1168874    0.1028112
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2541765    0.0325520    0.4250309
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.3587045    0.1588737    0.5110603
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1190283   -0.0630380    0.2699121
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0588250    0.0173357    0.0985625
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2553089    0.2019063    0.3051382
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1031250   -0.0573088    0.2392149
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2638807    0.2222654    0.3032692
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2380819    0.1624716    0.3068663
