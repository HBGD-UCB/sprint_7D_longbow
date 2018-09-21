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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     6482   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      588   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     7100   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      836   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     7604   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      900   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     7184   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      688   31382
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0      290    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1       16    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0      316    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1       26    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0      356    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1       14    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0      332    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1       16    1366
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0      264    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1       18    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0      264    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       26    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      254    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       24    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0      242    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       34    1126
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     8782   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      663   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     6663   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      726   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     7545   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      750   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     7680   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      698   33507
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0     2129    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1       98    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0     2164    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1      180    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0     2217    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1      159    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0     2403    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1       95    9445
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
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0      206     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1       48     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0      206     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       46     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      206     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       46     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0      196     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       42     996
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     3553   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      865   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     3095   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      936   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     3410   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      981   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     3348   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      962   17150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0     1831    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1      387    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0     1794    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1      466    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0     1787    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1      485    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0     2011    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1      476    9237


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







# Results Detail

## Results Plots
![](/tmp/945f185e-bd4f-461f-bf11-5ee4ce04a6be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/945f185e-bd4f-461f-bf11-5ee4ce04a6be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/945f185e-bd4f-461f-bf11-5ee4ce04a6be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/945f185e-bd4f-461f-bf11-5ee4ce04a6be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2047267    0.1256700   0.2837833
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3530850    0.2633034   0.4428665
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2951180    0.2061813   0.3840547
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2329892    0.1603126   0.3056658
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2586326    0.2091184   0.3081469
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3344414    0.2658713   0.4030116
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2225973    0.1623547   0.2828399
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2037274    0.1505944   0.2568603
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1538280    0.1405558   0.1671003
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1528412    0.1395385   0.1661439
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1513586    0.1382247   0.1644925
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1541340    0.1408821   0.1673860
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0956159    0.0903792   0.1008525
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0942304    0.0888127   0.0996480
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0954866    0.0902355   0.1007378
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0945804    0.0893541   0.0998066
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0432084    0.0114783   0.0749385
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0680542    0.0203898   0.1157186
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0336357   -0.0018230   0.0690943
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0401979    0.0078418   0.0725539
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0842105    0.0282917   0.1401294
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1777778    0.0986824   0.2568731
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1397849    0.0692131   0.2103567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1000000    0.0379361   0.1620639
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1600000    0.0880583   0.2319417
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0769231    0.0256474   0.1281988
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1078431    0.0475736   0.1681127
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1862745    0.1106267   0.2619224
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0387097    0.0083152   0.0691041
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0437956    0.0094988   0.0780924
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0357143    0.0049475   0.0664811
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0472973    0.0130687   0.0815259
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0322178    0.0167162   0.0477195
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0524162    0.0347148   0.0701177
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0332034    0.0161789   0.0502280
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0495976    0.0307508   0.0684443
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0606122    0.0213603   0.0998641
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0868056    0.0407844   0.1328267
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0852106    0.0387334   0.1316879
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1168981    0.0643970   0.1693992
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0206490    0.0055029   0.0357951
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0340909    0.0072675   0.0609143
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0257732    0.0034634   0.0480830
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0552995    0.0248724   0.0857266
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0392273    0.0252978   0.0531569
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0862189    0.0634089   0.1090289
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0632523    0.0416551   0.0848495
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0543625    0.0395728   0.0691522
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0751950    0.0668490   0.0835410
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0955553    0.0864278   0.1046828
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0873413    0.0789019   0.0957807
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0863066    0.0778970   0.0947162
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0441077    0.0252096   0.0630058
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0757133    0.0581047   0.0933218
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0674622    0.0492414   0.0856830
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0386093    0.0269987   0.0502200
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0700000    0.0199309   0.1200691
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0857143    0.0321034   0.1393251
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089    0.0334784   0.1447394
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524    0.0129642   0.1035407
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1058334    0.0591427   0.1525242
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1719333    0.1100759   0.2337907
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1157401    0.0651766   0.1663036
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0697492    0.0304736   0.1090248
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1863310    0.1185273   0.2541346
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1795171    0.1123833   0.2466508
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1797731    0.1126347   0.2469114
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1737076    0.1054462   0.2419689
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0320988    0.0149241   0.0492734
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0394089    0.0126311   0.0661866
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0511628    0.0216976   0.0806280
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0672646    0.0343737   0.1001555
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0459171    0.0306577   0.0611765
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0870950    0.0621076   0.1120823
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0625821    0.0396802   0.0854840
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0718749    0.0545671   0.0891828
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2125142    0.1958587   0.2291696
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2199993    0.2039119   0.2360868
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2209536    0.2040697   0.2378375
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2233985    0.2055220   0.2412750
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1739183    0.1456984   0.2021382
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1993066    0.1742505   0.2243627
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2094869    0.1853202   0.2336537
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1896272    0.1665899   0.2126645


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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846689   0.0798658   0.0894720
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0563261   0.0473846   0.0652676
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1126516   0.0868319   0.1384714
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449331   0.0323731   0.0574931
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2183090   0.2083912   0.2282269
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1963841   0.1829372   0.2098310


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.7246653   1.1004526   2.702952
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4415222   0.8964183   2.318099
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1380500   0.7072077   1.831368
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2931139   0.9807245   1.705008
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8606700   0.6213766   1.192116
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7877095   0.5729229   1.083019
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.9935849   0.9699273   1.017820
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9839465   0.9615330   1.006882
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0019893   0.9783927   1.026155
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.9855100   0.9648800   1.006581
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9986484   0.9793972   1.018278
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9891705   0.9695028   1.009237
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5750224   0.5703211   4.349648
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.7784519   0.2156621   2.809892
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9303256   0.3168899   2.731251
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1111111   0.9492417   4.695106
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.6599462   0.7208115   3.822666
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1875000   0.4785137   2.946950
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.4807692   0.2151491   1.074321
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.6740196   0.3289721   1.380976
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1642157   0.6351858   2.133861
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1313869   0.3732482   3.429451
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9226190   0.2876093   2.959661
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2218468   0.4200166   3.554407
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.6269323   0.9038407   2.928513
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0305917   0.5101769   2.081865
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.5394440   0.8338443   2.842123
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4321464   0.6204425   3.305775
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.4058328   0.6028056   3.278612
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.9286230   0.8766200   4.243101
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6509740   0.5630837   4.840693
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2481591   0.4013444   3.881706
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.6780777   1.0705381   6.699528
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1979302   1.4119871   3.421347
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6124554   0.9855238   2.638204
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3858321   0.8863334   2.166826
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2707670   1.0976801   1.471147
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1615312   1.0054599   1.341829
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1477712   0.9928365   1.326884
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7165527   1.0570441   2.787541
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5294875   0.9295159   2.516721
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8753417   0.5191800   1.475833
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2244898   0.4734817   3.166702
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2729844   0.4926099   3.289599
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8321775   0.2893443   2.393410
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.6245652   0.9202504   2.867928
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0936062   0.5879791   2.034042
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6590469   0.3226274   1.346267
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9634312   0.5717405   1.623463
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9648051   0.5727269   1.625293
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9322527   0.5456919   1.592648
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2277378   0.5170124   2.915481
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5939177   0.7262154   3.498375
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0955502   1.0150945   4.326032
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.8967880   1.2228502   2.942147
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3629377   0.8314009   2.234300
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5653203   1.0388284   2.358645
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0352220   0.9353876   1.145712
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0397124   0.9318901   1.160010
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0512170   0.9429193   1.171953
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1459782   0.9326365   1.408122
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2045132   0.9842358   1.474090
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0903231   0.8880410   1.338682


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0634949   -0.0061314   0.1331213
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0048603   -0.0437808   0.0340601
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0017965   -0.0003329   0.0039260
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0003627   -0.0008984   0.0016239
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0095002   -0.0207324   0.0397328
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0407895   -0.0107598   0.0923387
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0276471   -0.0886587   0.0333646
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0026696   -0.0236597   0.0289989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0108728   -0.0032890   0.0250346
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0299739   -0.0062616   0.0662094
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0117484   -0.0020944   0.0255913
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0202701    0.0073524   0.0331878
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0094739    0.0022854   0.0166623
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0122184   -0.0037601   0.0281969
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0057946   -0.0382574   0.0498467
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0068182   -0.0336265   0.0472629
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0036001   -0.0618697   0.0546696
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0128343   -0.0021425   0.0278111
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0222740    0.0081627   0.0363853
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0057949   -0.0084867   0.0200765
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0224658   -0.0021648   0.0470964


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2367256   -0.0699567   0.4555033
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0191523   -0.1847528   0.1233011
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0115440   -0.0022234   0.0251223
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0037792   -0.0094298   0.0168154
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1802407   -0.6269072   0.5869430
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3263158   -0.2283944   0.6305336
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2088889   -0.7673694   0.1731144
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0645161   -0.8459385   0.5259159
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2523241   -0.1543171   0.5157143
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.3308886   -0.2028369   0.6277882
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3626352   -0.2100558   0.6642850
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3406885    0.0913979   0.5215820
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1118935    0.0230560   0.1926527
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2169219   -0.1317034   0.4581519
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0764516   -0.7319580   0.5075275
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0605249   -0.3759437   0.3585396
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0197014   -0.3940435   0.2541188
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2856317   -0.1247612   0.5462841
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3266412    0.0921699   0.5005541
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0265444   -0.0410216   0.0897250
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1143972   -0.0207414   0.2316444
