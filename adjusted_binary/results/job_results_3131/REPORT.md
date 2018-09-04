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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     6178   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1     2124   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     6584   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     3820   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     7140   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     3552   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     6616   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     3174   39188
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      254    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      112    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      292    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      126    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      316    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      122    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      288    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      134    1644
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      234    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       48    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      224    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       66    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      218    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       60    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      212    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       64    1126
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     7743   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1     1724   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     5224   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     2175   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     5944   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     2359   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     6212   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     2180   33561
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1783    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      444    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1616    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      724    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1739    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      635    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1919    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      581    9441
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
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      154     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1      100     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      128     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1      126     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      144     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1      108     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      126     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1      112     998
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     2841   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1     1609   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     1649   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1     2384   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     2059   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1     2344   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     2214   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1     2108   17208
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1561    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      664    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1203    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1     1065    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1327    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      953    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1535    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      962    9270


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
![](/tmp/8e53382c-07fe-400d-b470-a0e0809fc6f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8e53382c-07fe-400d-b470-a0e0809fc6f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8e53382c-07fe-400d-b470-a0e0809fc6f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8e53382c-07fe-400d-b470-a0e0809fc6f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1208791   0.0538154   0.1879429
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0816327   0.0273532   0.1359121
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1616162   0.0890131   0.2342192
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1000000   0.0411252   0.1588748
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0492274   0.0245170   0.0739379
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0584158   0.0217985   0.0950332
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0725443   0.0323233   0.1127653
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0462805   0.0172893   0.0752717
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0400158   0.0279803   0.0520514
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0808190   0.0626506   0.0989874
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0728896   0.0529806   0.0927987
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0709500   0.0561856   0.0857144
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3233051   0.3156457   0.3309644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3233156   0.3156561   0.3309752
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3233128   0.3156532   0.3309724
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.3233130   0.3156534   0.3309725
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3004514   0.2648818   0.3360210
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3003837   0.2648313   0.3359360
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3003950   0.2648301   0.3359600
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3004166   0.2648640   0.3359692
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4449155   0.3477132   0.5421177
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1638919   0.0902626   0.2375212
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3347451   0.2420197   0.4274706
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3128249   0.2202070   0.4054428
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2156943   0.1395247   0.2918639
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2374036   0.1610291   0.3137780
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3282588   0.2441045   0.4124132
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1980821   0.1240349   0.2721293
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1539089   0.0981197   0.2096980
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2534401   0.1829886   0.3238915
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1256327   0.0717205   0.1795449
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1306140   0.0771515   0.1840765
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1343618   0.1047155   0.1640082
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0819555   0.0603172   0.1035937
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1075405   0.0779192   0.1371619
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0723834   0.0499692   0.0947976
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1767307   0.1149414   0.2385199
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2352223   0.1673550   0.3030896
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2228309   0.1546942   0.2909675
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2426450   0.1726902   0.3125998
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.3694783   0.3241113   0.4148453
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4193298   0.3593252   0.4793343
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4552467   0.3986913   0.5118020
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4344663   0.3814174   0.4875152
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2012838   0.1776368   0.2249309
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2436678   0.2142410   0.2730946
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2065767   0.1765437   0.2366097
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2212157   0.1972395   0.2451918
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3266281   0.2661666   0.3870896
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3485744   0.2859074   0.4112413
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3630855   0.2998821   0.4262889
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3115311   0.2501614   0.3729009
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2233912   0.2113920   0.2353905
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2695800   0.2565205   0.2826396
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2688584   0.2564091   0.2813078
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2582815   0.2463467   0.2702164
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2095090   0.1835069   0.2355112
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2775637   0.2514128   0.3037147
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2529683   0.2288609   0.2770756
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2285998   0.2056117   0.2515879
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.5238095   0.3088018   0.7388172
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.5238095   0.3088018   0.7388172
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.4705882   0.2317634   0.7094131
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.3888889   0.1622036   0.6155741
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7333069   0.6514083   0.8152055
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7953481   0.7185646   0.8721316
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7457894   0.6645163   0.8270625
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6536243   0.5630148   0.7442339
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3061953   0.2169215   0.3954691
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5191891   0.4261594   0.6122189
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4561191   0.3598480   0.5523902
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3761419   0.2820404   0.4702434
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1931591   0.1389718   0.2473463
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4428908   0.3717101   0.5140715
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3013961   0.2359056   0.3668865
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2552460   0.1935528   0.3169391
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3944746   0.3113481   0.4776010
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4830138   0.3987192   0.5673084
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4294202   0.3448106   0.5140298
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4726441   0.3861344   0.5591537
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7476838   0.7062836   0.7890841
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8066140   0.7547768   0.8584512
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8001151   0.7490704   0.8511599
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.8399534   0.7947477   0.8851591
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5200386   0.4883211   0.5517560
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7157185   0.6819682   0.7494687
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6769829   0.6412092   0.7127565
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6608326   0.6323698   0.6892954
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3947457   0.3195070   0.4699844
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.4416354   0.3566749   0.5265960
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.4864056   0.4060592   0.5667520
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.4383052   0.3563360   0.5202744
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4133093   0.3935596   0.4330591
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5666036   0.5469824   0.5862247
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5153991   0.4955245   0.5352737
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4917311   0.4709204   0.5125418
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3034909   0.2730471   0.3339348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4439611   0.4139924   0.4739299
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4054768   0.3761637   0.4347899
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3778016   0.3489269   0.4066764


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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514228   0.2432969   0.2595487
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2525156   0.2383895   0.2666417
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4805195   0.3681932   0.5928458
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7909441   0.7661948   0.8156934
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974941   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4390244   0.3983906   0.4796582
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907601   0.4776428   0.5038774
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3930960   0.3759134   0.4102786


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.6753247   0.2840672   1.6054774
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3370064   0.6547919   2.7300066
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8272727   0.3683993   1.8577130
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1866520   0.5313979   2.6498845
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4736560   0.6973212   3.1142924
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9401355   0.4214069   2.0973904
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0196764   1.3942221   2.9257123
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8215196   1.2178151   2.7244971
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7730482   1.2357430   2.5439756
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0000327   1.0000190   1.0000465
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0000240   1.0000102   1.0000379
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0000245   1.0000106   1.0000384
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.9997745   0.9991320   1.0004175
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9998123   0.9991330   1.0004921
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9998842   0.9992500   1.0005187
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3683664   0.2233409   0.6075636
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7523792   0.5284358   1.0712265
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7031109   0.4868591   1.0154168
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1006482   0.6894448   1.7571045
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.5218706   0.9915990   2.3357127
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9183464   0.5528349   1.5255189
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.6466893   1.0426525   2.6006608
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8162799   0.4653701   1.4317914
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8486451   0.4911391   1.4663840
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6099608   0.4325330   0.8601707
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8003799   0.5624435   1.1389729
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5387198   0.3683707   0.7878452
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3309648   0.8460954   2.0936970
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2608500   0.7926223   2.0056749
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.3729648   0.8727315   2.1599226
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1349238   0.9498806   1.3560147
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2321336   1.0452102   1.4524860
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1758912   1.0000718   1.3826207
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2105681   1.0292043   1.4238914
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0262956   0.8562317   1.2301374
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0990234   0.9436770   1.2799427
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0671904   0.8247814   1.3808452
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1116174   0.8626005   1.4325210
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.9537794   0.7283723   1.2489426
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2067619   1.1307815   1.2878476
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2035316   1.1286399   1.2833929
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1561848   1.0843297   1.2328014
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3248294   1.1393398   1.5405176
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2074337   1.0336938   1.4103753
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0911215   0.9340805   1.2745647
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0000000   0.5596234   1.7869160
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         0.8983957   0.4677295   1.7256019
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         0.7424242   0.3639422   1.5145091
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0846048   0.9359408   1.2568823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0170223   0.8705477   1.1881421
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8913381   0.7463644   1.0644715
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.6956143   1.2069754   2.3820767
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4896345   1.0408683   2.1318845
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2284378   0.8372641   1.8023698
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.2928812   1.6693561   3.1493006
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.5603515   1.1009434   2.2114642
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.3214288   0.9178083   1.9025479
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2244486   0.9330577   1.6068399
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0885879   0.8170580   1.4503543
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1981611   0.9081573   1.5807723
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0788169   0.9918635   1.1733933
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0701249   0.9841613   1.1635973
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1234072   1.0412219   1.2120795
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.3762796   1.2763035   1.4840871
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3017936   1.2034684   1.4081521
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2707377   1.1819498   1.3661952
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1187847   0.8538557   1.4659142
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2321998   0.9578560   1.5851196
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1103482   0.8504787   1.4496225
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3708947   1.2970496   1.4489440
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2470058   1.1791962   1.3187148
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1897411   1.1186982   1.2652955
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4628481   1.2992168   1.6470882
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3360427   1.1856323   1.5055344
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.2448532   1.1018721   1.4063878


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0048997   -0.0632572    0.0534577
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0083706   -0.0120952    0.0288364
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0213158    0.0099890    0.0326425
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0000082    0.0000051    0.0000113
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0000352   -0.0000929    0.0001634
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1441024   -0.2265711   -0.0616338
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0300059   -0.0363111    0.0963229
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0078811   -0.0405798    0.0563421
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0378272   -0.0624405   -0.0132139
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0346370   -0.0204096    0.0896836
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0391703    0.0054853    0.0728554
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0099422   -0.0101719    0.0300562
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0361170   -0.0158541    0.0880882
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0280315    0.0184454    0.0376177
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0430066    0.0206760    0.0653372
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0432900   -0.2266751    0.1400950
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0182531   -0.0890707    0.0525645
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1094526    0.0303285    0.1885768
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1367020    0.0871495    0.1862546
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0524192   -0.0192857    0.1241241
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0432603    0.0127769    0.0737436
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0967304    0.0708456    0.1226151
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0442787   -0.0199014    0.1084588
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0774508    0.0613667    0.0935349
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0896051    0.0639572    0.1152530


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0422466   -0.6888711    0.3568023
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1453277   -0.2927306    0.4349444
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3475495    0.1444595    0.5024296
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0000254    0.0000159    0.0000349
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0001172   -0.0003097    0.0005438
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4790433   -0.7871642   -0.2240448
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1221242   -0.1931883    0.3541120
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0487122   -0.3029538    0.3054638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3918508   -0.6674714   -0.1617883
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1638709   -0.1400904    0.3867925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0958533    0.0094909    0.1746857
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0470688   -0.0526433    0.1373356
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0995658   -0.0556516    0.2319609
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1114916    0.0726933    0.1486667
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1703126    0.0767955    0.2543568
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0900901   -0.5479021    0.2323181
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0255269   -0.1296357    0.0689871
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2633301    0.0459807    0.4311619
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4144230    0.2495423    0.5430783
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1172968   -0.0588505    0.2641407
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0546945    0.0151152    0.0926832
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1568340    0.1136865    0.1978810
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1008570   -0.0580065    0.2358666
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1578180    0.1245392    0.1898318
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2279471    0.1593613    0.2909371
