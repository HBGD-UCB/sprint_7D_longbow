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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        fage       ever_wasted   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       46    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       23    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0       15    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1       15    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       39    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1       13    151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       16     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        2     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       28     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        3     79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0       25    161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1       11    161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       20    161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       33    161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       36    161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       36    161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0       13     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        4     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0        8     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        7     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0       34     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1       13     79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0       26     85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1     85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  0       25     85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        4     85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0       26     85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        3     85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       54     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       11     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       11     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        5     90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       43    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        5    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       12    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       33    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        4    100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0        8    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        3    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      241    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      148    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       36    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       25    461
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0        6    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        5    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       34    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1       38    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       13    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       10    106
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0      263   7813
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1       88   7813
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  0     4573   7813
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  1     1683   7813
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0      910   7813
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1      296   7813
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0      120    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       59    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0      206    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1       90    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0       95    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       52    622
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0      191   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1      137   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0     1235   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      839   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      332   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      205   2939
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0       24    106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        2    106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0       49    106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        7    106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0       22    106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        2    106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       52    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       17    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  0       22    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  1        8    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       43    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        9    151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  0       16     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  1        2     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       30     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1     79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 0       29    161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 1        7    161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  0       35    161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  1       18    161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              0       45    161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              1       27    161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 0       17     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 1        0     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  0       11     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  1        4     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              0       39     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              1        8     79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 0       27     85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 1        0     85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  0       27     85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  1        2     85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              0       28     85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              1        1     85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       61     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1        4     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       13     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3     90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       46    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        2    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       15    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        0    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       35    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2    100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       10    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        1    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  0      305    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  1       83    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       43    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       18    460
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0        9    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        2    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       60    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1       12    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       19    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        4    106
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 0      266   7812
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 1       85   7812
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  0     4608   7812
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  1     1647   7812
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              0      916   7812
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              1      290   7812
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 0      101    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 1       42    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  0      179    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  1       49    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              0       86    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              1       32    489
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 0      254   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 1       74   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  0     1588   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  1      485   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      414   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      123   2938
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 0        9     38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 1        0     38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  0       20     38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  1        1     38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              0        8     38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              1        0     38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       56    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       13    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0       21    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1        9    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       46    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        6    151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       18     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        0     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       29     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        2     79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0       30    161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        6    161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       31    161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       22    161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       53    161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       19    161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0       13     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        4     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0       10     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        5     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0       40     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1        7     79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0       26     83
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1     83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  0       26     83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        2     83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0       26     83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        2     83
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       55     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       10     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        9     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        0     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       13     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3     90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       44    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        4    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       12    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       35    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2    100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0        7    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        2    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      265    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      101    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       42    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       13    430
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0        8    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        3    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       41    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1       29    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       14    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        8    103
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0      343   7668
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1        3   7668
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  0     6081   7668
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  1       54   7668
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0     1179   7668
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1        8   7668
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0      140    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       22    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0      219    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1       49    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0      112    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       25    567
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0      210   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1       95   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0     1408   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      503   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      378   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      126   2720
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0       24    106
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        2    106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0       50    106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        6    106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0       22    106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        2    106


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/ba0af41b-c9fe-400a-9a69-493147c603be/3ad95562-8016-49fc-aee7-5552cbf84d64/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ba0af41b-c9fe-400a-9a69-493147c603be/3ad95562-8016-49fc-aee7-5552cbf84d64/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ba0af41b-c9fe-400a-9a69-493147c603be/3ad95562-8016-49fc-aee7-5552cbf84d64/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ba0af41b-c9fe-400a-9a69-493147c603be/3ad95562-8016-49fc-aee7-5552cbf84d64/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.3333333   0.2217344   0.4449323
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.5000000   0.3204852   0.6795148
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.2500000   0.1319163   0.3680837
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.3055556   0.1546123   0.4564988
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.6226415   0.4917356   0.7535474
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.5000000   0.3841477   0.6158523
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.4545455   0.1588954   0.7501955
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.5277778   0.4119163   0.6436392
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.4347826   0.2312255   0.6383397
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.2507123   0.1514312   0.3499933
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.2690217   0.1723011   0.3657424
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2454395   0.1590465   0.3318324
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.3296089   0.2606906   0.3985272
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.3040541   0.2516078   0.3565003
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.3537415   0.2763871   0.4310959
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.4176829   0.3643017   0.4710641
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.4045323   0.3834060   0.4256586
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.3817505   0.3406538   0.4228471
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.2463768   0.1443667   0.3483870
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2666667   0.1078978   0.4254355
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1730769   0.0699098   0.2762441
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1944444   0.0647578   0.3241311
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  NA                0.3396226   0.2117265   0.4675188
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.3750000   0.2628265   0.4871735
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.2421652   0.1420571   0.3422734
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.2633094   0.1654019   0.3612168
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2404643   0.1540890   0.3268397
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2937063   0.2189799   0.3684327
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.2149123   0.1615401   0.2682845
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2711864   0.1908905   0.3514824
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2256098   0.1803675   0.2708520
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2339604   0.2157333   0.2521876
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2290503   0.1935024   0.2645981
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1884058   0.0958331   0.2809785
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000   0.1354719   0.4645281
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1153846   0.0282601   0.2025091
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1666667   0.0445476   0.2887858
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.4150943   0.2820246   0.5481641
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.2638889   0.1617674   0.3660104
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.1358025   0.0830024   0.1886025
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1828358   0.1365179   0.2291538
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1824818   0.1177482   0.2472153
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.3114754   0.2594938   0.3634570
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2632130   0.2434650   0.2829609
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2500000   0.2121894   0.2878106


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.3377483   0.2620632   0.4134335
0-24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.4968944   0.4194215   0.5743673
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.5000000   0.4043636   0.5956364
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.2645591   0.1704386   0.3586795
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.3231511   0.2863678   0.3599345
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.4018374   0.3841095   0.4195652
0-6 months    ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.2251656   0.1583223   0.2920089
0-6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.3229814   0.2505249   0.3954378
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.2588326   0.1637240   0.3539411
0-6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2515337   0.2130371   0.2900303
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2321307   0.2168619   0.2473995
6-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1854305   0.1232352   0.2476257
6-24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.2919255   0.2214783   0.3623726
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1693122   0.1384161   0.2002082
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2661765   0.2495644   0.2827886


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.5000000   0.9181050   2.450700
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7500000   0.4203628   1.338130
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              2.0377358   1.1912044   3.485856
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.6363636   0.9482283   2.823883
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.1611111   0.5844406   2.306785
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.9565217   0.4291886   2.131776
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.0730299   0.8751260   1.315689
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.9789688   0.8271214   1.158693
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.9224691   0.7034500   1.209680
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.0732157   0.7930312   1.452392
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.9685153   0.8436205   1.111900
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.9139719   0.7733243   1.080200
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.0823529   0.5241066   2.235209
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7024887   0.3399717   1.451563
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  >=38              1.7466307   0.8120101   3.756996
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.9285714   0.9284968   4.005816
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              1.0873127   0.8855411   1.335058
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.9929763   0.8353007   1.180416
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.7317251   0.5127904   1.044134
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.9233253   0.6249015   1.364262
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.0370139   0.8362818   1.285927
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.0152499   0.7878569   1.308274
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.5923077   0.7624990   3.325177
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.6124260   0.2487773   1.507636
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              2.4905660   1.1193351   5.541610
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.5833333   0.6913573   3.626120
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.3463365   0.8464852   2.141351
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.3437293   0.7938467   2.274505
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.8450522   0.7037485   1.014728
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8026316   0.6407707   1.005379


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0044150   -0.0780499   0.0868800
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1913389    0.0549686   0.3277091
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0454545   -0.2345701   0.3254792
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0138468   -0.0332719   0.0609656
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0064578   -0.0645007   0.0515851
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0158456   -0.0661227   0.0344316
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0212112   -0.0944500   0.0520275
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1285369    0.0079252   0.2491487
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0166673   -0.0291119   0.0624466
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0421726   -0.1038175   0.0194724
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0065209   -0.0361753   0.0492172
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0029753   -0.0708431   0.0648925
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1252588    0.0103385   0.2401791
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0335097   -0.0128514   0.0798708
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0452989   -0.0940028   0.0034049


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0130719   -0.2639438    0.2293747
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.3850694    0.0369563    0.6073495
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0909091   -0.6836886    0.5091454
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0523392   -0.1416712    0.2133804
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0199839   -0.2163842    0.1447052
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0394328   -0.1723982    0.0784526
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0942029   -0.4723931    0.1868476
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.3979701   -0.1109883    0.6737679
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0643942   -0.1285274    0.2243359
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.1676616   -0.4399982    0.0531699
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0280917   -0.1743920    0.1956640
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0160455   -0.4566198    0.2912711
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.4290780   -0.1233081    0.7098286
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1979167   -0.1261891    0.4287481
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.1701839   -0.3681864   -0.0008360
