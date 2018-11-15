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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        fage       stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             0       56     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38             1       11     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              0       24     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32              1        3     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       45     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        6     145
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             0       23      68
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38             1        4      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              0       15      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <32              1        1      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       23      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        2      68
Birth       ki0047075b-MAL-ED          INDIA                          >=38             0       24     131
Birth       ki0047075b-MAL-ED          INDIA                          >=38             1        3     131
Birth       ki0047075b-MAL-ED          INDIA                          <32              0       38     131
Birth       ki0047075b-MAL-ED          INDIA                          <32              1        6     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          0       49     131
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)          1       11     131
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             0       12      61
Birth       ki0047075b-MAL-ED          NEPAL                          >=38             1        1      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32              0        9      61
Birth       ki0047075b-MAL-ED          NEPAL                          <32              1        0      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          0       35      61
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)          1        4      61
Birth       ki0047075b-MAL-ED          PERU                           >=38             0       27      80
Birth       ki0047075b-MAL-ED          PERU                           >=38             1        0      80
Birth       ki0047075b-MAL-ED          PERU                           <32              0       22      80
Birth       ki0047075b-MAL-ED          PERU                           <32              1        5      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          0       21      80
Birth       ki0047075b-MAL-ED          PERU                           [32-38)          1        5      80
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       49      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        4      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        7      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       11      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        4      76
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       18      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1        3      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        6      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        0      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       17      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        2      46
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             0        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38             1        1     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              0      112     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32              1       40     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0       26     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1        5     187
Birth       ki1119695-PROBIT           BELARUS                        >=38             0      605   13390
Birth       ki1119695-PROBIT           BELARUS                        >=38             1        1   13390
Birth       ki1119695-PROBIT           BELARUS                        <32              0    10695   13390
Birth       ki1119695-PROBIT           BELARUS                        <32              1       29   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          0     2059   13390
Birth       ki1119695-PROBIT           BELARUS                        [32-38)          1        1   13390
Birth       ki1135781-COHORTS          GUATEMALA                      >=38             0      230     823
Birth       ki1135781-COHORTS          GUATEMALA                      >=38             1       15     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32              0      358     823
Birth       ki1135781-COHORTS          GUATEMALA                      <32              1       22     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)          0      185     823
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)          1       13     823
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38             0      304    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38             1       24    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32              0     1954    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <32              1      125    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      506    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       31    2944
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             0       56     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38             1       13     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              0       20     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32              1       10     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       44     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1        7     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       31      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        0      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38             0       26     161
6 months    ki0047075b-MAL-ED          INDIA                          >=38             1       10     161
6 months    ki0047075b-MAL-ED          INDIA                          <32              0       41     161
6 months    ki0047075b-MAL-ED          INDIA                          <32              1       12     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          0       64     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)          1        8     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38             0       16      79
6 months    ki0047075b-MAL-ED          NEPAL                          >=38             1        1      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32              0       14      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32              1        1      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          0       45      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)          1        2      79
6 months    ki0047075b-MAL-ED          PERU                           >=38             0       27      83
6 months    ki0047075b-MAL-ED          PERU                           >=38             1        0      83
6 months    ki0047075b-MAL-ED          PERU                           <32              0       20      83
6 months    ki0047075b-MAL-ED          PERU                           <32              1        8      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)          0       17      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)          1       11      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       57      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1        7      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        8      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0       12      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        4      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       35     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       13     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0       10     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1        5     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0       28     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1        9     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             0       23    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38             1       21    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              0      815    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32              1      310    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          0      117    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)          1       47    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             0       20     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38             1       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              0      150     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32              1      114     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          0       47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)          1       30     380
6 months    ki1119695-PROBIT           BELARUS                        >=38             0      652   15183
6 months    ki1119695-PROBIT           BELARUS                        >=38             1       49   15183
6 months    ki1119695-PROBIT           BELARUS                        <32              0    11428   15183
6 months    ki1119695-PROBIT           BELARUS                        <32              1      748   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)          0     2174   15183
6 months    ki1119695-PROBIT           BELARUS                        [32-38)          1      132   15183
6 months    ki1135781-COHORTS          GUATEMALA                      >=38             0      168     929
6 months    ki1135781-COHORTS          GUATEMALA                      >=38             1      107     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32              0      256     929
6 months    ki1135781-COHORTS          GUATEMALA                      <32              1      165     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          0      129     929
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)          1      104     929
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             0      216    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38             1       84    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32              0     1456    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <32              1      373    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      396    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)          1       99    2624
6 months    ki1148112-LCNI-5           MALAWI                         >=38             0       21     106
6 months    ki1148112-LCNI-5           MALAWI                         >=38             1        5     106
6 months    ki1148112-LCNI-5           MALAWI                         <32              0       37     106
6 months    ki1148112-LCNI-5           MALAWI                         <32              1       19     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          0       15     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)          1        9     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             0       40     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38             1       29     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              0       14     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32              1       16     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          0       28     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)          1       24     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38             1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32              0       18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32              1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)          1        1      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38             0       25     161
24 months   ki0047075b-MAL-ED          INDIA                          >=38             1       11     161
24 months   ki0047075b-MAL-ED          INDIA                          <32              0       29     161
24 months   ki0047075b-MAL-ED          INDIA                          <32              1       24     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          0       41     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)          1       31     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             0       12      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=38             1        5      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32              0       13      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32              1        2      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          0       35      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)          1       12      79
24 months   ki0047075b-MAL-ED          PERU                           >=38             0       19      79
24 months   ki0047075b-MAL-ED          PERU                           >=38             1        7      79
24 months   ki0047075b-MAL-ED          PERU                           <32              0       19      79
24 months   ki0047075b-MAL-ED          PERU                           <32              1        8      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)          0       15      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)          1       11      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             0       45      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38             1       20      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              0        7      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32              1        1      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          0        9      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)          1        7      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             0       13     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38             1       35     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              0        3     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32              1       12     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          0        8     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)          1       29     100
24 months   ki1119695-PROBIT           BELARUS                        >=38             0      165    3909
24 months   ki1119695-PROBIT           BELARUS                        >=38             1       13    3909
24 months   ki1119695-PROBIT           BELARUS                        <32              0     2875    3909
24 months   ki1119695-PROBIT           BELARUS                        <32              1      268    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          0      537    3909
24 months   ki1119695-PROBIT           BELARUS                        [32-38)          1       51    3909
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             0       65    1024
24 months   ki1135781-COHORTS          GUATEMALA                      >=38             1      220    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32              0      102    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <32              1      390    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          0       48    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)          1      199    1024
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             0       87    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38             1      183    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              0      641    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <32              1     1025    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          0      174    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)          1      261    2371
24 months   ki1148112-LCNI-5           MALAWI                         >=38             0       11      74
24 months   ki1148112-LCNI-5           MALAWI                         >=38             1       10      74
24 months   ki1148112-LCNI-5           MALAWI                         <32              0       23      74
24 months   ki1148112-LCNI-5           MALAWI                         <32              1       14      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          0       12      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)          1        4      74


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/55e193ab-8ddc-49eb-9be9-2bbddc3cb550/d0f9a405-1bf4-4787-a6dd-24b41f27cf3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/55e193ab-8ddc-49eb-9be9-2bbddc3cb550/d0f9a405-1bf4-4787-a6dd-24b41f27cf3e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/55e193ab-8ddc-49eb-9be9-2bbddc3cb550/d0f9a405-1bf4-4787-a6dd-24b41f27cf3e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/55e193ab-8ddc-49eb-9be9-2bbddc3cb550/d0f9a405-1bf4-4787-a6dd-24b41f27cf3e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.0612245   0.0311864   0.0912626
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.0578947   0.0343990   0.0813905
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.0656566   0.0311365   0.1001767
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0731707   0.0449834   0.1013580
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0601251   0.0499049   0.0703452
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0577281   0.0379986   0.0774576
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1884058   0.0958310   0.2809806
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.3333333   0.1640814   0.5025853
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1372549   0.0424959   0.2320139
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2777778   0.1310089   0.4245467
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.2264151   0.1133913   0.3394389
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1111111   0.0382934   0.1839289
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2708333   0.1444836   0.3971831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.3333333   0.0935723   0.5730944
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2432432   0.1043030   0.3821835
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.4772727   0.2887378   0.6658077
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2755556   0.2521947   0.2989164
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.2865854   0.2408141   0.3323566
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.4871795   0.3301016   0.6442574
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.4318182   0.3719891   0.4916473
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3896104   0.2805433   0.4986775
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0699001   0.0439397   0.0958606
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.0614323   0.0478814   0.0749832
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0572420   0.0401314   0.0743525
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.3890909   0.3314369   0.4467449
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.3919240   0.3452666   0.4385814
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4463519   0.3824874   0.5102164
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.2800000   0.2291822   0.3308178
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2039366   0.1854675   0.2224057
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2000000   0.1647558   0.2352442
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.1923077   0.0400985   0.3445169
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                0.3392857   0.2146903   0.4638811
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.3750000   0.1803939   0.5696061
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4202899   0.3034351   0.5371446
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.5333333   0.3542179   0.7124488
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.4615385   0.3255912   0.5974858
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3055556   0.1546123   0.4564988
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4528302   0.3184015   0.5872588
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4305556   0.3158261   0.5452850
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2692308   0.0976454   0.4408161
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.2962963   0.1229596   0.4696330
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.4230769   0.2319613   0.6141926
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0730337   0.0412745   0.1047929
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.0852689   0.0533618   0.1171759
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0867347   0.0460721   0.1273972
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.7719298   0.7231926   0.8206671
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7926829   0.7568448   0.8285210
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.8056680   0.7562981   0.8550379
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.6777778   0.6220234   0.7335322
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6152461   0.5918783   0.6386139
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.6000000   0.5539531   0.6460469


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0607533   0.0444233   0.0770834
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611413   0.0524852   0.0697974
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2000000   0.1357734   0.2642266
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1863354   0.1260019   0.2466689
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2700000   0.1825472   0.3574528
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0611869   0.0477477   0.0746260
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4047363   0.3731561   0.4363165
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118902   0.1962516   0.2275288
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3113208   0.2227550   0.3998865
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4569536   0.3772355   0.5366718
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4099379   0.3337307   0.4861451
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3291139   0.2248346   0.4333933
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0849322   0.0549995   0.1148649
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7900391   0.7650814   0.8149967
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6195698   0.6000239   0.6391157


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9456140   0.5002530   1.7874675
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0723906   0.5224451   2.2012293
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.8217092   0.5393283   1.2519385
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.7889510   0.4714085   1.3203912
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.7692308   0.8728158   3.5862980
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              0.7285068   0.3121888   1.7000037
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          <32                  >=38              0.8150943   0.3940268   1.6861258
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              0.4000000   0.1723694   0.9282392
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  >=38              1.2307692   0.5222084   2.9007439
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              >=38              0.8981289   0.4295810   1.8777263
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.5773545   0.3723486   0.8952315
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.6004646   0.4096962   0.8800612
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.8863636   0.6240281   1.2589826
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7997266   0.5217965   1.2256937
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              0.8788584   0.6436826   1.1999579
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              0.8189107   0.5991811   1.1192190
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0072813   0.8329182   1.2181455
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.1471662   0.9336191   1.4095580
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.7283449   0.5946318   0.8921258
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.7142857   0.5546372   0.9198880
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              1.7642857   0.7372819   4.2218641
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              1.9500000   0.7568292   5.0242509
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.2689655   0.8205392   1.9624578
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              1.0981432   0.7324009   1.6465279
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.4819897   0.8328118   2.6372025
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.4090909   0.8038543   2.4700213
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              1.1005291   0.4633297   2.6140444
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              1.5714286   0.7195080   3.4320507
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.1675274   0.7382154   1.8465073
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.1875981   0.6725161   2.0971831
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.0268847   0.9501595   1.1098055
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0437063   0.9558002   1.1396973
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.9077401   0.8291097   0.9938276
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.8852459   0.7910522   0.9906556


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0004711   -0.0256058    0.0246635
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0120294   -0.0383431    0.0142843
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0115942   -0.0577647    0.0809531
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0914424   -0.2161338    0.0332490
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0008333   -0.0918639    0.0901972
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.1937018   -0.3849385   -0.0024652
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0582321   -0.2068649    0.0904006
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.0087133   -0.0288182    0.0113916
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0156454   -0.0328663    0.0641570
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0681098   -0.1154015   -0.0208180
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1190131   -0.0211521    0.2591783
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0366638   -0.0501151    0.1234427
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.1043823   -0.0312729    0.2400376
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0598832   -0.0848113    0.2045776
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0118985   -0.0217390    0.0455360
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0181092   -0.0228298    0.0590483
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0582080   -0.1109585   -0.0054574


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0077551   -0.5193057    0.3315563
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.1967480   -0.7135925    0.1642087
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0579710   -0.3608861    0.3479112
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.4907407   -1.3259527    0.0445601
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0030864   -0.4038159    0.2832519
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.6830808   -1.5272725   -0.1208767
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1357559   -0.5412746    0.1630684
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                -0.1424046   -0.5182035    0.1403733
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0386557   -0.0890099    0.1513550
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.3214388   -0.5641523   -0.1163879
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.3822844   -0.2683064    0.6991479
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0802352   -0.1310469    0.2520494
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2546296   -0.1621253    0.5219302
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1819527   -0.3989032    0.5216242
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1400941   -0.3276707    0.4430560
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0229220   -0.0303297    0.0734213
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0939490   -0.1826333   -0.0119151
