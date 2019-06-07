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
```




# Results Detail

## Results Plots
![](/tmp/6ab36b54-f2ee-4a20-a6f8-7caa36c8ded6/371f8048-0125-41ec-8119-b2c33f328ede/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6ab36b54-f2ee-4a20-a6f8-7caa36c8ded6/371f8048-0125-41ec-8119-b2c33f328ede/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.6694985   0.5507021   0.7882948
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1700902   0.0278225   0.3123580
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5779586   0.4074508   0.7484665
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.4198791   0.1652517   0.6745065
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6248770   0.4365121   0.8132419
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.7321166   0.6847337   0.7794994
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.9426040   0.9165154   0.9686926
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1731238   0.1445653   0.2016824
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7873589   0.7361551   0.8385627
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.7496001   0.7244308   0.7747695
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.8328029   0.7426955   0.9229104
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2065144   0.0773476   0.3356813
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3691549   0.2208077   0.5175022
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.2257090   0.0550125   0.3964055
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4278246   0.2649445   0.5907048
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3693485   0.3168845   0.4218125
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3165785   0.2171138   0.4160432
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0917513   0.0665219   0.1169808
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3249014   0.2431694   0.4066333
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2484769   0.1954449   0.3015090
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3735649   0.2129748   0.5341551
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3611483   0.1687478   0.5535487
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4905674   0.4469041   0.5342306
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8076206   0.7453870   0.8698541
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0637139   0.0512229   0.0762049
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7908161   0.7119552   0.8696769
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6862299   0.6507128   0.7217470
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6653254   0.5356943   0.7949566


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6158940   0.5380580   0.6937301
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2658228   0.1677841   0.3638614
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6273292   0.5524091   0.7022493
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3797468   0.2720427   0.4874510
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.7058824   0.6084428   0.8033219
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6908497   0.6505448   0.7311545
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1652639   0.1464443   0.1840835
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7640277   0.7409463   0.7871090
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6895967   0.6729013   0.7062922
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6226415   0.5299266   0.7153564
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3245033   0.2495788   0.3994278
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3354037   0.2622476   0.4085599
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4470588   0.3407351   0.5533826
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4300000   0.3324781   0.5275219
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4250164   0.3969651   0.4530677
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0977693   0.0847778   0.1107608
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3212928   0.2930610   0.3495246
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2392409   0.2238460   0.2546359
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4313725   0.3347836   0.5279615
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4392523   0.3447732   0.5337315
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5024631   0.4586872   0.5462389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0761449   0.0622450   0.0900449
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7619048   0.7334389   0.7903706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6470302   0.6263581   0.6677023
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5555556   0.4523209   0.6587902


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9199334   0.7903628   1.0707456
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.5628339   0.7632640   3.2000063
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0854223   0.8386613   1.4047883
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9044195   0.5288510   1.5467013
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1296341   0.8833166   1.4446385
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9436335   0.9060172   0.9828115
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.8781537   0.8442564   0.9134120
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9545991   0.8387080   1.0865039
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9703677   0.9155289   1.0284913
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9199528   0.8932419   0.9474625
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.7476457   0.6519566   0.8573793
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.5713347   0.9027510   2.7350760
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9085717   0.6387377   1.2923967
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.9806867   1.0066134   3.8973450
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0050847   0.7673811   1.3164191
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1507190   0.9997006   1.3245507
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.2300996   0.9264363   1.6332963
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0655901   0.8650475   1.3126242
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9888932   0.7840177   1.2473058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9628295   0.7827606   1.1843221
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1547459   0.8139171   1.6382972
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2162659   0.7578937   1.9518606
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0242489   0.9949834   1.0543751
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9375710   0.8877622   0.9901745
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.1951075   0.9442537   1.5126040
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9634412   0.8784053   1.0567091
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9428767   0.9018487   0.9857712
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.8350133   0.7049540   0.9890676


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0536044   -0.1541303    0.0469214
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0957325   -0.0279245    0.2193895
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0493706   -0.0992126    0.1979538
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0401323   -0.2656983    0.1854338
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0810054   -0.0712294    0.2332402
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0412669   -0.0707032   -0.0118306
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.1148528   -0.1481660   -0.0815395
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0078600   -0.0302089    0.0144889
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0233312   -0.0691263    0.0224638
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0600034   -0.0818034   -0.0382034
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.2101614   -0.3043581   -0.1159648
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1179889    0.0035592    0.2324186
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0337512   -0.1635508    0.0960484
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2213498    0.0688695    0.3738301
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0021754   -0.1131879    0.1175386
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0556678    0.0027977    0.1085380
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0728446   -0.0168447    0.1625338
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0060180   -0.0129189    0.0249548
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0036086   -0.0790496    0.0718324
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0092360   -0.0606539    0.0421819
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0578076   -0.0724792    0.1880945
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0781041   -0.0924023    0.2486104
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0118957   -0.0024667    0.0262581
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0504189   -0.0936599   -0.0071779
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0124311   -0.0040124    0.0288745
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0289113   -0.1019949    0.0441722
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0391997   -0.0696132   -0.0087862
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.1097699   -0.2158971   -0.0036426


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0870352   -0.2652417    0.0660714
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.3601367   -0.3101626    0.6875006
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0786996   -0.1923765    0.2881490
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.1056816   -0.8908916    0.3534628
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1147576   -0.1320969    0.3077853
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0597335   -0.1037318   -0.0174891
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.1387528   -0.1844742   -0.0947962
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0475602   -0.1923101    0.0796167
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0305372   -0.0922648    0.0277020
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0870123   -0.1195176   -0.0554508
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.3375320   -0.5338444   -0.1663450
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3635983   -0.1077251    0.6343794
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1006286   -0.5655879    0.2262438
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.4951246    0.0065699    0.7434151
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0050590   -0.3031334    0.2403635
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1309781   -0.0002995    0.2450270
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1870577   -0.0794050    0.3877412
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0615529   -0.1560059    0.2381673
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0112315   -0.2754814    0.1982720
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0386055   -0.2775298    0.1556351
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1340086   -0.2286264    0.3896101
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1778114   -0.3194463    0.4876683
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0236748   -0.0050419    0.0515709
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0665858   -0.1264278   -0.0099230
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1632552   -0.0590374    0.3388884
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0379461   -0.1384266    0.0536657
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0605841   -0.1088335   -0.0144342
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.1975858   -0.4185323   -0.0110532
