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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6ed5a6ec-53f7-4c33-8f33-ab15fbdcb19c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6ed5a6ec-53f7-4c33-8f33-ab15fbdcb19c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6ed5a6ec-53f7-4c33-8f33-ab15fbdcb19c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6ed5a6ec-53f7-4c33-8f33-ab15fbdcb19c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.0603630   0.0309666   0.0897595
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.0570547   0.0338714   0.0802380
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.0619815   0.0294063   0.0945567
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.0976227   0.0752309   0.1200146
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.0717413   0.0602024   0.0832801
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.0571725   0.0410200   0.0733249
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.1884058   0.0958310   0.2809806
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.3333333   0.1640814   0.5025853
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.1372549   0.0424959   0.2320139
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.2777778   0.1310089   0.4245467
6 months    ki0047075b-MAL-ED          INDIA                          <32                  NA                0.2264151   0.1133913   0.3394389
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.1111111   0.0382934   0.1839289
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                0.2708333   0.1444836   0.3971831
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  NA                0.3333333   0.0935723   0.5730944
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              NA                0.2432432   0.1043030   0.3821835
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                0.9182943   0.8778403   0.9587482
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  NA                0.2465298   0.2241002   0.2689594
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              NA                0.1534790   0.1130462   0.1939118
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                0.4869102   0.3309933   0.6428271
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  NA                0.4318922   0.3723765   0.4914079
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              NA                0.3890178   0.2816398   0.4963958
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0412634   0.0229255   0.0596013
6 months    ki1119695-PROBIT           BELARUS                        <32                  NA                0.0599247   0.0470368   0.0728126
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0598912   0.0453199   0.0744625
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.3939502   0.3533795   0.4345209
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.4511169   0.4167378   0.4854959
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.4693069   0.4221258   0.5164880
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.2014796   0.1678989   0.2350603
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.2032840   0.1849040   0.2216640
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.2628373   0.2294463   0.2962282
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                0.1923077   0.0400985   0.3445169
6 months    ki1148112-LCNI-5           MALAWI                         <32                  NA                0.3392857   0.2146903   0.4638811
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              NA                0.3750000   0.1803939   0.5696061
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                0.4901010   0.3872602   0.5929419
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  NA                0.6591920   0.5175690   0.8008150
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              NA                0.5746475   0.4547795   0.6945155
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                0.3122940   0.1663866   0.4582015
24 months   ki0047075b-MAL-ED          INDIA                          <32                  NA                0.4554144   0.3268126   0.5840162
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              NA                0.4249335   0.3131192   0.5367478
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                0.2692308   0.0976454   0.4408161
24 months   ki0047075b-MAL-ED          PERU                           <32                  NA                0.2962963   0.1229596   0.4696330
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              NA                0.4230769   0.2319613   0.6141926
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                0.0682970   0.0381815   0.0984125
24 months   ki1119695-PROBIT           BELARUS                        <32                  NA                0.0858285   0.0540541   0.1176028
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              NA                0.0854968   0.0434884   0.1275052
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                0.8280234   0.7953518   0.8606950
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  NA                0.7837350   0.7561152   0.8113549
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              NA                0.8154870   0.7832243   0.8477496
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                0.5002648   0.4569877   0.5435420
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  NA                0.6036227   0.5806456   0.6265998
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              NA                0.5362417   0.4956955   0.5767878


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
Birth       ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9451932   0.5013221   1.7820680
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.0268123   0.5014302   2.1026722
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              0.7348826   0.5562830   0.9708230
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              0.5856469   0.4073167   0.8420530
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  >=38              0.2684649   0.2411072   0.2989268
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              >=38              0.1671349   0.1333952   0.2094083
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  >=38              0.8870059   0.6261626   1.2565098
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              >=38              0.7989519   0.5237203   1.2188263
6 months    ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        <32                  >=38              1.4522483   0.9972475   2.1148463
6 months    ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.4514373   0.9400641   2.2409857
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <32                  >=38              1.1451115   1.0133113   1.2940548
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              1.1912849   1.0365373   1.3691352
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.0089558   0.8357276   1.2180906
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.3045355   1.0584689   1.6078062
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         <32                  >=38              1.7642857   0.7372819   4.2218641
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              >=38              1.9500000   0.7568292   5.0242509
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  >=38              1.3450124   0.9990060   1.8108585
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              >=38              1.1725083   0.8816482   1.5593245
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          <32                  >=38              1.4582872   0.8511502   2.4985035
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              >=38              1.3606840   0.8002960   2.3134703
24 months   ki0047075b-MAL-ED          PERU                           >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           <32                  >=38              1.1005291   0.4633297   2.6140444
24 months   ki0047075b-MAL-ED          PERU                           [32-38)              >=38              1.5714286   0.7195080   3.4320507
24 months   ki1119695-PROBIT           BELARUS                        >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        <32                  >=38              1.2566942   0.7934473   1.9904036
24 months   ki1119695-PROBIT           BELARUS                        [32-38)              >=38              1.2518375   0.6929176   2.2615921
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <32                  >=38              0.9465132   0.8990414   0.9964915
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              >=38              0.9848598   0.9326361   1.0400078
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  >=38              1.2066063   1.0988001   1.3249897
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              >=38              1.0719156   0.9572884   1.2002684


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0003903   -0.0242602    0.0250408
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.0364814   -0.0584440   -0.0145188
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0115942   -0.0577647    0.0809531
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.0914424   -0.2161338    0.0332490
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0008333   -0.0918639    0.0901972
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -0.6347234   -0.6795305   -0.5899162
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.0579628   -0.2053327    0.0894071
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0199235    0.0051612    0.0346857
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0107861   -0.0259875    0.0475597
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0104107   -0.0227039    0.0435252
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.1190131   -0.0211521    0.2591783
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0331474   -0.1092164    0.0429216
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.0976439   -0.0320166    0.2273044
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.0598832   -0.0848113    0.2045776
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.0166352   -0.0161504    0.0494208
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0379843   -0.0684297   -0.0075390
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1193050    0.0760941    0.1625159


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0064247   -0.4946721    0.3395262
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                -0.5966743   -1.0268533   -0.2577964
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                 0.0579710   -0.3608861    0.3479112
6 months    ki0047075b-MAL-ED          INDIA                          >=38                 NA                -0.4907407   -1.3259527    0.0445601
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 NA                -0.0030864   -0.4038159    0.2832519
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 NA                -2.2383234   -2.5022411   -1.9942936
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 NA                -0.1351281   -0.5366760    0.1614916
6 months    ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.3256169    0.0364423    0.5280070
6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 NA                 0.0266497   -0.0679167    0.1128421
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.0491324   -0.1198929    0.1926466
6 months    ki1148112-LCNI-5           MALAWI                         >=38                 NA                 0.3822844   -0.2683064    0.6991479
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 NA                -0.0725400   -0.2550800    0.0834513
24 months   ki0047075b-MAL-ED          INDIA                          >=38                 NA                 0.2381918   -0.1540556    0.4971198
24 months   ki0047075b-MAL-ED          PERU                           >=38                 NA                 0.1819527   -0.3989032    0.5216242
24 months   ki1119695-PROBIT           BELARUS                        >=38                 NA                 0.1958644   -0.2479302    0.4818347
24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 NA                -0.0480791   -0.0878607   -0.0097522
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 NA                 0.1925610    0.1209125    0.2583699
