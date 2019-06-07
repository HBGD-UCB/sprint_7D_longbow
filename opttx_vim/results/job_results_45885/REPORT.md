---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_fhtcm
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_fhtcm
* delta_single
* delta_brthmon

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







# Results Detail

## Results Plots
![](/tmp/97b4aee6-ae0d-40c7-85df-95257acc871a/f46cd9a0-74ac-4919-ae2c-068396ffb195/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/97b4aee6-ae0d-40c7-85df-95257acc871a/f46cd9a0-74ac-4919-ae2c-068396ffb195/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                0.2579774   0.1366431   0.3793116
0-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                0.3114763   0.1498149   0.4731376
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         optimal              NA                0.5960592   0.2902375   0.9018808
0-24 months   ki1119695-PROBIT           BELARUS       optimal              NA                0.1944536   0.1292442   0.2596630
0-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                0.3783413   0.3047694   0.4519132
0-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                0.3839519   0.3147107   0.4531930
0-6 months    ki0047075b-MAL-ED          BANGLADESH    optimal              NA                0.1735046   0.0681688   0.2788405
0-6 months    ki0047075b-MAL-ED          INDIA         optimal              NA                0.1952427   0.0610309   0.3294545
0-6 months    ki1119695-PROBIT           BELARUS       optimal              NA                0.2096949   0.1426951   0.2766946
0-6 months    ki1135781-COHORTS          GUATEMALA     optimal              NA                0.2784282   0.2099304   0.3469260
0-6 months    ki1135781-COHORTS          PHILIPPINES   optimal              NA                0.2458391   0.1787185   0.3129596
6-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                0.1123275   0.0238716   0.2007834
6-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                0.1719575   0.0430689   0.3008462
6-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                0.1457407   0.0901636   0.2013177
6-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                0.2611134   0.2002663   0.3219605


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    observed             NA                0.3377483   0.2620632   0.4134335
0-24 months   ki0047075b-MAL-ED          INDIA         observed             NA                0.4968944   0.4194215   0.5743673
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         observed             NA                0.5000000   0.4043636   0.5956364
0-24 months   ki1119695-PROBIT           BELARUS       observed             NA                0.2645591   0.1704386   0.3586795
0-24 months   ki1135781-COHORTS          GUATEMALA     observed             NA                0.3231511   0.2863678   0.3599345
0-24 months   ki1135781-COHORTS          PHILIPPINES   observed             NA                0.4018374   0.3841095   0.4195652
0-6 months    ki0047075b-MAL-ED          BANGLADESH    observed             NA                0.2251656   0.1583223   0.2920089
0-6 months    ki0047075b-MAL-ED          INDIA         observed             NA                0.3229814   0.2505249   0.3954378
0-6 months    ki1119695-PROBIT           BELARUS       observed             NA                0.2588326   0.1637240   0.3539411
0-6 months    ki1135781-COHORTS          GUATEMALA     observed             NA                0.2515337   0.2130371   0.2900303
0-6 months    ki1135781-COHORTS          PHILIPPINES   observed             NA                0.2321307   0.2168619   0.2473995
6-24 months   ki0047075b-MAL-ED          BANGLADESH    observed             NA                0.1854305   0.1232352   0.2476257
6-24 months   ki0047075b-MAL-ED          INDIA         observed             NA                0.2919255   0.2214783   0.3623726
6-24 months   ki1135781-COHORTS          GUATEMALA     observed             NA                0.1693122   0.1384161   0.2002082
6-24 months   ki1135781-COHORTS          PHILIPPINES   observed             NA                0.2661765   0.2495644   0.2827886


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    observed             optimal           1.3092169   0.8799626   1.947866
0-24 months   ki0047075b-MAL-ED          INDIA         observed             optimal           1.5952882   0.9941648   2.559882
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         observed             optimal           0.8388429   0.5259883   1.337781
0-24 months   ki1119695-PROBIT           BELARUS       observed             optimal           1.3605254   1.1136220   1.662170
0-24 months   ki1135781-COHORTS          GUATEMALA     observed             optimal           0.8541260   0.7181339   1.015871
0-24 months   ki1135781-COHORTS          PHILIPPINES   observed             optimal           1.0465827   0.8796145   1.245245
0-6 months    ki0047075b-MAL-ED          BANGLADESH    observed             optimal           1.2977495   0.7740791   2.175687
0-6 months    ki0047075b-MAL-ED          INDIA         observed             optimal           1.6542557   0.8790020   3.113260
0-6 months    ki1119695-PROBIT           BELARUS       observed             optimal           1.2343296   1.0251999   1.486119
0-6 months    ki1135781-COHORTS          GUATEMALA     observed             optimal           0.9034062   0.7289687   1.119585
0-6 months    ki1135781-COHORTS          PHILIPPINES   observed             optimal           0.9442385   0.7230180   1.233145
6-24 months   ki0047075b-MAL-ED          BANGLADESH    observed             optimal           1.6508023   0.8257568   3.300183
6-24 months   ki0047075b-MAL-ED          INDIA         observed             optimal           1.6976601   0.8489934   3.394667
6-24 months   ki1135781-COHORTS          GUATEMALA     observed             optimal           1.1617358   0.8364988   1.613427
6-24 months   ki1135781-COHORTS          PHILIPPINES   observed             optimal           1.0193903   0.8149716   1.275083


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.0797710   -0.0229638   0.1825058
0-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                 0.1854182    0.0394892   0.3313471
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         optimal              NA                -0.0960592   -0.3757755   0.1836571
0-24 months   ki1119695-PROBIT           BELARUS       optimal              NA                 0.0701055    0.0164641   0.1237469
0-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                -0.0551902   -0.1202715   0.0098911
0-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0178855   -0.0488317   0.0846028
0-6 months    ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.0516609   -0.0386278   0.1419496
0-6 months    ki0047075b-MAL-ED          INDIA         optimal              NA                 0.1277387    0.0032220   0.2522553
0-6 months    ki1119695-PROBIT           BELARUS       optimal              NA                 0.0491377   -0.0012193   0.0994947
0-6 months    ki1135781-COHORTS          GUATEMALA     optimal              NA                -0.0268944   -0.0862096   0.0324207
0-6 months    ki1135781-COHORTS          PHILIPPINES   optimal              NA                -0.0137084   -0.0793132   0.0518965
6-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.0731030   -0.0070700   0.1532760
6-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                 0.1199679   -0.0006742   0.2406101
6-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                 0.0235715   -0.0243372   0.0714802
6-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0050631   -0.0533731   0.0634992


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.2361846   -0.1364119   0.4866176
0-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                 0.3731540   -0.0058694   0.6093570
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         optimal              NA                -0.1921183   -0.9011830   0.2524938
0-24 months   ki1119695-PROBIT           BELARUS       optimal              NA                 0.2649899    0.1020292   0.3983770
0-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                -0.1707874   -0.3924979   0.0156228
0-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0445093   -0.1368617   0.1969450
0-6 months    ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.2294352   -0.2918577   0.5403750
0-6 months    ki0047075b-MAL-ED          INDIA         optimal              NA                 0.3954985   -0.1376539   0.6787933
0-6 months    ki1119695-PROBIT           BELARUS       optimal              NA                 0.1898436    0.0245805   0.3271065
0-6 months    ki1135781-COHORTS          GUATEMALA     optimal              NA                -0.1069218   -0.3718010   0.1068122
0-6 months    ki1135781-COHORTS          PHILIPPINES   optimal              NA                -0.0590545   -0.3830915   0.1890656
6-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.3942339   -0.2110103   0.6969865
6-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                 0.4109539   -0.1778655   0.7054203
6-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                 0.1392191   -0.1954590   0.3802014
6-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0190214   -0.2270366   0.2157374
