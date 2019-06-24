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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        fage       ever_co   n_cell       n
------------  -------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       61     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1        8     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       22     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1        8     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        7     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       33     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38             1        3     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32              0       36     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32              1       17     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       56     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       16     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       14      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        3      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       13      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        2      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       43      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1        4      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38             0       27      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=38             1        0      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32              0       27      85
0-24 months   ki0047075b-MAL-ED          PERU                           <32              1        2      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       27      85
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1        2      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       62      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        3      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       13      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        3      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       43     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        5     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       12     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        3     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       34     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        3     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             0       29    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             1       20    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              0      987    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              1      277    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      145    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       52    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       18     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      180     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      109     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       57     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       28     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=38             0      743   16277
0-24 months   ki1119695-PROBIT           BELARUS                        >=38             1        1   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32              0    13035   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <32              1       23   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0     2473   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1        2   16277
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0      344    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1       38    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      541    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32              1       60    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0      259    1285
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1       43    1285
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0      254    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1       74    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0     1703    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1      371    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      441    2939
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       96    2939
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       26     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38             1        0     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32              0       53     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <32              1        3     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       22     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        2     106
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             0       67     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             1        2     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              0       29     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              1        1     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       50     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        2     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38             0       34     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38             1        2     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32              0       47     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <32              1        6     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       68     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        4     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38             0       17      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38             1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32              0       15      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32              1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          0       46      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          1        1      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38             0       27      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=38             1        0      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32              0       29      85
0-6 months    ki0047075b-MAL-ED          PERU                           <32              1        0      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)          0       29      85
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)          1        0      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       65      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        0      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       14      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        2      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       47     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        1     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       15     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       36     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        1     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             0       42    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             1        6    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              0     1178    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              1       80    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      175    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       20    1501
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       37     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      266     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              1       22     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       81     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1        4     416
0-6 months    ki1119695-PROBIT           BELARUS                        >=38             0      742   16273
0-6 months    ki1119695-PROBIT           BELARUS                        >=38             1        1   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32              0    13041   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <32              1       15   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)          0     2472   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)          1        2   16273
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38             0      299    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38             1        9    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32              0      468    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32              1        1    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          0      241    1026
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          1        8    1026
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             0      315    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             1       13    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32              0     2033    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32              1       40    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      522    2938
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       15    2938
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38             0        9      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38             1        0      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32              0       21      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <32              1        0      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          0        8      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          1        0      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       61     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1        8     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       23     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1        7     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        7     151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       33     161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38             1        3     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32              0       38     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32              1       15     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       57     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       15     161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       14      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        3      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       13      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        2      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       43      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1        4      79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38             0       27      83
6-24 months   ki0047075b-MAL-ED          PERU                           >=38             1        0      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32              0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32              1        2      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       26      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1        2      83
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       62      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        3      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        9      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        0      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       14      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        2      90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       44     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        4     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       12     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        3     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       34     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        3     100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             0       25    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38             1       19    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              0      921    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32              1      248    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      128    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       45    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       26     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       16     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      177     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      102     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       53     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       27     401
6-24 months   ki1119695-PROBIT           BELARUS                        >=38             0      734   15992
6-24 months   ki1119695-PROBIT           BELARUS                        >=38             1        1   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32              0    12801   15992
6-24 months   ki1119695-PROBIT           BELARUS                        <32              1        8   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0     2448   15992
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1        0   15992
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0      306    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1       33    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      486    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32              1       60    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0      242    1164
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1       37    1164
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0      234    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1       70    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0     1556    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1      355    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      411    2719
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       93    2719
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       26     106
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38             1        0     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32              0       53     106
6-24 months   ki1148112-LCNI-5           MALAWI                         <32              1        3     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       22     106
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        2     106


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e83ca551-df59-449b-ab0e-5fec00741dad/20497140-fe2a-4fe5-9a16-53f179769f85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e83ca551-df59-449b-ab0e-5fec00741dad/20497140-fe2a-4fe5-9a16-53f179769f85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e83ca551-df59-449b-ab0e-5fec00741dad/20497140-fe2a-4fe5-9a16-53f179769f85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e83ca551-df59-449b-ab0e-5fec00741dad/20497140-fe2a-4fe5-9a16-53f179769f85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2666667   0.1078978   0.4254355
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.4457778   0.3707148   0.5208408
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2020978   0.1669711   0.2372246
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2179046   0.1125994   0.3232099
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3736040   0.1832121   0.5639958
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4991902   0.4451151   0.5532653
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1804704   0.0969806   0.2639601
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.1056540   0.0606456   0.1506624
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1098218   0.0802439   0.1393996
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1265719   0.0736777   0.1794662
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2411413   0.1746839   0.3075987
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1782591   0.1572438   0.1992745
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1593992   0.1119539   0.2068444
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1250000   0.0265956   0.2234044
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0635930   0.0431567   0.0840293
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1025641   0.0610899   0.1440383
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0355543   0.0073950   0.0637136
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0181374   0.0119784   0.0242965
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0434958   0.0088658   0.0781257
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1159420   0.0401494   0.1917347
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2333333   0.0814808   0.3851858
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1346154   0.0415386   0.2276921
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.5232982   0.4538303   0.5927660
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.2017380   0.1750242   0.2284517
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.2366521   0.1233335   0.3499708
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.3410612   0.1429589   0.5391635
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.4947611   0.4395936   0.5499286
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1756658   0.0952701   0.2560615
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.1029200   0.0539468   0.1518932
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.1235728   0.0885868   0.1585588
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.1081614   0.0618752   0.1544476
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2373905   0.1692144   0.3055667
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1812677   0.1589963   0.2035392
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1577558   0.1113337   0.2041779


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1523179   0.0948144   0.2098214
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2311258   0.1911027   0.2711489
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1097276   0.0926320   0.1268233
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1840762   0.1700627   0.1980897
0-6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0706196   0.0480792   0.0931600
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0231450   0.0177070   0.0285830
6-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1456954   0.0892366   0.2021542
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2251082   0.1905625   0.2596539
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1116839   0.0935814   0.1297863
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1905112   0.1757477   0.2052747


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              2.3000000   0.9499965   5.5684414
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              1.1610577   0.4483418   3.0067571
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.4533600   0.3572698   0.5752943
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.4888189   0.3072718   0.7776303
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.3361480   0.7934897   2.2499240
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.4830526   0.2426687   0.9615573
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0394471   0.6284307   1.7192831
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.1979848   0.6595661   2.1759269
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7392310   0.5478516   0.9974644
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.6610198   0.4405958   0.9917188
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.5087440   0.2651710   0.9760514
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.8205128   0.4199560   1.6031234
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.5101335   0.2154724   1.2077469
0-6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.2233621   0.3979324   3.7609774
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              2.0125000   0.8000739   5.0622279
6-24 months   ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              1.1610577   0.4483418   3.0067571
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.3855125   0.3173584   0.4683029
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.4522319   0.2782614   0.7349699
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              1.4506518   0.8021105   2.6235671
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.5150566   0.2456837   1.0797756
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2006687   0.6903452   2.0882384
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.0509272   0.5538408   1.9941613
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7635844   0.5588245   1.0433707
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.6645412   0.4405066   1.0025162


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0363759   -0.0252782    0.0980299
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2146520   -0.3012396   -0.1280644
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0027906   -0.1909705    0.1853894
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0040736   -0.0377933    0.0459406
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0570651   -0.1219647    0.0078345
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0543804   -0.1381804    0.0294196
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0124093   -0.0398615    0.0150429
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.0297533   -0.0309275    0.0904341
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.2981900   -0.3796771   -0.2167028
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0205348   -0.1755467    0.2166162
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0087639   -0.0370608    0.0545885
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0468793   -0.1135105    0.0197519


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.2388154   -0.2830190    0.5484073
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.9287235   -1.4684403   -0.5070141
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0075255   -0.6673855    0.3911979
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0371247   -0.4310345    0.3521268
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3100080   -0.7154731   -0.0003777
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.7700472   -2.2322597    0.0306883
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.5361547   -2.3303530    0.2914351
6-24 months   ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                 0.2042161   -0.3337776    0.5252042
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.3246516   -1.8837185   -0.8739710
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                 0.0567893   -0.6751458    0.4689140
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0784703   -0.4383486    0.4095889
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.2460712   -0.6506507    0.0593446
