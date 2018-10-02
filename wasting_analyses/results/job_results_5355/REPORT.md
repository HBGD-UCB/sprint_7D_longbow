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
![](/tmp/73ffb1b7-cdaf-4a2f-9024-d3f993f36710/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73ffb1b7-cdaf-4a2f-9024-d3f993f36710/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73ffb1b7-cdaf-4a2f-9024-d3f993f36710/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73ffb1b7-cdaf-4a2f-9024-d3f993f36710/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.6859416    0.6003636   0.7715196
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.0844946    0.0614929   0.1074963
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1743117    0.0320007   0.3166227
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.6135770    0.4881123   0.7390418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1556063    0.0950447   0.2161678
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.1194939    0.0493019   0.1896859
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                0.0109141   -0.0006952   0.0225233
0-24 months   ki1119695-PROBIT           BELARUS       <32                  NA                0.0095335    0.0052504   0.0138166
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0085890    0.0019106   0.0152673
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0302013    0.0107608   0.0496418
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0317125    0.0159128   0.0475121
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0445344    0.0187968   0.0702720
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2084115    0.1811195   0.2357034
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0399563    0.0318106   0.0481019
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0523747    0.0332633   0.0714860
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.8209316    0.7178526   0.9240105
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1601751    0.1414625   0.1788877
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1693330    0.0159667   0.3226994
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.2307692    0.0983479   0.3631906
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1495726    0.1038101   0.1953352
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.2000000    0.1093428   0.2906572
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0308880    0.0098056   0.0519705
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0497630    0.0290042   0.0705219
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0456621    0.0179993   0.0733249
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.2271613    0.1979414   0.2563812
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0634597    0.0517217   0.0751976
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0662992    0.0466081   0.0859902


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.1231805   0.0896821   0.1691911
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.2541204   0.1053913   0.6127369
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.2536051   0.1629479   0.3947001
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.1947496   0.1038290   0.3652871
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <32                  >=38              0.8735055   0.4040925   1.8882107
0-24 months   ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.7869632   0.2094002   2.9575476
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.0500352   0.4652609   2.3697973
0-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4745839   0.6208331   3.5023869
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.1917183   0.1505440   0.2441539
0-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.2513041   0.1704981   0.3704074
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.1951139   0.1622404   0.2346482
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              0.2062694   0.0885341   0.4805725
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.6481481   0.3382630   1.2419214
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8666667   0.4171277   1.8006744
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.6110782   0.7239561   3.5852629
6-24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4783105   0.5934970   3.6822462
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.2793594   0.2231235   0.3497690
6-24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.2918593   0.2110045   0.4036970


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.6023026   -0.6952352   -0.5093699
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.4402437   -0.5646583   -0.3158290
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0014618   -0.0103666    0.0074430
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0041798   -0.0126151    0.0209747
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.1577321   -0.1840659   -0.1313982
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.6652280   -0.7670440   -0.5634120
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0612290   -0.1843701    0.0619121
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0124453   -0.0066804    0.0315711
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.1533908   -0.1816338   -0.1251479


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate      ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  ------------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -7.2012141   -10.3784302   -4.9111767
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -2.5398674    -3.6507254   -1.6943455
0-24 months   ki1119695-PROBIT           BELARUS       >=38                 NA                -0.1546489    -1.5393504    0.4749783
0-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1215724    -0.5292244    0.4954076
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -3.1123507    -3.9218903   -2.4359620
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -4.2724000    -5.1193372   -3.5426818
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.3611473    -1.3171737    0.2004389
6-24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.2871993    -0.3086089    0.6117367
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -2.0792981    -2.6171151   -1.6214474
