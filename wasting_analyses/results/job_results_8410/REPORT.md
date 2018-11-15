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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        fage       pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               0       65     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               1        4     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                0       30     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                1        0     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       49     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        3     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                0       18      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       30      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        1      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38               0       36     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38               1        0     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                0       46     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                1        7     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            0       66     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            1        6     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               0       17      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               1        0      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                0       14      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                1        1      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38               0       27      84
0-24 months   ki0047075b-MAL-ED          PERU                           >=38               1        0      84
0-24 months   ki0047075b-MAL-ED          PERU                           <32                0       28      84
0-24 months   ki0047075b-MAL-ED          PERU                           <32                1        1      84
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            0       28      84
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            1        0      84
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       64      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               0       33    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               1       10    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                0     1059    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                1       92    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            0      157    1363
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            1       12    1363
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               0       29     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               1       12     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                0      221     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                1       36     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            0       60     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            1       17     375
0-24 months   ki1119695-PROBIT           BELARUS                        >=38               0      725   15975
0-24 months   ki1119695-PROBIT           BELARUS                        >=38               1        8   15975
0-24 months   ki1119695-PROBIT           BELARUS                        <32                0    12675   15975
0-24 months   ki1119695-PROBIT           BELARUS                        <32                1      122   15975
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            0     2424   15975
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            1       21   15975
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               0      289    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               1        9    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                0      458    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                1       15    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            0      236    1018
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            1       11    1018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               0      284    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               1       21    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                0     1824    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                1       89    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            0      477    2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            1       28    2723
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38               0       26      99
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38               1        0      99
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                0       50      99
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                1        1      99
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            0       22      99
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            1        0      99
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38               0       66     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38               1        3     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                0       30     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                1        0     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       50     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        2     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38               0       30      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38               1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                0       18      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       31      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        0      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38               0       34     160
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38               1        2     160
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                0       47     160
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                1        6     160
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)            0       67     160
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)            1        4     160
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38               0       17      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38               1        0      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                0       14      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                1        1      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38               0       27      84
0-6 months    ki0047075b-MAL-ED          PERU                           >=38               1        0      84
0-6 months    ki0047075b-MAL-ED          PERU                           <32                0       29      84
0-6 months    ki0047075b-MAL-ED          PERU                           <32                1        0      84
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)            0       28      84
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)            1        0      84
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       63      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16      89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0      89
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0     100
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               0       62     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               1        7     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                0       28     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                1        2     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       48     151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        4     151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                0       18      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       30      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        1      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38               0       35     161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38               1        1     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                0       44     161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                1        9     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            0       63     161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            1        9     161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               0       17      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               1        0      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                0       14      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                1        1      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47      79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0      79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38               0       27      83
6-24 months   ki0047075b-MAL-ED          PERU                           >=38               1        0      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                0       27      83
6-24 months   ki0047075b-MAL-ED          PERU                           <32                1        1      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            0       28      83
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            1        0      83
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       64      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16      90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0      90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37     100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0     100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               0       25    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               1       13    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                0      863    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                1      154    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            0      126    1201
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            1       20    1201
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               0       30     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               1        9     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                0      199     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                1       35     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            0       60     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            1       15     348
6-24 months   ki1119695-PROBIT           BELARUS                        >=38               0      309    6850
6-24 months   ki1119695-PROBIT           BELARUS                        >=38               1        0    6850
6-24 months   ki1119695-PROBIT           BELARUS                        <32                0     5496    6850
6-24 months   ki1119695-PROBIT           BELARUS                        <32                1        2    6850
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            0     1043    6850
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            1        0    6850
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               0      251     900
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               1        8     900
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                0      401     900
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                1       21     900
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            0      209     900
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            1       10     900
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               0      259    2562
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               1       27    2562
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                0     1682    2562
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                1      122    2562
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            0      432    2562
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            1       40    2562
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38               0       24      92
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38               1        0      92
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                0       46      92
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                1        1      92
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            0       21      92
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            1        0      92


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
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e65283e1-a739-4847-8ef3-402027de07c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e65283e1-a739-4847-8ef3-402027de07c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e65283e1-a739-4847-8ef3-402027de07c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e65283e1-a739-4847-8ef3-402027de07c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.2325581    0.0713088   0.3938074
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0799305    0.0594148   0.1004462
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.0710059    0.0385757   0.1034362
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.2926829    0.1532255   0.4321404
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1400778    0.0975889   0.1825667
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.2207792    0.1280126   0.3135459
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0109141   -0.0006952   0.0225233
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0095335    0.0052504   0.0138166
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0085890    0.0019106   0.0152673
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0302013    0.0107608   0.0496418
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0317125    0.0159128   0.0475121
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0445344    0.0187968   0.0702720
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0688525    0.0404310   0.0972740
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0465238    0.0370840   0.0559636
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0554455    0.0354824   0.0754087
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.3421053    0.1180326   0.5661779
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1514258    0.1353352   0.1675163
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1369863    0.0878314   0.1861413
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.2307692    0.0983479   0.3631906
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1495726    0.1038101   0.1953352
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.2000000    0.1093428   0.2906572
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0308880    0.0098056   0.0519705
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0497630    0.0290042   0.0705219
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0456621    0.0179993   0.0733249
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0944056    0.0605122   0.1282990
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0676275    0.0560378   0.0792172
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0847458    0.0596158   0.1098757


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0836390   0.0602327   0.1070453
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0094523   0.0051727   0.0137318
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0343811   0.0231829   0.0455794
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0506794   0.0424394   0.0589194
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1557036   0.1398038   0.1716033
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0433333   0.0300239   0.0566428
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0737705   0.0636467   0.0838943


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.3437011   0.1950961   0.6054989
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.3053254   0.1663509   0.5604036
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.4785992   0.2720617   0.8419311
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.7543290   0.3996331   1.4238365
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              0.8735055   0.4040925   1.8882107
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.7869632   0.2094002   2.9575476
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0500352   0.4652609   2.3697973
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4745839   0.6208331   3.5023869
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.6757026   0.4265768   1.0703207
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8052805   0.4656530   1.3926179
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.4426292   0.2352153   0.8329415
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.4004215   0.1983858   0.8082098
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.6481481   0.3382630   1.2419214
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8666667   0.4171277   1.8006744
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.6110782   0.7239561   3.5852629
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4783105   0.5934970   3.6822462
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.7163505   0.4812299   1.0663470
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8976773   0.5634980   1.4300398


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1489191   -0.2939567   -0.0038815
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.1193496   -0.2484520    0.0097528
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0014618   -0.0103666    0.0074430
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0041798   -0.0126151    0.0209747
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0181731   -0.0445306    0.0081845
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1864017   -0.3998417    0.0270383
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0612290   -0.1843701    0.0619121
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0124453   -0.0066804    0.0315711
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0206351   -0.0521752    0.0109050


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.7804978   -3.7003588   -0.6448038
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.6885553   -1.6176312   -0.0892364
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.1546489   -1.5393504    0.4749783
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1215724   -0.5292244    0.4954076
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3585887   -0.9881344    0.0716104
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -1.1971573   -2.9611270   -0.2187189
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.3611473   -1.3171737    0.2004389
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.2871993   -0.3086089    0.6117367
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.2797203   -0.7854302    0.0827510
