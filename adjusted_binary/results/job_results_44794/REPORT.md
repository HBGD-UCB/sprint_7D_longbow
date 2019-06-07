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

agecat        studyid                    country                        fage       pers_wast   n_cell      n
------------  -------------------------  -----------------------------  --------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               0       65    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               1        4    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                0       30    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                1        0    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       49    151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        3    151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               0       30     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               1        0     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                0       18     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                1        0     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       30     79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        1     79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38               0       36    161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38               1        0    161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                0       46    161
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                1        7    161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            0       66    161
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            1        6    161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               0       17     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               1        0     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                0       14     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                1        1     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47     79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0     79
0-24 months   ki0047075b-MAL-ED          PERU                           >=38               0       27     84
0-24 months   ki0047075b-MAL-ED          PERU                           >=38               1        0     84
0-24 months   ki0047075b-MAL-ED          PERU                           <32                0       28     84
0-24 months   ki0047075b-MAL-ED          PERU                           <32                1        1     84
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            0       28     84
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            1        0     84
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       64     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16     90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0     90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37    100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0    100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               0        8    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               1        0    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                0      337    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                1       27    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            0       49    426
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            1        5    426
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               0        6     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               1        4     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                0       56     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                1        8     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            0       14     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            1        6     94
0-24 months   ki1119695-PROBIT           BELARUS                        >=38               0      337   7665
0-24 months   ki1119695-PROBIT           BELARUS                        >=38               1        8   7665
0-24 months   ki1119695-PROBIT           BELARUS                        <32                0     6060   7665
0-24 months   ki1119695-PROBIT           BELARUS                        <32                1       73   7665
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            0     1178   7665
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            1        9   7665
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               0      136    493
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               1        7    493
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                0      220    493
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                1       11    493
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            0      112    493
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            1        7    493
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               0      284   2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               1       21   2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                0     1824   2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                1       89   2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            0      477   2723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            1       28   2723
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38               0       26     99
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38               1        0     99
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                0       50     99
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                1        1     99
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            0       22     99
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            1        0     99
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38               0       66    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38               1        3    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                0       30    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                1        0    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       50    151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        2    151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38               0       30     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38               1        0     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                0       18     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                1        0     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       31     79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        0     79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38               0       34    160
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38               1        2    160
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                0       47    160
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                1        6    160
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)            0       67    160
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)            1        4    160
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38               0       17     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38               1        0     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                0       14     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                1        1     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47     79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0     79
0-6 months    ki0047075b-MAL-ED          PERU                           >=38               0       27     84
0-6 months    ki0047075b-MAL-ED          PERU                           >=38               1        0     84
0-6 months    ki0047075b-MAL-ED          PERU                           <32                0       29     84
0-6 months    ki0047075b-MAL-ED          PERU                           <32                1        0     84
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)            0       28     84
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)            1        0     84
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       63     89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1     89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9     89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0     89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16     89
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0     89
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37    100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0    100
0-6 months    ki1119695-PROBIT           BELARUS                        >=38               0      267   6402
0-6 months    ki1119695-PROBIT           BELARUS                        >=38               1       30   6402
0-6 months    ki1119695-PROBIT           BELARUS                        <32                0     4614   6402
0-6 months    ki1119695-PROBIT           BELARUS                        <32                1      484   6402
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)            0      923   6402
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)            1       84   6402
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38               0       85    822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38               1        3    822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                0      539    822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                1       33    822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)            0      149    822
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)            1       13    822
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               0       65    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38               1        4    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                0       30    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                1        0    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            0       49    151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)            1        3    151
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               0       30     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38               1        0     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                0       18     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                1        0     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            0       30     79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)            1        1     79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38               0       36    161
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38               1        0    161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                0       46    161
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                1        7    161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            0       66    161
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)            1        6    161
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               0       17     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38               1        0     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                0       14     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                1        1     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            0       47     79
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)            1        0     79
6-24 months   ki0047075b-MAL-ED          PERU                           >=38               0       27     84
6-24 months   ki0047075b-MAL-ED          PERU                           >=38               1        0     84
6-24 months   ki0047075b-MAL-ED          PERU                           <32                0       28     84
6-24 months   ki0047075b-MAL-ED          PERU                           <32                1        1     84
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            0       28     84
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)            1        0     84
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               0       64     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38               1        1     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                0        9     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                1        0     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            0       16     90
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)            1        0     90
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               0       48    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38               1        0    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                0       15    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                1        0    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            0       37    100
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)            1        0    100
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               0        8    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38               1        0    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                0      337    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                1       27    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            0       49    426
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)            1        5    426
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               0        6     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38               1        4     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                0       56     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                1        8     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            0       14     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)            1        6     94
6-24 months   ki1119695-PROBIT           BELARUS                        >=38               0      337   7665
6-24 months   ki1119695-PROBIT           BELARUS                        >=38               1        8   7665
6-24 months   ki1119695-PROBIT           BELARUS                        <32                0     6060   7665
6-24 months   ki1119695-PROBIT           BELARUS                        <32                1       73   7665
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            0     1178   7665
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)            1        9   7665
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               0      136    493
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38               1        7    493
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                0      220    493
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                1       11    493
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            0      112    493
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)            1        7    493
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               0      284   2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38               1       21   2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                0     1824   2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                1       89   2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            0      477   2723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)            1       28   2723
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38               0       26     99
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38               1        0     99
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                0       50     99
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                1        1     99
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            0       22     99
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)            1        0     99


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
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
![](/tmp/c15171ca-a15c-4d35-8f83-c8632f874c69/d3bd0b90-550d-4237-b49a-f39e99601461/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c15171ca-a15c-4d35-8f83-c8632f874c69/d3bd0b90-550d-4237-b49a-f39e99601461/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c15171ca-a15c-4d35-8f83-c8632f874c69/d3bd0b90-550d-4237-b49a-f39e99601461/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c15171ca-a15c-4d35-8f83-c8632f874c69/d3bd0b90-550d-4237-b49a-f39e99601461/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                0.0231884   0.0012180   0.0451588
0-24 months   ki1119695-PROBIT    BELARUS       <32                  NA                0.0119028   0.0044811   0.0193246
0-24 months   ki1119695-PROBIT    BELARUS       [32-38)              NA                0.0075821   0.0014204   0.0137439
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                0.0489510   0.0135510   0.0843511
0-24 months   ki1135781-COHORTS   GUATEMALA     <32                  NA                0.0476190   0.0201288   0.0751093
0-24 months   ki1135781-COHORTS   GUATEMALA     [32-38)              NA                0.0588235   0.0165054   0.1011417
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.0688525   0.0404310   0.0972740
0-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.0465238   0.0370840   0.0559636
0-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.0554455   0.0354824   0.0754087
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                0.1010101   0.0389252   0.1630950
0-6 months    ki1119695-PROBIT    BELARUS       <32                  NA                0.0949392   0.0453921   0.1444863
0-6 months    ki1119695-PROBIT    BELARUS       [32-38)              NA                0.0834161   0.0358983   0.1309339
6-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                0.0231884   0.0012180   0.0451588
6-24 months   ki1119695-PROBIT    BELARUS       <32                  NA                0.0119028   0.0044811   0.0193246
6-24 months   ki1119695-PROBIT    BELARUS       [32-38)              NA                0.0075821   0.0014204   0.0137439
6-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                0.0489510   0.0135510   0.0843511
6-24 months   ki1135781-COHORTS   GUATEMALA     <32                  NA                0.0476190   0.0201288   0.0751093
6-24 months   ki1135781-COHORTS   GUATEMALA     [32-38)              NA                0.0588235   0.0165054   0.1011417
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.0688525   0.0404310   0.0972740
6-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.0465238   0.0370840   0.0559636
6-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.0554455   0.0354824   0.0754087


### Parameter: E(Y)


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1119695-PROBIT    BELARUS       NA                   NA                0.0117417   0.0045156   0.0189677
0-24 months   ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0507099   0.0313229   0.0700970
0-24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0506794   0.0424394   0.0589194
0-6 months    ki1119695-PROBIT    BELARUS       NA                   NA                0.0934083   0.0449741   0.1418425
6-24 months   ki1119695-PROBIT    BELARUS       NA                   NA                0.0117417   0.0045156   0.0189677
6-24 months   ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0507099   0.0313229   0.0700970
6-24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0506794   0.0424394   0.0589194


### Parameter: RR


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT    BELARUS       <32                  >=38              0.5133091   0.3160719   0.8336276
0-24 months   ki1119695-PROBIT    BELARUS       [32-38)              >=38              0.3269798   0.0936853   1.1412226
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS   GUATEMALA     <32                  >=38              0.9727891   0.3856118   2.4540710
0-24 months   ki1135781-COHORTS   GUATEMALA     [32-38)              >=38              1.2016807   0.4332933   3.3326999
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  >=38              0.6757026   0.4265768   1.0703207
0-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              0.8052805   0.4656530   1.3926179
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT    BELARUS       <32                  >=38              0.9398980   0.6197874   1.4253408
0-6 months    ki1119695-PROBIT    BELARUS       [32-38)              >=38              0.8258193   0.5193385   1.3131657
6-24 months   ki1119695-PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT    BELARUS       <32                  >=38              0.5133091   0.3160719   0.8336276
6-24 months   ki1119695-PROBIT    BELARUS       [32-38)              >=38              0.3269798   0.0936853   1.1412226
6-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS   GUATEMALA     <32                  >=38              0.9727891   0.3856118   2.4540710
6-24 months   ki1135781-COHORTS   GUATEMALA     [32-38)              >=38              1.2016807   0.4332933   3.3326999
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  >=38              0.6757026   0.4265768   1.0703207
6-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              0.8052805   0.4656530   1.3926179


### Parameter: PAR


agecat        studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                -0.0114467   -0.0274965   0.0046031
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.0017589   -0.0282750   0.0317927
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.0181731   -0.0445306   0.0081845
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                -0.0076018   -0.0470152   0.0318116
6-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                -0.0114467   -0.0274965   0.0046031
6-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.0017589   -0.0282750   0.0317927
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.0181731   -0.0445306   0.0081845


### Parameter: PAF


agecat        studyid             country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                -0.9748792   -2.2816761   -0.1884622
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.0346853   -0.7826654    0.4772814
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.3585887   -0.9881344    0.0716104
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                -0.0813824   -0.6013300    0.2697396
6-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                -0.9748792   -2.2816761   -0.1884622
6-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.0346853   -0.7826654    0.4772814
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                -0.3585887   -0.9881344    0.0716104
