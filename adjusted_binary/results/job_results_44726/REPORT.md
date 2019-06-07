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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        fage       ever_swasted   n_cell      n
------------  -------------------------  -----------------------------  --------  -------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       63    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1        6    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0       28    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1        2    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       46    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1        6    151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       30     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        0     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0       18     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        0     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       31     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        0     79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       33    161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1        3    161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       45    161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1        8    161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       65    161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1        7    161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  0       17     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  1        0     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   0       13     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   1        2     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               0       46     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               1        1     79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                  0       26     85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                  1        1     85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                   0       28     85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                   1        1     85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               0       29     85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               1        0     85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       63     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1        2     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        8     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        1     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0       14     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        2     90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       14    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        1    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       35    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        2    100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       10    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  1        1    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   0      334    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   1       55    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0       51    461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1       10    461
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0        7    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1        4    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0       58    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1       14    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       20    106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1        3    106
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                  0      321   7813
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                  1       30   7813
0-24 months   ki1119695-PROBIT           BELARUS                        <32                   0     5719   7813
0-24 months   ki1119695-PROBIT           BELARUS                        <32                   1      537   7813
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               0     1114   7813
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               1       92   7813
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  0      160    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  1       19    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   0      271    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   1       25    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               0      132    622
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               1       15    622
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  0      285   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  1       43   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   0     1823   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   1      251   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      466   2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               1       71   2939
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  0       26    106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  1        0    106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                   0       56    106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                   1        0    106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               0       24    106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               1        0    106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       63    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                  1        6    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                   0       29    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                   1        1    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       48    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1        4    151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  0       30     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  1        0     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   0       18     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   1        0     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       31     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        0     79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  0       33    161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  1        3    161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   0       46    161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   1        7    161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               0       67    161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               1        5    161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                  0       17     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                  1        0     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                   0       14     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                   1        1     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)               0       46     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)               1        1     79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                  0       27     85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                  1        0     85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                   0       29     85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                   1        0     85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)               0       29     85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)               1        0     85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       65     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1        0     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        8     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        1     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0       15     90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        1     90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       15    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        0    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       36    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        1    100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       11    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                  1        0    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                   0      367    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                   1       21    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0       58    460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1        3    460
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0       11    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1        0    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0       70    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1        2    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       22    106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1        1    106
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                  0      321   7812
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                  1       30   7812
0-6 months    ki1119695-PROBIT           BELARUS                        <32                   0     5725   7812
0-6 months    ki1119695-PROBIT           BELARUS                        <32                   1      530   7812
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)               0     1114   7812
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)               1       92   7812
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                  0      132    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                  1       11    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                   0      212    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                   1       16    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)               0      105    489
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)               1       13    489
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                  0      308   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                  1       20   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                   0     1933   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                   1      140   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      498   2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)               1       39   2938
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                  0        9     38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                  1        0     38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                   0       21     38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                   1        0     38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)               0        8     38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)               1        0     38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       69    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1        0    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0       29    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1        1    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       50    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1        2    151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       30     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        0     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0       18     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        0     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       31     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        0     79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       36    161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1        0    161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       51    161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1        2    161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       70    161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1        2    161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  0       17     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  1        0     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   0       14     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   1        1     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               0       47     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               1        0     79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                  0       26     83
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                  1        1     83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                   0       27     83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                   1        1     83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               0       28     83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               1        0     83
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       63     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1        2     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        9     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        0     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0       15     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        1     90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       48    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1        0    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0       14    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        1    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       36    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1        1    100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  0        8    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  1        1    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   0      328    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   1       38    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0       47    430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1        8    430
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0        7    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1        4    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0       58    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1       12    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       20    103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1        2    103
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                  0      346   7668
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                  1        0   7668
6-24 months   ki1119695-PROBIT           BELARUS                        <32                   0     6127   7668
6-24 months   ki1119695-PROBIT           BELARUS                        <32                   1        8   7668
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               0     1187   7668
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               1        0   7668
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  0      154    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  1        8    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   0      259    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   1        9    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               0      135    567
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               1        2    567
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  0      280   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  1       25   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   0     1792   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   1      119   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      465   2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               1       39   2720
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  0       26    106
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  1        0    106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                   0       56    106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                   1        0    106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               0       24    106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               1        0    106


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/95da2d06-eff5-491b-8310-3ac65f2e892e/0528fc23-8e7d-465f-9411-8a9ccc5fd709/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/95da2d06-eff5-491b-8310-3ac65f2e892e/0528fc23-8e7d-465f-9411-8a9ccc5fd709/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/95da2d06-eff5-491b-8310-3ac65f2e892e/0528fc23-8e7d-465f-9411-8a9ccc5fd709/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/95da2d06-eff5-491b-8310-3ac65f2e892e/0528fc23-8e7d-465f-9411-8a9ccc5fd709/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                0.0854701   0.0250399   0.1459003
0-24 months   ki1119695-PROBIT    BELARUS       <32                  NA                0.0858376   0.0292838   0.1423914
0-24 months   ki1119695-PROBIT    BELARUS       [32-38)              NA                0.0762852   0.0233720   0.1291984
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                0.1061453   0.0609852   0.1513053
0-24 months   ki1135781-COHORTS   GUATEMALA     <32                  NA                0.0844595   0.0527554   0.1161635
0-24 months   ki1135781-COHORTS   GUATEMALA     [32-38)              NA                0.1020408   0.0530681   0.1510135
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.1310976   0.0945660   0.1676291
0-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.1210222   0.1069831   0.1350613
0-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.1322160   0.1035622   0.1608698
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                0.0854701   0.0250431   0.1458970
0-6 months    ki1119695-PROBIT    BELARUS       <32                  NA                0.0847322   0.0278301   0.1416344
0-6 months    ki1119695-PROBIT    BELARUS       [32-38)              NA                0.0762852   0.0233786   0.1291919
0-6 months    ki1135781-COHORTS   GUATEMALA     >=38                 NA                0.0769231   0.0332039   0.1206422
0-6 months    ki1135781-COHORTS   GUATEMALA     <32                  NA                0.0701754   0.0369846   0.1033663
0-6 months    ki1135781-COHORTS   GUATEMALA     [32-38)              NA                0.1101695   0.0536191   0.1667199
0-6 months    ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.0609756   0.0350755   0.0868757
0-6 months    ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.0675350   0.0567305   0.0783394
0-6 months    ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.0726257   0.0506720   0.0945794
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.0819672   0.0511760   0.1127585
6-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.0622711   0.0514348   0.0731073
6-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.0773810   0.0540495   0.1007124


### Parameter: E(Y)


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1119695-PROBIT    BELARUS       NA                   NA                0.0843466   0.0290828   0.1396104
0-24 months   ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0948553   0.0718095   0.1179011
0-24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.1241919   0.1122665   0.1361173
0-6 months    ki1119695-PROBIT    BELARUS       NA                   NA                0.0834613   0.0279450   0.1389777
0-6 months    ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0817996   0.0574841   0.1061151
0-6 months    ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0677332   0.0586452   0.0768211
6-24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0672794   0.0578635   0.0766953


### Parameter: RR


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT    BELARUS       <32                  >=38              1.0042999   0.7260373   1.389210
0-24 months   ki1119695-PROBIT    BELARUS       [32-38)              >=38              0.8925373   0.5372115   1.482885
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS   GUATEMALA     <32                  >=38              0.7956970   0.4511677   1.403322
0-24 months   ki1135781-COHORTS   GUATEMALA     [32-38)              >=38              0.9613319   0.5062122   1.825636
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  >=38              0.9231459   0.6826255   1.248413
0-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              1.0085315   0.7085618   1.435493
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT    BELARUS       <32                  >=38              0.9913669   0.7178305   1.369137
0-6 months    ki1119695-PROBIT    BELARUS       [32-38)              >=38              0.8925373   0.5372242   1.482850
0-6 months    ki1135781-COHORTS   GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS   GUATEMALA     <32                  >=38              0.9122807   0.4355205   1.910946
0-6 months    ki1135781-COHORTS   GUATEMALA     [32-38)              >=38              1.4322034   0.6658973   3.080365
0-6 months    ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS   PHILIPPINES   <32                  >=38              1.1075736   0.7034774   1.743793
0-6 months    ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              1.1910615   0.7071598   2.006092
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  >=38              0.7597070   0.5021662   1.149330
6-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              0.9440476   0.5831743   1.528232


### Parameter: PAR


agecat        studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                -0.0011235   -0.0290510   0.0268040
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                -0.0112899   -0.0486627   0.0260828
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.0069057   -0.0412406   0.0274293
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                -0.0020087   -0.0296983   0.0256808
0-6 months    ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.0048765   -0.0323352   0.0420882
0-6 months    ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0067575   -0.0178113   0.0313264
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.0146878   -0.0433955   0.0140199


### Parameter: PAF


agecat        studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                -0.0133198   -0.4057981   0.2695842
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                -0.1190228   -0.5901362   0.2125127
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.0556047   -0.3716075   0.1875946
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                -0.0240680   -0.4178315   0.2603386
0-6 months    ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.0596154   -0.5249787   0.4201078
0-6 months    ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0997671   -0.3466070   0.3981769
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.2183105   -0.7279894   0.1410361
