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

agecat        studyid                    country                        fage       ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       46     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       23     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0       15     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1       15     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       39     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1       13     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       16      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        2      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       28      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        3      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0       25     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1       11     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       20     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       33     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       36     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       36     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0       13      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        4      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0        8      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        7      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0       34      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1       13      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0       26      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  0       25      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        4      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0       26      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        3      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       54      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       11      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       11      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        5      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       43     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        5     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       12     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       33     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        4     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       21    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       28    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      750    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      514    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      113    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       84    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       21     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       23     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      154     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1      135     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       46     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       39     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0      581   16278
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1      163   16278
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  0     9681   16278
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  1     3378   16278
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0     1858   16278
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1      617   16278
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0      285    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       97    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0      453    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1      148    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0      218    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       84    1285
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0      191    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1      137    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0     1235    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      839    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      332    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      205    2939
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0       24     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        2     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0       49     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        7     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0       22     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        2     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       52     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       17     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  0       22     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  1        8     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       43     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        9     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  0       16      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  1        2      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 0       29     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 1        7     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  0       35     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  1       18     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              0       45     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              1       27     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 0       17      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  0       11      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  1        4      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              0       39      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              1        8      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 0       27      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 1        0      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  0       27      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  1        2      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              0       28      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              1        1      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       61      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1        4      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        7      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       13      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       46     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        2     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       15     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       35     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       33    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       15    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  0      992    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  1      266    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      147    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       49    1502
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       32     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       12     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      238     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1       51     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       70     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       15     418
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 0      586   16275
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 1      157   16275
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  0     9768   16275
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  1     3289   16275
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              0     1876   16275
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              1      599   16275
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 0      241    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 1       68    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  0      380    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  1       89    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              0      200    1027
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              1       49    1027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 0      254    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 1       74    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  0     1588    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  1      485    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      414    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      123    2938
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 0        9      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 1        0      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  0       20      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  1        1      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              0        8      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              1        0      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       56     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       13     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0       21     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1        9     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       46     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        6     151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0       18      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0       29      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        2      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0       30     161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        6     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       31     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       22     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       53     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       19     161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0       13      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        4      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0       10      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        5      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0       40      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1        7      79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        2      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        2      83
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0       55      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       10      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        9      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        0      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0       13      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3      90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0       44     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        4     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0       12     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0       35     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       24    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       20    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      818    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      351    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0      121    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       52    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       29     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1       14     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      179     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1      100     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       51     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1       29     402
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0      728   15992
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1        7   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  0    12676   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  1      133   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0     2424   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1       24   15992
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0      303    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       37    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0      477    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1       69    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0      238    1165
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       41    1165
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0      210    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1       95    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0     1408    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      503    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      378    2720
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      126    2720
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0       24     106
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        2     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0       50     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        6     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0       22     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        2     106


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
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/978aa0dd-1d84-4c64-9d2a-261671145dbf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/978aa0dd-1d84-4c64-9d2a-261671145dbf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/978aa0dd-1d84-4c64-9d2a-261671145dbf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/978aa0dd-1d84-4c64-9d2a-261671145dbf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.3332039    0.2280498   0.4383579
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.4680406    0.3161042   0.6199769
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.2524677    0.1447467   0.3601887
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.3059700    0.1549300   0.4570099
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.6230600    0.4923729   0.7537472
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.4994236    0.3835241   0.6153230
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.6950708    0.5828643   0.8072773
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.4057421    0.3545291   0.4569551
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.4051556    0.2888161   0.5214950
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.5227273    0.3749653   0.6704893
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4671280    0.4095378   0.5247182
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.4588235    0.3527637   0.5648834
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.1238270    0.0843035   0.1633504
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.2553862    0.1974236   0.3133489
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2128715    0.1760624   0.2496806
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.3182163    0.2858610   0.3505716
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.3279604    0.2997906   0.3561302
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2813007    0.2460521   0.3165493
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.3958705    0.3530711   0.4386700
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.4057899    0.3842677   0.4273121
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.3410300    0.3041276   0.3779323
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.2463768    0.1443667   0.3483870
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2666667    0.1078978   0.4254355
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1730769    0.0699098   0.2762441
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1944444    0.0647578   0.3241311
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  NA                0.3396226    0.2117265   0.4675188
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.3750000    0.2628265   0.4871735
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.3567315    0.1862417   0.5272213
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2110842    0.1713753   0.2507930
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2605995    0.1718061   0.3493929
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.6351134    0.5120607   0.7581661
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.2839296    0.2122215   0.3556377
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0720355    0.0261186   0.1179524
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.1096931    0.0717323   0.1476539
0-6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.2499315    0.1913483   0.3085147
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.2016142    0.1648149   0.2384135
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.3161432    0.2785126   0.3537738
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.2215253    0.1924575   0.2505932
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2005669    0.1630788   0.2380550
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1719108    0.1362560   0.2075657
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2342610    0.2158021   0.2527199
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2291015    0.1959659   0.2622371
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1884058    0.0958331   0.2809785
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.3000000    0.1354719   0.4645281
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1153846    0.0282601   0.2025091
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                0.1666667    0.0445476   0.2887858
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  NA                0.4150943    0.2820246   0.5481641
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              NA                0.2638889    0.1617674   0.3660104
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.9267662    0.8935858   0.9599465
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2859035    0.2505656   0.3212414
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.0971428    0.0584607   0.1358249
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3271411    0.1881169   0.4661654
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.3581916    0.3019558   0.4144274
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.3626951    0.2579101   0.4674801
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0095238   -0.0012136   0.0202612
6-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0103833    0.0077464   0.0130202
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0098039    0.0053467   0.0142611
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0702051    0.0499705   0.0904397
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1209590    0.0993202   0.1425978
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1333986    0.1062326   0.1605646
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.3671319    0.3265577   0.4077061
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.2683682    0.2480300   0.2887063
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.2326847    0.1993383   0.2660310


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.3377483   0.2620632   0.4134335
0-24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.4968944   0.4194215   0.5743673
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.4145695   0.3576236   0.4715155
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.2554368   0.1979772   0.3128964
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2560311   0.2321591   0.2799032
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.4018374   0.3841095   0.4195652
0-6 months    ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.2251656   0.1583223   0.2920089
0-6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.3229814   0.2505249   0.3954378
0-6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2197071   0.1750081   0.2644060
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.2485407   0.1903207   0.3067607
0-6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2005842   0.1760818   0.2250867
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2321307   0.2168619   0.2473995
6-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1854305   0.1232352   0.2476257
6-24 months   ki0047075b-MAL-ED          INDIA         NA                   NA                0.2919255   0.2214783   0.3623726
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.3051948   0.2633957   0.3469939
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0102551   0.0075905   0.0129198
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1261803   0.1071047   0.1452559
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2661765   0.2495644   0.2827886


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.4046673   0.8942004   2.2065413
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7576974   0.4481428   1.2810768
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              2.0363438   1.1911041   3.4813884
0-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.6322634   0.9459085   2.8166401
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.5837422   0.5193010   0.6561800
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.5828983   0.4308866   0.7885378
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.8936362   0.6564907   1.2164464
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8777494   0.6092361   1.2646066
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              2.0624443   1.4944509   2.8463138
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.7191042   1.2368028   2.3894831
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0306209   0.9024647   1.1769762
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.8839922   0.7532993   1.0373595
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.0250571   0.9087955   1.1561920
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8614685   0.7393175   1.0038015
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.0823529   0.5241066   2.2352092
0-6 months    ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7024887   0.3399717   1.4515632
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA         <32                  >=38              1.7466307   0.8120101   3.7569961
0-6 months    ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.9285714   0.9284968   4.0058164
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.5917173   0.3863263   0.9063047
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.7305201   0.5194347   1.0273853
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.4470534   0.3228450   0.6190484
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.1134215   0.0578661   0.2223139
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              2.2784626   1.6172303   3.2100510
0-6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.8379847   1.2883715   2.6220603
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.7007120   0.5871367   0.8362572
0-6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.6344179   0.5091000   0.7905835
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.3626892   1.0915695   1.7011486
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.3326765   1.0349905   1.7159835
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.5923077   0.7624990   3.3251767
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.6124260   0.2487773   1.5076363
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA         <32                  >=38              2.4905660   1.1193351   5.5416104
6-24 months   ki0047075b-MAL-ED          INDIA         [32-38)              >=38              1.5833333   0.6913573   3.6261201
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.3084959   0.2711521   0.3509826
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.1048191   0.0706504   0.1555129
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.0949145   0.6961674   1.7220540
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              1.1086808   0.6635453   1.8524328
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              1.0902490   0.3822067   3.1099478
6-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.0294118   0.3913001   2.7081224
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.7229380   1.2312107   2.4110537
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.9001274   1.3418759   2.6906244
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7309856   0.6394053   0.8356827
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.6337903   0.5288605   0.7595390


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0045445   -0.0725821    0.0816711
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1909245    0.0544906    0.3273583
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2805013   -0.3647198   -0.1962827
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0514354   -0.1911941    0.0883233
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.1316098    0.0744935    0.1887261
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0621852   -0.0923508   -0.0320196
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0059669   -0.0365313    0.0484650
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0212112   -0.0944500    0.0520275
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1285369    0.0079252    0.2491487
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1370244   -0.2830081    0.0089593
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.4485105   -0.5705958   -0.3264252
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.1388476    0.0819945    0.1957008
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.1155590   -0.1493553   -0.0817627
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0602199    0.0245364    0.0959034
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0029753   -0.0708431    0.0648925
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.1252588    0.0103385    0.2401791
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.6215713   -0.6760058   -0.5671369
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0285802   -0.1030785    0.1602390
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0007313   -0.0085038    0.0099664
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0559752    0.0353501    0.0766002
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.1009554   -0.1410001   -0.0609108


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0134553   -0.2433147    0.2171970
0-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.3842355    0.0360111    0.6066698
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.6766084   -0.8919118   -0.4858070
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1091371   -0.4493709    0.1512283
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.5152343    0.3329917    0.6476839
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.2428814   -0.3760273   -0.1226188
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0148489   -0.0966588    0.1150186
0-6 months    ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0942029   -0.4723931    0.1868476
0-6 months    ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.3979701   -0.1109883    0.6737679
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.6236687   -1.3772485   -0.1089712
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -2.4035563   -3.3823961   -1.6433474
0-6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                 0.5586515    0.3795577    0.6860490
0-6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.5761120   -0.7836631   -0.3927120
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.2594223    0.0919741    0.3959915
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0160455   -0.4566198    0.2912711
6-24 months   ki0047075b-MAL-ED          INDIA         >=38                 NA                 0.4290780   -0.1233081    0.7098286
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -2.0366380   -2.5034242   -1.6320451
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0803445   -0.3753011    0.3850319
6-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0713124   -1.4722970    0.6511501
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.4436127    0.2797256    0.5702099
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3792801   -0.5448259   -0.2314744
