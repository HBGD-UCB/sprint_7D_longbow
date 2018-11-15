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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        fage       sstunted   n_cell       n
----------  -------------------------  -----------------------------  --------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38              0       66     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38              1        1     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32               0       26     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32               1        1     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)           0       50     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)           1        1     145
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38              0       25      68
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38              1        2      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32               0       16      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32               1        0      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)           0       24      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)           1        1      68
Birth       ki0047075b-MAL-ED          INDIA                          >=38              0       26     131
Birth       ki0047075b-MAL-ED          INDIA                          >=38              1        1     131
Birth       ki0047075b-MAL-ED          INDIA                          <32               0       43     131
Birth       ki0047075b-MAL-ED          INDIA                          <32               1        1     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)           0       58     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)           1        2     131
Birth       ki0047075b-MAL-ED          NEPAL                          >=38              0       13      61
Birth       ki0047075b-MAL-ED          NEPAL                          >=38              1        0      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32               0        9      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32               1        0      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)           0       37      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)           1        2      61
Birth       ki0047075b-MAL-ED          PERU                           >=38              0       27      80
Birth       ki0047075b-MAL-ED          PERU                           >=38              1        0      80
Birth       ki0047075b-MAL-ED          PERU                           <32               0       27      80
Birth       ki0047075b-MAL-ED          PERU                           <32               1        0      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)           0       26      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)           1        0      80
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              0       52      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              1        1      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32               0        8      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32               1        0      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           0       15      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           1        0      76
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       20      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1        1      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0        6      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        0      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       18      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1        1      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38              0        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38              1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32               0      143     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32               1        9     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)           0       30     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)           1        1     187
Birth       ki1119695-PROBIT           BELARUS                        >=38              0      606   13390
Birth       ki1119695-PROBIT           BELARUS                        >=38              1        0   13390
Birth       ki1119695-PROBIT           BELARUS                        <32               0    10719   13390
Birth       ki1119695-PROBIT           BELARUS                        <32               1        5   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)           0     2060   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)           1        0   13390
Birth       ki1135781-COHORTS          GUATEMALA                      >=38              0      243     823
Birth       ki1135781-COHORTS          GUATEMALA                      >=38              1        2     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32               0      373     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32               1        7     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)           0      196     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)           1        2     823
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38              0      321    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38              1        7    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32               0     2048    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32               1       31    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)           0      531    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)           1        6    2944
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38              0       69     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38              1        0     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32               0       29     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32               1        1     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)           0       49     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)           1        2     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38              0       30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38              1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32               0       18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32               1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)           0       31      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)           1        0      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38              0       34     161
6 months    ki0047075b-MAL-ED          INDIA                          >=38              1        2     161
6 months    ki0047075b-MAL-ED          INDIA                          <32               0       50     161
6 months    ki0047075b-MAL-ED          INDIA                          <32               1        3     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)           0       71     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)           1        1     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38              0       17      79
6 months    ki0047075b-MAL-ED          NEPAL                          >=38              1        0      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32               0       15      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32               1        0      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)           0       47      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)           1        0      79
6 months    ki0047075b-MAL-ED          PERU                           >=38              0       27      83
6 months    ki0047075b-MAL-ED          PERU                           >=38              1        0      83
6 months    ki0047075b-MAL-ED          PERU                           <32               0       26      83
6 months    ki0047075b-MAL-ED          PERU                           <32               1        2      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)           0       25      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)           1        3      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              0       63      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              1        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32               0        9      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32               1        0      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           0       16      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           1        0      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       45     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1        3     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0       13     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        2     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       36     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1        1     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38              0       33    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38              1       11    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32               0     1030    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32               1       95    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)           0      142    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)           1       22    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38              0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38              1        7     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32               0      228     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32               1       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)           0       66     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)           1       11     380
6 months    ki1119695-PROBIT           BELARUS                        >=38              0      687   15183
6 months    ki1119695-PROBIT           BELARUS                        >=38              1       14   15183
6 months    ki1119695-PROBIT           BELARUS                        <32               0    12007   15183
6 months    ki1119695-PROBIT           BELARUS                        <32               1      169   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)           0     2265   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)           1       41   15183
6 months    ki1135781-COHORTS          GUATEMALA                      >=38              0      234     929
6 months    ki1135781-COHORTS          GUATEMALA                      >=38              1       41     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32               0      376     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32               1       45     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)           0      200     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)           1       33     929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38              0      276    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38              1       24    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32               0     1753    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32               1       76    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)           0      468    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)           1       27    2624
6 months    ki1148112-LCNI-5           MALAWI                         >=38              0       25     106
6 months    ki1148112-LCNI-5           MALAWI                         >=38              1        1     106
6 months    ki1148112-LCNI-5           MALAWI                         <32               0       50     106
6 months    ki1148112-LCNI-5           MALAWI                         <32               1        6     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)           0       22     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)           1        2     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38              0       60     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38              1        9     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32               0       24     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32               1        6     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)           0       47     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)           1        5     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38              0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38              1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32               0       18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32               1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)           0       31      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)           1        0      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38              0       32     161
24 months   ki0047075b-MAL-ED          INDIA                          >=38              1        4     161
24 months   ki0047075b-MAL-ED          INDIA                          <32               0       45     161
24 months   ki0047075b-MAL-ED          INDIA                          <32               1        8     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)           0       64     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)           1        8     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38              0       17      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=38              1        0      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32               0       14      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32               1        1      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)           0       45      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)           1        2      79
24 months   ki0047075b-MAL-ED          PERU                           >=38              0       26      79
24 months   ki0047075b-MAL-ED          PERU                           >=38              1        0      79
24 months   ki0047075b-MAL-ED          PERU                           <32               0       25      79
24 months   ki0047075b-MAL-ED          PERU                           <32               1        2      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)           0       23      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)           1        3      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              0       58      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38              1        7      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32               0        8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32               1        0      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           0       16      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)           1        0      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              0       32     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38              1       16     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               0        8     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32               1        7     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           0       21     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)           1       16     100
24 months   ki1119695-PROBIT           BELARUS                        >=38              0      175    3909
24 months   ki1119695-PROBIT           BELARUS                        >=38              1        3    3909
24 months   ki1119695-PROBIT           BELARUS                        <32               0     3093    3909
24 months   ki1119695-PROBIT           BELARUS                        <32               1       50    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)           0      578    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)           1       10    3909
24 months   ki1135781-COHORTS          GUATEMALA                      >=38              0      171    1024
24 months   ki1135781-COHORTS          GUATEMALA                      >=38              1      114    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32               0      286    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32               1      206    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)           0      129    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)           1      118    1024
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38              0      171    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38              1       99    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32               0     1213    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32               1      453    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)           0      316    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)           1      119    2371
24 months   ki1148112-LCNI-5           MALAWI                         >=38              0       21      74
24 months   ki1148112-LCNI-5           MALAWI                         >=38              1        0      74
24 months   ki1148112-LCNI-5           MALAWI                         <32               0       33      74
24 months   ki1148112-LCNI-5           MALAWI                         <32               1        4      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)           0       14      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)           1        2      74


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/06f31cbc-2cd2-4795-be20-d8e8506365be/6c23b236-28a9-40bf-b8ce-f91de8777661/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/06f31cbc-2cd2-4795-be20-d8e8506365be/6c23b236-28a9-40bf-b8ce-f91de8777661/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/06f31cbc-2cd2-4795-be20-d8e8506365be/6c23b236-28a9-40bf-b8ce-f91de8777661/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06f31cbc-2cd2-4795-be20-d8e8506365be/6c23b236-28a9-40bf-b8ce-f91de8777661/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0213415   0.0056987   0.0369842
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0149110   0.0097004   0.0201216
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0111732   0.0022815   0.0200649
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.2500000   0.1210063   0.3789937
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.0844444   0.0709188   0.0979701
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.1341463   0.0817771   0.1865156
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.1794872   0.0588872   0.3000872
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.1363636   0.0949128   0.1778145
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.1428571   0.0645949   0.2211194
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0199715   0.0079011   0.0320419
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.0138798   0.0088568   0.0189027
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0177797   0.0093708   0.0261887
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.1490909   0.1069715   0.1912104
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.1068884   0.0773587   0.1364181
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.1416309   0.0968369   0.1864249
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0800000   0.0492950   0.1107050
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0415528   0.0324051   0.0507004
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0545455   0.0345363   0.0745546
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1304348   0.0507062   0.2101634
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.2000000   0.0563881   0.3436119
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.0961538   0.0157606   0.1765471
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.3333333   0.1993028   0.4673638
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.4666667   0.2129274   0.7204059
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.4324324   0.2719980   0.5928669
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.4000000   0.3430959   0.4569041
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.4186992   0.3750849   0.4623135
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4777328   0.4154095   0.5400561
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.3666667   0.3091744   0.4241590
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2719088   0.2505387   0.2932789
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2735632   0.2316624   0.3154641


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0149457   0.0105620   0.0193293
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0960240   0.0777684   0.1142796
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0147533   0.0094871   0.0200196
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1280947   0.1065929   0.1495965
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0483994   0.0401865   0.0566123
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1324503   0.0782033   0.1866974
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3900000   0.2939212   0.4860788
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4277344   0.3974167   0.4580521
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2830030   0.2648675   0.3011384


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.6986876   0.3101923   1.5737474
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.5235435   0.1774516   1.5446338
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.3377778   0.2232870   0.5109739
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.5365854   0.3051201   0.9436411
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.7597403   0.3633993   1.5883498
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7959184   0.3344716   1.8939907
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              0.6949796   0.4049094   1.1928510
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              0.8902552   0.5758992   1.3762034
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.7169341   0.4829174   1.0643530
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              0.9499634   0.6216321   1.4517115
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.5194095   0.3336949   0.8084818
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.6818182   0.4009514   1.1594324
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.5333333   0.5971717   3.9370775
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.7371795   0.2616821   2.0766941
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.4000000   0.7119272   2.7530904
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              1.2972973   0.7506467   2.2420404
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0467480   0.8775412   1.2485810
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.1943320   0.9846851   1.4486142
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.7415694   0.6222719   0.8837377
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.7460815   0.5992279   0.9289247


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0063958   -0.0208660    0.0080744
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1539760   -0.2695126   -0.0384394
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0373819   -0.1504952    0.0757313
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0052181   -0.0148642    0.0044279
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0209962   -0.0554357    0.0134433
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0316006   -0.0597905   -0.0034107
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0020155   -0.0570607    0.0610918
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.0566667   -0.0430816    0.1564149
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0277344   -0.0207918    0.0762606
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0836637   -0.1373429   -0.0299845


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.4279379   -1.7976835    0.2711804
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -1.6035156   -2.8419579   -0.7642811
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.2630579   -1.3691050    0.3266169
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.3536912   -1.1635557    0.1530240
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.1639114   -0.4651907    0.0754175
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.6529134   -1.3386395   -0.1682530
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0152174   -0.5489119    0.3738851
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                 0.1452991   -0.1531681    0.3665160
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0648402   -0.0558196    0.1717109
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.2956284   -0.4999177   -0.1191634
