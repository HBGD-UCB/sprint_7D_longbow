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
![](/tmp/bd67dba9-e7ad-42fb-90e6-aacdce83ca19/80250339-1041-4040-bc24-3c9b84b569ad/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd67dba9-e7ad-42fb-90e6-aacdce83ca19/80250339-1041-4040-bc24-3c9b84b569ad/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.6035543   0.4669559   0.7401527
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1647102   0.0285476   0.3008727
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5673768   0.3962110   0.7385426
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.4025331   0.1457144   0.6593518
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6367897   0.4488122   0.8247672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.7321166   0.6847337   0.7794994
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8794729   0.8376182   0.9213277
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1663544   0.1384754   0.1942333
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7898654   0.7456663   0.8340644
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6823552   0.6340881   0.7306223
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.7488191   0.6137038   0.8839343
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2452441   0.1208450   0.3696433
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3501522   0.1877820   0.5125224
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.2295655   0.0609635   0.3981676
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3515817   0.2144717   0.4886918
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3693485   0.3168845   0.4218125
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3130242   0.2133774   0.4126710
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0935908   0.0688194   0.1183621
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3226694   0.2442859   0.4010528
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2362308   0.1842894   0.2881723
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.4348720   0.2732149   0.5965292
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3586817   0.1647806   0.5525827
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4905674   0.4469041   0.5342306
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8056659   0.7441464   0.8671854
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0610123   0.0489059   0.0731188
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7661095   0.7084073   0.8238117
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6521655   0.6001176   0.7042133
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6012844   0.4188624   0.7837065


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0204452   0.8503286   1.2245951
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.6138821   0.7934641   3.2825879
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1056659   0.8492930   1.4394293
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.9433929   0.5374841   1.6558447
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1085015   0.8715109   1.4099372
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9436335   0.9060172   0.9828115
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9411901   0.9041236   0.9797762
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9934448   0.8685498   1.1362993
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9672885   0.9212079   1.0156741
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0106125   0.9453123   1.0804236
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.8314979   0.7140004   0.9683311
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3231848   0.8574982   2.0417745
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9578798   0.6474175   1.4172209
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.9474125   1.0096879   3.7560273
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2230443   0.9131926   1.6380304
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1507190   0.9997006   1.3245507
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.2440670   0.9334033   1.6581286
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0446468   0.8513884   1.2817734
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9957338   0.7967896   1.2443508
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0127422   0.8183818   1.2532620
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9919529   0.7381647   1.3329959
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2246301   0.7578055   1.9790286
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.0242489   0.9949834   1.0543751
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.9398457   0.8905402   0.9918810
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.2480252   0.9688646   1.6076209
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9945116   0.9318063   1.0614366
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9921258   0.9218234   1.0677898
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9239480   0.7351861   1.1611753


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0123398   -0.0976749    0.1223544
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.1011126   -0.0186589    0.2208841
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0599524   -0.0890775    0.2089823
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0227862   -0.2495416    0.2039691
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0690927   -0.0829016    0.2210869
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0412669   -0.0707032   -0.0118306
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0517217   -0.0863076   -0.0171359
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0010905   -0.0234292    0.0212483
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0258377   -0.0643564    0.0126810
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0072415   -0.0383402    0.0528232
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.1261776   -0.2364289   -0.0159263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0792592   -0.0272504    0.1857688
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0147485   -0.1522149    0.1227179
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2174933    0.0663346    0.3686520
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0784183   -0.0237824    0.1806189
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0556678    0.0027977    0.1085380
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0763989   -0.0134359    0.1662336
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0041785   -0.0148670    0.0232240
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0013766   -0.0733012    0.0705480
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0030101   -0.0473367    0.0533569
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0034995   -0.1320146    0.1250157
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0805707   -0.0911464    0.2522878
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0118957   -0.0024667    0.0262581
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0484643   -0.0910363   -0.0058922
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0151326   -0.0021842    0.0324494
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0042047   -0.0541004    0.0456909
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0051353   -0.0530654    0.0427949
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0457289   -0.1839311    0.0924734


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0200355   -0.1760159    0.1834036
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.3803761   -0.2602965    0.6953623
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0955677   -0.1774500    0.3052802
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0600038   -0.8605203    0.3960786
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0978813   -0.1474325    0.2907485
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0597335   -0.1037318   -0.0174891
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0624846   -0.1060435   -0.0206413
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0065985   -0.1513445    0.1199502
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0338178   -0.0855313    0.0154322
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0105011   -0.0578515    0.0744371
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.2026488   -0.4005595   -0.0327046
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2442477   -0.1661832    0.5102300
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0439724   -0.5445984    0.2943937
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.4864981    0.0095950    0.7337613
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1823681   -0.0950592    0.3895107
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1309781   -0.0002995    0.2450270
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1961848   -0.0713483    0.3969105
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0427387   -0.1745521    0.2198309
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0042845   -0.2550365    0.1963681
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0125819   -0.2219236    0.2020823
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0081124   -0.3547112    0.2498102
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1834269   -0.3195998    0.4947016
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0236748   -0.0050419    0.0515709
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.0640045   -0.1229139   -0.0081854
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1987342   -0.0321360    0.3779628
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0055187   -0.0731844    0.0578806
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0079367   -0.0848065    0.0634861
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0823120   -0.3601998    0.1388036
