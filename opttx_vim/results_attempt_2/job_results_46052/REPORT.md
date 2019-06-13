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
![](/tmp/8466f37f-f2df-4aa4-8787-f7f419b7d7f5/527e8e75-53e7-4a96-aa10-0c2c28831e94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8466f37f-f2df-4aa4-8787-f7f419b7d7f5/527e8e75-53e7-4a96-aa10-0c2c28831e94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                0.2609611   0.1405010   0.3814211
0-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                0.2974266   0.1413977   0.4534554
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         optimal              NA                0.6094553   0.4073215   0.8115891
0-24 months   ki1119695-PROBIT           BELARUS       optimal              NA                0.2207521   0.1505465   0.2909578
0-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                0.4321022   0.3340041   0.5302002
0-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                0.3844185   0.3161119   0.4527252
0-6 months    ki0047075b-MAL-ED          BANGLADESH    optimal              NA                0.1747288   0.0693527   0.2801049
0-6 months    ki0047075b-MAL-ED          INDIA         optimal              NA                0.1932292   0.0590513   0.3274070
0-6 months    ki1119695-PROBIT           BELARUS       optimal              NA                0.2130564   0.1422598   0.2838530
0-6 months    ki1135781-COHORTS          GUATEMALA     optimal              NA                0.2861170   0.2154351   0.3567989
0-6 months    ki1135781-COHORTS          PHILIPPINES   optimal              NA                0.2273400   0.1687891   0.2858910
6-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                0.1162586   0.0271964   0.2053209
6-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                0.1823138   0.0484666   0.3161610
6-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                0.1673981   0.1055365   0.2292597
6-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                0.2470669   0.1866157   0.3075180


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


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    observed             optimal           1.2942481   0.8769352   1.9101502
0-24 months   ki0047075b-MAL-ED          INDIA         observed             optimal           1.6706457   1.0355939   2.6951269
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         observed             optimal           0.8204047   0.6024075   1.1172899
0-24 months   ki1119695-PROBIT           BELARUS       observed             optimal           1.1984441   0.9845214   1.4588493
0-24 months   ki1135781-COHORTS          GUATEMALA     observed             optimal           0.7478582   0.6095344   0.9175722
0-24 months   ki1135781-COHORTS          PHILIPPINES   observed             optimal           1.0453121   0.8808392   1.2404959
0-6 months    ki0047075b-MAL-ED          BANGLADESH    observed             optimal           1.2886576   0.7720483   2.1509515
0-6 months    ki0047075b-MAL-ED          INDIA         observed             optimal           1.6714939   0.8822878   3.1666447
0-6 months    ki1119695-PROBIT           BELARUS       observed             optimal           1.2148546   1.0111466   1.4596022
0-6 months    ki1135781-COHORTS          GUATEMALA     observed             optimal           0.8791291   0.7069300   1.0932737
0-6 months    ki1135781-COHORTS          PHILIPPINES   observed             optimal           1.0210728   0.7951272   1.3112236
6-24 months   ki0047075b-MAL-ED          BANGLADESH    observed             optimal           1.5949825   0.8137779   3.1261222
6-24 months   ki0047075b-MAL-ED          INDIA         observed             optimal           1.6012254   0.8127290   3.1547079
6-24 months   ki1135781-COHORTS          GUATEMALA     observed             optimal           1.0114342   0.7376919   1.3867566
6-24 months   ki1135781-COHORTS          PHILIPPINES   observed             optimal           1.0773459   0.8518020   1.3626103


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.0767873   -0.0251303    0.1787048
0-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                 0.1994678    0.0584597    0.3404760
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         optimal              NA                -0.1094553   -0.2949431    0.0760324
0-24 months   ki1119695-PROBIT           BELARUS       optimal              NA                 0.0438070   -0.0086014    0.0962153
0-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                -0.1089510   -0.1973298   -0.0205722
0-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0174188   -0.0483802    0.0832179
0-6 months    ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.0504368   -0.0396826    0.1405562
0-6 months    ki0047075b-MAL-ED          INDIA         optimal              NA                 0.1297522    0.0052566    0.2542478
0-6 months    ki1119695-PROBIT           BELARUS       optimal              NA                 0.0457762   -0.0030150    0.0945673
0-6 months    ki1135781-COHORTS          GUATEMALA     optimal              NA                -0.0345832   -0.0963920    0.0272255
0-6 months    ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0047907   -0.0520748    0.0616561
6-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.0691718   -0.0113621    0.1497058
6-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                 0.1096117   -0.0151557    0.2343790
6-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                 0.0019141   -0.0509066    0.0547347
6-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0191096   -0.0389069    0.0771261


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.2273506   -0.1403351    0.4764810
0-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                 0.4014290    0.0343705    0.6289600
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         optimal              NA                -0.2189107   -0.6600059    0.1049771
0-24 months   ki1119695-PROBIT           BELARUS       optimal              NA                 0.1655848   -0.0157219    0.3145282
0-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                -0.3371519   -0.6405964   -0.0898325
0-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0433480   -0.1352809    0.1938708
0-6 months    ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.2239987   -0.2952557    0.5350895
0-6 months    ki0047075b-MAL-ED          INDIA         optimal              NA                 0.4017328   -0.1334170    0.6842083
0-6 months    ki1119695-PROBIT           BELARUS       optimal              NA                 0.1768562    0.0110237    0.3148818
0-6 months    ki1135781-COHORTS          GUATEMALA     optimal              NA                -0.1374894   -0.4145673    0.0853160
0-6 months    ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0206379   -0.2576604    0.2373536
6-24 months   ki0047075b-MAL-ED          BANGLADESH    optimal              NA                 0.3730339   -0.2288365    0.6801149
6-24 months   ki0047075b-MAL-ED          INDIA         optimal              NA                 0.3754783   -0.2304224    0.6830134
6-24 months   ki1135781-COHORTS          GUATEMALA     optimal              NA                 0.0113049   -0.3555795    0.2788929
6-24 months   ki1135781-COHORTS          PHILIPPINES   optimal              NA                 0.0717930   -0.1739818    0.2661145
