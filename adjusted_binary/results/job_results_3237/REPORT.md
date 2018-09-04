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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        fage       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       28     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1       41     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0        7     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1       23     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       23     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1       29     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       22      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        8      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0       10      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        8      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       26      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        5      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       16     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1       20     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       19     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1       34     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       25     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1       47     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  0       12      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  1        5      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   0        9      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   1        6      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               0       28      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               1       19      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                  0       10      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                  1       17      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                   0        8      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32                   1       21      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               0        7      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               1       22      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       29      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       36      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        6      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        3      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0        5      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1       11      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0        4     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       44     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        1     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1       14     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0        3     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       34     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       11    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  1       40    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   0      406    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   1      873    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0       56    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1      144    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0        7     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1       37     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0       51     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1      238     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       14     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1       71     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                  0      612   16277
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                  1      132   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32                   0    10867   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32                   1     2191   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               0     2108   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               1      367   16277
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  0       96    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  1      290    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   0      147    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   1      462    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               0       64    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               1      242    1301
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  0       90    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  1      240    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   0      669    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   1     1414    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      157    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               1      381    2951
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  0       10     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  1       16     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                   0       22     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                   1       34     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               0        8     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               1       16     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       49     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                  1       20     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                   0       16     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                   1       14     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       37     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1       15     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  0       25      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                  1        5      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   0       11      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                   1        7      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       27      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        4      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  0       25     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                  1       11     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   0       35     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                   1       18     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               0       47     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)               1       25     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                  0       14      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                  1        3      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                   0       13      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                   1        2      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)               0       38      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)               1        9      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                  0       21      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                  1        6      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                   0       15      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32                   1       14      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)               0       11      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)               1       18      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       45      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       20      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        7      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        2      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0        9      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        7      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0       31     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       17     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        5     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1       10     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0       21     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       16     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                  0       23    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                  1       27    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                   0      742    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                   1      535    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0      113    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1       87    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0       25     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1       18     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0      171     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1      117     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0       58     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1       27     416
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                  0      660   16273
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                  1       83   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32                   0    11743   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32                   1     1313   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)               0     2279   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)               1      195   16273
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                  0      205    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                  1      108    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                   0      340    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                   1      144    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)               0      169    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)               1       86    1052
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                  0      231    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                  1       99    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                   0     1595    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                   1      488    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      419    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)               1      119    2951
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                  0        7      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                  1        2      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                   0       12      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                   1        9      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)               0        3      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)               1        5      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  0       28     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                  1       21     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   0        7     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                   1        9     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               0       23     102
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)               1       14     102
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  0       22      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                  1        3      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   0       10      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                   1        1      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               0       26      63
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)               1        1      63
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  0       16     107
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                  1        9     107
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   0       19     107
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                   1       16     107
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               0       25     107
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)               1       22     107
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  0       12      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                  1        2      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   0        9      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                   1        4      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               0       28      65
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)               1       10      65
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                  0       10      46
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                  1       11      46
6-24 months   ki0047075b-MAL-ED          PERU                           <32                   0        7      46
6-24 months   ki0047075b-MAL-ED          PERU                           <32                   1        7      46
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               0        7      46
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)               1        4      46
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  0       29      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                  1       16      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   0        6      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                   1        1      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               0        5      61
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)               1        4      61
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  0        4      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                  1       27      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   0        1      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                   1        4      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               0        3      57
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)               1       18      57
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  0        9     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                  1       13     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   0      351     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                   1      338     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               0       44     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)               1       57     812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  0        6     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                  1       19     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   0       44     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                   1      121     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               0        9     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)               1       44     243
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                  0      605   14433
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                  1       49   14433
6-24 months   ki1119695-PROBIT           BELARUS                        <32                   0    10645   14433
6-24 months   ki1119695-PROBIT           BELARUS                        <32                   1      878   14433
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               0     2084   14433
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)               1      172   14433
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  0       65     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                  1      182     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   0       95     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                   1      318     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               0       45     861
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)               1      156     861
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  0       70    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                  1      141    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   0      527    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                   1      926    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               0      128    2054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)               1      262    2054
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  0       10      90
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                  1       14      90
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                   0       22      90
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                   1       25      90
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               0        8      90
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)               1       11      90


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0119f4b3-420f-4e68-9c5f-66a1e0fb010a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0119f4b3-420f-4e68-9c5f-66a1e0fb010a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0119f4b3-420f-4e68-9c5f-66a1e0fb010a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0119f4b3-420f-4e68-9c5f-66a1e0fb010a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.5942029   0.4779542   0.7104516
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.7666667   0.6148142   0.9185192
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.5576923   0.4222517   0.6931329
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                0.2666667   0.1074132   0.4259201
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  NA                0.4444444   0.2134239   0.6754650
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              NA                0.1612903   0.0309906   0.2915900
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.5606420   0.3981447   0.7231393
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.6452638   0.5207583   0.7697694
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.6475855   0.5389014   0.7562696
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                0.2941176   0.0761377   0.5120976
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  NA                0.4000000   0.1504978   0.6495022
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              NA                0.4042553   0.2630590   0.5454516
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.6296296   0.4463996   0.8128597
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.7241379   0.5605032   0.8877727
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.7586207   0.6019523   0.9152890
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.7379918   0.6424358   0.8335478
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.6839829   0.6433424   0.7246234
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.6966174   0.6030186   0.7902162
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.8409091   0.7327061   0.9491120
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.8235294   0.7795251   0.8675337
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8352941   0.7563476   0.9142406
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1327424   0.1084223   0.1570626
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.1647850   0.1466851   0.1828849
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.1407157   0.1212829   0.1601485
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.8040508   0.7741443   0.8339573
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.8067715   0.7808754   0.8326675
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.8205594   0.7885286   0.8525902
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.5484396   0.5055853   0.5912940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6709012   0.6508089   0.6909936
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.6339341   0.5959547   0.6719134
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.6153846   0.4274935   0.8032758
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.6071429   0.4786216   0.7356642
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.6666667   0.4771731   0.8561602
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.3321710   0.2321653   0.4321767
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.5480234   0.3831116   0.7129352
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.3563023   0.2435591   0.4690455
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3055556   0.1546123   0.4564988
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.3396226   0.2117265   0.4675188
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.3472222   0.2369106   0.4575338
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2222222   0.0644765   0.3799679
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  NA                0.4827586   0.2998094   0.6657078
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.6206897   0.4430444   0.7983349
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.3541667   0.2181870   0.4901463
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.6666667   0.4269056   0.9064277
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4324324   0.2719980   0.5928669
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.5404304   0.4405936   0.6402673
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.4202964   0.3856639   0.4549289
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.4217350   0.3776828   0.4657871
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.4218613   0.2743083   0.5694143
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.4064127   0.3498993   0.4629262
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3154921   0.2174093   0.4135749
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.1036774   0.0805243   0.1268305
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.0989474   0.0859199   0.1119750
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0739874   0.0584310   0.0895439
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.3574757   0.3219586   0.3929929
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.3321052   0.3023355   0.3618749
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4280977   0.3856637   0.4705317
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.1591997   0.1279303   0.1904691
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2372417   0.2188088   0.2556746
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2429652   0.2090852   0.2768451
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4285714   0.2893257   0.5678172
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.5625000   0.3182257   0.8067743
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.3783784   0.2213375   0.5354193
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3600000   0.1709580   0.5490420
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4571429   0.2913286   0.6229571
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4680851   0.3247602   0.6114100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.5909091   0.4412762   0.7405420
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.4905660   0.4470375   0.5340946
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.5643564   0.4139588   0.7147541
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.7600000   0.5922410   0.9277590
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.7333333   0.6657193   0.8009473
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.8301887   0.7288962   0.9314812
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0263632   0.0191670   0.0335594
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.0737957   0.0599898   0.0876016
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0784333   0.0655706   0.0912961
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.8245708   0.7872364   0.8619051
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.8228467   0.7930908   0.8526025
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.8317691   0.7936498   0.8698884
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.6776515   0.6319371   0.7233659
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6313607   0.6070488   0.6556727
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.5797993   0.5359212   0.6236774
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.5833333   0.3849882   0.7816784
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  NA                0.5319149   0.3884621   0.6753677
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.5789474   0.3557006   0.8021942


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6158940   0.5380580   0.6937301
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2658228   0.1677841   0.3638614
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6273292   0.5524091   0.7022493
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3797468   0.2720427   0.4874510
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7058824   0.6084428   0.8033219
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6908497   0.6505448   0.7311545
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1652639   0.1464442   0.1840835
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7640277   0.7409463   0.7871090
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6895967   0.6729013   0.7062922
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6226415   0.5299266   0.7153564
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3245033   0.2495788   0.3994278
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3354037   0.2622476   0.4085599
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4470588   0.3407351   0.5533826
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4300000   0.3324781   0.5275219
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4250164   0.3969651   0.4530677
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0977693   0.0847778   0.1107608
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3212928   0.2930610   0.3495246
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2392409   0.2238460   0.2546359
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4313725   0.3347836   0.5279615
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4392523   0.3447732   0.5337315
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5024631   0.4586872   0.5462389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0761449   0.0622450   0.0900449
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7619048   0.7334389   0.7903706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6470302   0.6263581   0.6677023
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5555556   0.4523209   0.6587902


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.2902439   0.9767089   1.7044274
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.9385553   0.6871035   1.2820284
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  >=38              1.6666667   0.7551006   3.6786859
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              >=38              0.6048387   0.2214797   1.6517535
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.1509374   0.8148605   1.6256242
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.1550785   0.8274022   1.6125245
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  >=38              1.3600000   0.5162322   3.5828837
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              >=38              1.3744681   0.6057768   3.1185783
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              1.1501014   0.7956510   1.6624540
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              1.2048682   0.8432651   1.7215313
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.9268164   0.7941999   1.0815773
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.9439364   0.7566631   1.1775597
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9793323   0.8519635   1.1257428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.9933227   0.8467458   1.1652730
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.2413892   1.0484096   1.4698905
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.0600657   0.8750386   1.2842167
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0033837   0.9561159   1.0529883
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0205318   0.9680456   1.0758636
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.2232910   1.1254048   1.3296912
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.1558867   1.0486640   1.2740726
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              0.9866071   0.6804443   1.4305266
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              1.0833333   0.7138317   1.6441007
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.6498228   1.0866000   2.5049839
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              1.0726472   0.7019596   1.6390859
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.1114923   0.5972245   2.0685943
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.1363636   0.6315976   2.0445332
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  >=38              2.1724138   0.9715705   4.8574774
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              >=38              2.7931034   1.2992299   6.0046547
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.8823529   1.1123206   3.1854598
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              1.2209857   0.7158761   2.0824917
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.7777068   0.6169944   0.9802809
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.7803687   0.6263019   0.9723350
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9633800   0.6616288   1.4027519
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7478574   0.4686078   1.1935156
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              0.9543784   0.7938972   1.1472998
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              0.7136316   0.5878520   0.8663235
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9290286   0.8185445   1.0544255
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.1975573   1.0463884   1.3705653
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.4902141   1.2086538   1.8373648
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.5261656   1.2008335   1.9396372
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.3125000   0.7630566   2.2575734
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.8828829   0.5211856   1.4955941
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.2698413   0.6707772   2.4039233
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.3002364   0.7079931   2.3878971
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.8301887   0.6406520   1.0757998
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.9550647   0.6057164   1.5059006
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.9649123   0.7596207   1.2256850
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              1.0923535   0.8488459   1.4057160
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              2.7991943   2.0304062   3.8590744
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              2.9751085   2.1623551   4.0933473
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9979091   0.9419183   1.0572281
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0087298   0.9467853   1.0747270
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.9316894   0.8623525   1.0066012
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.8556009   0.7734103   0.9465259
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  >=38              0.9118541   0.5908075   1.4073583
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              0.9924812   0.5935371   1.6595743


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0216911   -0.0632906    0.1066729
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0008439   -0.1261883    0.1245005
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0666872   -0.0741805    0.2075549
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.0856292   -0.1110071    0.2822655
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0762527   -0.0711882    0.2236936
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0471421   -0.1591411    0.0648568
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0131579   -0.1159028    0.0895870
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0325214    0.0091372    0.0559056
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0400231   -0.0673805   -0.0126658
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1411571    0.0987587    0.1835556
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0072569   -0.1557788    0.1702926
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0076677   -0.0811981    0.0658626
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0298482   -0.1041169    0.1638132
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.2248366    0.0820782    0.3675950
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0758333   -0.0254096    0.1770763
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1154141   -0.2266885   -0.0041396
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0324382   -0.1717285    0.1068521
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0059081   -0.0246771    0.0128610
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0361830   -0.0677075   -0.0046585
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0800412    0.0489642    0.1111182
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0028011   -0.0976469    0.1032491
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0792523   -0.0879712    0.2464759
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0884460   -0.2452587    0.0683667
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0027984   -0.1617659    0.1561692
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0497818    0.0350744    0.0644892
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0626660   -0.0974149   -0.0279171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0306214   -0.0764405    0.0151978
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0277778   -0.1981199    0.1425643


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0352189   -0.1132901    0.1639174
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 NA                -0.0031746   -0.6051395    0.3730393
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1063034   -0.1501707    0.3055868
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 NA                 0.2254902   -0.5110053    0.6030024
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1080247   -0.1295328    0.2956203
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.0682379   -0.2459306    0.0841125
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0158960   -0.1479422    0.1009612
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1967849    0.0494782    0.3212628
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0523844   -0.0893412   -0.0166814
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.2046952    0.1414680    0.2632660
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.0116550   -0.2881702    0.2416950
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0236291   -0.2779710    0.1800936
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0889918   -0.4122526    0.4123318
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.5029240    0.0634044    0.7361886
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1763566   -0.0972907    0.3817605
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.2715520   -0.5741406   -0.0271285
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0832981   -0.5071200    0.2213395
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0604286   -0.2707813    0.1151044
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1126168   -0.2188919   -0.0156078
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.3345631    0.1951462    0.4498302
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0064935   -0.2559174    0.2140764
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1804255   -0.3050283    0.4852967
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1760249   -0.5398925    0.1018629
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0036957   -0.2372084    0.1857435
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.6537763    0.5299059    0.7450067
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0822492   -0.1299382   -0.0365728
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0473260   -0.1209789    0.0214876
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 NA                -0.0500000   -0.4063855    0.2160756
