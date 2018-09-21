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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        hhwealth_quart    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       21      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       17      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        0      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       16      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        2      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       20      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        0      76
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       11      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        0      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       14      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        3      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       15      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        0      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       11      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        0      54
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0        9      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        8      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        5      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        7      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      30
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               0       10      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        1      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        6      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       30      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       12      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       19      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       22      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        3      88
Birth       ki1000108-IRC              INDIA                          Wealth Q4               0       72     343
Birth       ki1000108-IRC              INDIA                          Wealth Q4               1        7     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1               0       69     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1               1       21     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2               0       71     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2               1       12     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3               0       77     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3               1       14     343
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2               1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3               1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      232     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       26     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      132     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       12     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      134     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1        7     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      174     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       12     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      769    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       46    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      618    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       29    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      491    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       15    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      899    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       31    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     6972   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1       98   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     7792   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      144   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     8338   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      166   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     7772   31382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      100   31382
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0      306    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0      336    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1        6    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0      368    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0      346    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1        2    1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        1      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        0      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        1      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       15      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        2      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       16      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        1      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0       10      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       17      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       84     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        6     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       89     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       88     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        2     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4               0       95     408
6 months    ki1000108-IRC              INDIA                          Wealth Q4               1        5     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1               0      101     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1               1        3     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2               0       97     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2               1        5     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3               0       93     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3               1        9     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      153     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        2     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      137     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1        0     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      137     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        3     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      148     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        0     580
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      499    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        2    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      598    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        7    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      408    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        1    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      502    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        2    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      280    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      288    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1        2    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      272    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        6    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      272    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        4    1126
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4               1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               0       59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1               1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2               1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3               1        0     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      337     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1        2     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      176     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1        0     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      192     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1        2     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      215     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1        2     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      736    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1        8    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      559    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       10    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      479    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1        6    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      897    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       11    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      217     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        0     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      203     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               1        0     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      199     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               1        0     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      197     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        0     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     9323   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      122   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     7295   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1       94   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     8173   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      122   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     8258   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      120   33507
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     2217    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       10    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     2322    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       22    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     2349    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       27    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     2492    9445
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1        6    9445
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       21      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       21      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        0      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       17      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        0      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       18      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        0      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       18      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        0      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       19      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        0      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       17      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        0      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       17      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        0      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0       10      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        8      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       14      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       90     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       94     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1        1     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       90     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        1     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       99     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4               1        1     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               0      105     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1               1        0     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       99     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2               1        2     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               0      101     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3               1        2     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      155     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        1     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      125     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1        5     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      140     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        2     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      148     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        1     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      248     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        6     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      242     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       10     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      246     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        6     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      230     996
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        8     996
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        0     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      403    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1        2    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      203    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1        0    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      214    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1        1    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      222    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1        1    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      681    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1        4    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      488    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1        4    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      422    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1        2    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      833    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       15    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      155     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        0     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      127     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1        0     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      139     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1        1     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      136     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        0     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     4284   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      134   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3836   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      195   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     4227   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      164   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     4138   17150
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      172   17150
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     2179    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       39    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     2189    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       71    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     2209    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       63    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     2408    9237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       79    9237


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ba50e8f0-f9dc-461f-be0b-b11ad99bc16b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ba50e8f0-f9dc-461f-be0b-b11ad99bc16b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ba50e8f0-f9dc-461f-be0b-b11ad99bc16b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ba50e8f0-f9dc-461f-be0b-b11ad99bc16b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC         INDIA         Wealth Q4            NA                0.0886076    0.0258514   0.1513638
Birth       ki1000108-IRC         INDIA         Wealth Q1            NA                0.2333333    0.1458244   0.3208423
Birth       ki1000108-IRC         INDIA         Wealth Q2            NA                0.1445783    0.0688105   0.2203461
Birth       ki1000108-IRC         INDIA         Wealth Q3            NA                0.1538462    0.0796076   0.2280847
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q4            NA                0.1007752    0.0640176   0.1375328
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q1            NA                0.0833333    0.0381602   0.1285064
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q2            NA                0.0496454    0.0137682   0.0855226
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q3            NA                0.0645161    0.0291863   0.0998460
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q4            NA                0.0564417    0.0405954   0.0722880
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q1            NA                0.0448223    0.0288760   0.0607686
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q2            NA                0.0296443    0.0148640   0.0444246
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q3            NA                0.0333333    0.0217946   0.0448721
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                0.0138614    0.0090057   0.0187171
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q1            NA                0.0181452    0.0137152   0.0225751
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q2            NA                0.0195202    0.0152819   0.0237586
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q3            NA                0.0127033    0.0084717   0.0169348
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q4            NA                0.0107527    0.0033404   0.0181650
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q1            NA                0.0175747    0.0067761   0.0283733
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q2            NA                0.0123711    0.0025319   0.0222103
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q3            NA                0.0121145    0.0049976   0.0192315
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                0.0129169    0.0090078   0.0168259
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q1            NA                0.0127216    0.0088240   0.0166192
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q2            NA                0.0147077    0.0104893   0.0189260
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q3            NA                0.0143232    0.0105127   0.0181338
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q4            NA                0.0044903   -0.0052639   0.0142446
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q1            NA                0.0093857    0.0028030   0.0159683
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q2            NA                0.0113636    0.0047581   0.0179692
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q3            NA                0.0024019   -0.0000363   0.0048401
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q4            NA                0.0236220   -0.0028173   0.0500614
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q1            NA                0.0396825    0.0055627   0.0738023
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q2            NA                0.0238095   -0.0028371   0.0504561
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q3            NA                0.0336134    0.0011987   0.0660282
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                0.0303305    0.0233688   0.0372922
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q1            NA                0.0483751    0.0385478   0.0582024
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q2            NA                0.0373491    0.0282011   0.0464971
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q3            NA                0.0399072    0.0310339   0.0487805
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q4            NA                0.0175834    0.0050329   0.0301340
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q1            NA                0.0314159    0.0213822   0.0414497
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q2            NA                0.0277289    0.0172434   0.0382143
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q3            NA                0.0317652    0.0228754   0.0406549


### Parameter: E(Y)


agecat      studyid               country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC         INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1135781-COHORTS     GUATEMALA     NA                   NA                0.0781893   0.0586874   0.0976912
Birth       ki1135781-COHORTS     PHILIPPINES   NA                   NA                0.0417529   0.0344692   0.0490367
Birth       kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0161876   0.0138223   0.0185529
6 months    ki1135781-COHORTS     PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0136688   0.0115917   0.0157459
6 months    kiGH5241-JiVitA-4     BANGLADESH    NA                   NA                0.0068819   0.0035739   0.0101900
24 months   ki1113344-GMS-Nepal   NEPAL         NA                   NA                0.0301205   0.0150939   0.0451470
24 months   kiGH5241-JiVitA-3     BANGLADESH    NA                   NA                0.0387755   0.0344469   0.0431042
24 months   kiGH5241-JiVitA-4     BANGLADESH    NA                   NA                0.0272816   0.0219894   0.0325738


### Parameter: RR


agecat      studyid               country       intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000108-IRC         INDIA         Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
Birth       ki1000108-IRC         INDIA         Wealth Q1            Wealth Q4         2.6333330   1.1815568    5.8689030
Birth       ki1000108-IRC         INDIA         Wealth Q2            Wealth Q4         1.6316693   0.6760758    3.9379384
Birth       ki1000108-IRC         INDIA         Wealth Q3            Wealth Q4         1.7362635   0.7369189    4.0908314
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q1            Wealth Q4         0.8269231   0.4302403    1.5893484
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q2            Wealth Q4         0.4926350   0.2192618    1.1068468
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q3            Wealth Q4         0.6401985   0.3315606    1.2361364
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q1            Wealth Q4         0.7941335   0.5047419    1.2494464
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q2            Wealth Q4         0.5252191   0.2963715    0.9307748
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q3            Wealth Q4         0.5905797   0.3781913    0.9222433
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q1            Wealth Q4         1.3090438   0.8535234    2.0076727
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q2            Wealth Q4         1.4082449   0.9353463    2.1202347
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q3            Wealth Q4         0.9164489   0.5803213    1.4472649
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q1            Wealth Q4         1.6344464   0.6491256    4.1154054
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q2            Wealth Q4         1.1505155   0.4016045    3.2959934
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q3            Wealth Q4         1.1266520   0.4554533    2.7869920
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q1            Wealth Q4         0.9848823   0.6442414    1.5056362
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q2            Wealth Q4         1.1386377   0.7507997    1.7268199
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q3            Wealth Q4         1.1088761   0.7529358    1.6330824
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q1            Wealth Q4         2.0901877   0.2129167   20.5192156
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q2            Wealth Q4         2.5306818   0.2663198   24.0475940
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q3            Wealth Q4         0.5349080   0.0485340    5.8953847
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q1            Wealth Q4         1.6798942   0.4095622    6.8903936
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q2            Wealth Q4         1.0079365   0.2070285    4.9072266
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q3            Wealth Q4         1.4229692   0.3247653    6.2347827
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q1            Wealth Q4         1.5949340   1.1773498    2.1606277
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q2            Wealth Q4         1.2314062   0.8836350    1.7160491
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q3            Wealth Q4         1.3157461   0.9545263    1.8136617
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q1            Wealth Q4         1.7866802   0.8197337    3.8942232
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q2            Wealth Q4         1.5769907   0.7001650    3.5518769
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q3            Wealth Q4         1.8065427   0.8366890    3.9006085


### Parameter: PAR


agecat      studyid               country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC         INDIA         Wealth Q4            NA                 0.0688268    0.0087091    0.1289445
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q4            NA                -0.0225859   -0.0504264    0.0052547
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q4            NA                -0.0146888   -0.0274529   -0.0019247
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                 0.0023262   -0.0018358    0.0064883
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q4            NA                 0.0021815   -0.0043653    0.0087283
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                 0.0007519   -0.0024408    0.0039446
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q4            NA                 0.0023916   -0.0054570    0.0102402
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q4            NA                 0.0064984   -0.0173406    0.0303374
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                 0.0084450    0.0020390    0.0148511
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q4            NA                 0.0096982   -0.0008509    0.0202473


### Parameter: PAF


agecat      studyid               country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC         INDIA         Wealth Q4            NA                 0.4371776   -0.0857091    0.7082377
Birth       ki1135781-COHORTS     GUATEMALA     Wealth Q4            NA                -0.2888617   -0.6914201    0.0178877
Birth       ki1135781-COHORTS     PHILIPPINES   Wealth Q4            NA                -0.3518025   -0.6879746   -0.0825814
Birth       kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                 0.1437047   -0.1582849    0.3669592
6 months    ki1135781-COHORTS     PHILIPPINES   Wealth Q4            NA                 0.1686636   -0.5227820    0.5461463
6 months    kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                 0.0550084   -0.2107820    0.2624526
6 months    kiGH5241-JiVitA-4     BANGLADESH    Wealth Q4            NA                 0.3475182   -3.2485645    0.8997938
24 months   ki1113344-GMS-Nepal   NEPAL         Wealth Q4            NA                 0.2157480   -1.1323889    0.7115671
24 months   kiGH5241-JiVitA-3     BANGLADESH    Wealth Q4            NA                 0.2177932    0.0377852    0.3641260
24 months   kiGH5241-JiVitA-4     BANGLADESH    Wealth Q4            NA                 0.3554843   -0.2057641    0.6554878
