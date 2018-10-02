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
![](/tmp/98b35098-1fe0-4e90-87fd-9f6e0e5889fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/98b35098-1fe0-4e90-87fd-9f6e0e5889fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/98b35098-1fe0-4e90-87fd-9f6e0e5889fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/98b35098-1fe0-4e90-87fd-9f6e0e5889fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2049740    0.1259925   0.2839556
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3530394    0.2633270   0.4427517
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2958391    0.2070273   0.3846508
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2330131    0.1605140   0.3055122
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2594279    0.2100704   0.3087854
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3334582    0.2650449   0.4018716
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2237662    0.1639357   0.2835967
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2041190    0.1512784   0.2569596
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1537889    0.1405285   0.1670493
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1527590    0.1394742   0.1660439
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1512283    0.1381137   0.1643429
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1540686    0.1408252   0.1673120
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0955561    0.0903166   0.1007956
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0942070    0.0887842   0.0996298
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0954474    0.0901943   0.1007005
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0945626    0.0893342   0.0997911
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0430469    0.0117009   0.0743929
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0681881    0.0208736   0.1155026
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0335412   -0.0016453   0.0687278
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0400316    0.0082250   0.0718381
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0321439    0.0166438   0.0476439
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0525615    0.0348566   0.0702664
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0331104    0.0160793   0.0501415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0494919    0.0306399   0.0683439
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0604767    0.0213862   0.0995672
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0873366    0.0413245   0.1333487
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0852764    0.0388349   0.1317179
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1164037    0.0643038   0.1685036
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0206490    0.0055029   0.0357951
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0340909    0.0072675   0.0609143
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0257732    0.0034634   0.0480830
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0552995    0.0248724   0.0857266
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0390117    0.0251220   0.0529014
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0862583    0.0632824   0.1092342
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0635613    0.0415938   0.0855288
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0544691    0.0395324   0.0694058
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0750903    0.0667187   0.0834619
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0951075    0.0859035   0.1043116
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0870466    0.0785544   0.0955387
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0860249    0.0775641   0.0944857
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0439458    0.0250074   0.0628842
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0759369    0.0581576   0.0937161
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0674114    0.0491742   0.0856486
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0390618    0.0274060   0.0507175
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0700000    0.0199309   0.1200691
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0857143    0.0321034   0.1393251
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089    0.0334784   0.1447394
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524    0.0129642   0.1035407
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1062000    0.0590056   0.1533944
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1738186    0.1102855   0.2373518
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1164035    0.0651273   0.1676797
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0693320    0.0297050   0.1089590
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1889764    0.1208205   0.2571322
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1825397    0.1150230   0.2500564
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1825397    0.1150230   0.2500564
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1764706    0.1079081   0.2450331
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0320988    0.0149241   0.0492734
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0394089    0.0126311   0.0661866
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0511628    0.0216976   0.0806280
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0672646    0.0343737   0.1001555
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0453820    0.0301523   0.0606117
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0868996    0.0619589   0.1118403
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0621468    0.0393076   0.0849859
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0717903    0.0544942   0.0890865
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2127396    0.1961734   0.2293058
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2200740    0.2040058   0.2361422
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2209639    0.2041076   0.2378201
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2236257    0.2057641   0.2414873
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1738874    0.1456950   0.2020798
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1992929    0.1742751   0.2243107
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2094820    0.1853388   0.2336251
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1896332    0.1666149   0.2126515


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
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.7223614   1.0998916   2.697110
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4433003   0.8989258   2.317339
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1367934   0.7072836   1.827130
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2853598   0.9762307   1.692377
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8625372   0.6254735   1.189451
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7868042   0.5740741   1.078364
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.9933034   0.9699925   1.017175
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9833499   0.9612596   1.005948
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0018187   0.9784534   1.025742
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.9858815   0.9649336   1.007284
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9988621   0.9793229   1.018791
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9896029   0.9696212   1.009996
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5840429   0.5787270   4.335709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.7791786   0.2175601   2.790582
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9299528   0.3206364   2.697174
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.6351953   0.9080922   2.944485
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0300696   0.5089324   2.084842
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.5396992   0.8328007   2.846628
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4441355   0.6275284   3.323399
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.4100700   0.6054980   3.283739
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.9247688   0.8765083   4.226697
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6509740   0.5630837   4.840693
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2481591   0.4013444   3.881706
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.6780777   1.0705381   6.699528
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.2110884   1.4178263   3.448174
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6292885   0.9922682   2.675266
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3962252   0.8911359   2.187596
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2665754   1.0922148   1.468771
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1592251   1.0020774   1.341017
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1456197   0.9897289   1.326064
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7279674   1.0594524   2.818316
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5339674   0.9284936   2.534273
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8888625   0.5261512   1.501615
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2244898   0.4734817   3.166702
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2729844   0.4926099   3.289599
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8321775   0.2893443   2.393410
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.6367104   0.9210497   2.908444
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0960786   0.5861193   2.049733
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6528439   0.3167359   1.345617
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9659392   0.5762234   1.619230
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9659392   0.5762234   1.619230
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9338235   0.5495895   1.586687
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2277378   0.5170124   2.915481
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5939177   0.7262154   3.498375
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0955502   1.0150945   4.326032
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.9148476   1.2313693   2.977695
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3694155   0.8325727   2.252414
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5819126   1.0469218   2.390291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0344760   0.9353298   1.144132
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0386589   0.9315465   1.158087
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0511710   0.9434061   1.171246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1461030   0.9329489   1.407957
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2046988   0.9845527   1.474069
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0905515   0.8883822   1.338729


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0632476   -0.0062954   0.1327905
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0056556   -0.0442931   0.0329819
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0018357   -0.0002692   0.0039406
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0004225   -0.0008587   0.0017036
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0096617   -0.0202510   0.0395744
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0407895   -0.0107598   0.0923387
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0276471   -0.0886587   0.0333646
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0026696   -0.0236597   0.0289989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0109468   -0.0032148   0.0251084
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0301094   -0.0060112   0.0662300
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0117484   -0.0020944   0.0255913
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0204857    0.0076016   0.0333699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0095786    0.0023521   0.0168050
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0123803   -0.0036714   0.0284320
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0057946   -0.0382574   0.0498467
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0064517   -0.0344369   0.0473402
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0062455   -0.0648139   0.0523230
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0128343   -0.0021425   0.0278111
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0228091    0.0087162   0.0369021
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0055695   -0.0085930   0.0197320
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0224967   -0.0021110   0.0471044


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2358034   -0.0703636   0.4543943
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0222862   -0.1865642   0.1192477
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0117955   -0.0018086   0.0252149
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0044015   -0.0090160   0.0176407
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1833046   -0.6118603   0.5861978
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3263158   -0.2283944   0.6305336
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2088889   -0.7673694   0.1731144
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0645161   -0.8459385   0.5259159
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2540409   -0.1528003   0.5173015
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.3323844   -0.1990144   0.6282692
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3626352   -0.2100558   0.6642850
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3443129    0.0956594   0.5245977
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1131299    0.0238033   0.1942826
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2197971   -0.1309182   0.4617502
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0764516   -0.7319580   0.5075275
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0572708   -0.3848014   0.3582197
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0341784   -0.4098728   0.2414032
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2856317   -0.1247612   0.5462841
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3344883    0.1000517   0.5078541
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0255118   -0.0414729   0.0881882
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1145545   -0.0204467   0.2316956
