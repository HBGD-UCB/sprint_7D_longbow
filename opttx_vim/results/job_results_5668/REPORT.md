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
```




# Results Detail

## Results Plots
![](/tmp/31ae5143-ad94-4167-bd07-a6a3ae9b1ec7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31ae5143-ad94-4167-bd07-a6a3ae9b1ec7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.5555608   0.4201194   0.6910022
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1618581   0.0315583   0.2921579
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5684618   0.4059316   0.7309920
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.3775569   0.1343197   0.6207942
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.7049190   0.5417775   0.8680605
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.6843495   0.6436119   0.7250871
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8258780   0.7454541   0.9063019
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1396835   0.1193525   0.1600145
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6908994   0.6595475   0.7222513
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6814076   0.6612607   0.7015545
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6233480   0.4413083   0.8053877
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1868594   0.0958094   0.2779094
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3353368   0.2024383   0.4682354
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.2188803   0.0611312   0.3766295
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3614897   0.2255018   0.4974777
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4204357   0.3857765   0.4550948
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3172348   0.2190823   0.4153872
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0602663   0.0469506   0.0735820
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1661536   0.1373222   0.1949850
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1450187   0.1174022   0.1726352
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3877344   0.2306748   0.5447939
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4395041   0.2808132   0.5981951
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4904218   0.4468931   0.5339504
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7339033   0.6662893   0.8015173
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0705664   0.0571388   0.0839940
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6686761   0.6310654   0.7062868
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6359228   0.6116830   0.6601627
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5735813   0.3886658   0.7584968


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6156652   0.5378291   0.6935013
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2649339   0.1668953   0.3629726
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6274921   0.5525720   0.7024123
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.3782954   0.2705913   0.4859996
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.7062746   0.6088351   0.8037142
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6897241   0.6494193   0.7300290
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8278729   0.7916312   0.8641145
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1657189   0.1468993   0.1845385
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7679233   0.7448419   0.7910046
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6894345   0.6727391   0.7061300
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6224215   0.5297066   0.7151364
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3322222   0.2572977   0.4071466
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3355505   0.2623943   0.4087067
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4495006   0.3431768   0.5558243
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4304167   0.3328948   0.5279386
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4241036   0.3960523   0.4521549
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3890600   0.3421457   0.4359743
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0982618   0.0852704   0.1112533
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3299756   0.3017438   0.3582074
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2412721   0.2258771   0.2566670
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.4324370   0.3358481   0.5290260
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4408643   0.3463852   0.5353435
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5017858   0.4580100   0.5455617
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7573835   0.7033617   0.8114053
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0761375   0.0622375   0.0900374
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7663613   0.7378954   0.7948272
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6469731   0.6263010   0.6676452
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5533579   0.4501233   0.6565926


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.9023748   0.7416074   1.0979938
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.6109376   0.3068681   1.2163035
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.9059266   0.7065464   1.1615698
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          0.9980478   0.5831909   1.7080162
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.9980806   0.8239388   1.2090277
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9922075   0.9782010   1.0064147
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9975904   0.9123582   1.0907849
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8428943   0.7536030   0.9427654
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8996985   0.8690713   0.9314051
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9883572   0.9702498   1.0068026
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          1.0014885   0.7843887   1.2786764
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.5624531   0.3793981   0.8338299
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.9993632   0.7156543   1.3955437
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          0.4869412   0.2556048   0.9276497
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8398599   0.6346503   1.1114225
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9913514   0.9662746   1.0170791
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.8153877   0.6169988   1.0775663
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.6133235   0.5222353   0.7202993
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.5035329   0.4322976   0.5865066
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.6010586   0.5022677   0.7192807
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.8966262   0.6464354   1.2436488
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.9969147   0.7274894   1.3661215
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9773528   0.9507650   1.0046841
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.9689983   0.9226219   1.0177058
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.9268291   0.8884042   0.9669159
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8725338   0.8302672   0.9169520
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9829200   0.9603400   1.0060309
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          1.0365466   0.7758902   1.3847693
