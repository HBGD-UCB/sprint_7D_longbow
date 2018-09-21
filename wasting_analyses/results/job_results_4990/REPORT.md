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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        fage       wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38            0       54     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=38            1       11     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32             0       19     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     <32             1        6     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)         0       44     140
Birth       ki0047075b-MAL-ED          BANGLADESH                     [32-38)         1        6     140
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            0       25      65
Birth       ki0047075b-MAL-ED          BRAZIL                         >=38            1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             0       16      65
Birth       ki0047075b-MAL-ED          BRAZIL                         <32             1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)         0       23      65
Birth       ki0047075b-MAL-ED          BRAZIL                         [32-38)         1        1      65
Birth       ki0047075b-MAL-ED          INDIA                          >=38            0       24     128
Birth       ki0047075b-MAL-ED          INDIA                          >=38            1        2     128
Birth       ki0047075b-MAL-ED          INDIA                          <32             0       31     128
Birth       ki0047075b-MAL-ED          INDIA                          <32             1       12     128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)         0       49     128
Birth       ki0047075b-MAL-ED          INDIA                          [32-38)         1       10     128
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            0       13      59
Birth       ki0047075b-MAL-ED          NEPAL                          >=38            1        0      59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             0        7      59
Birth       ki0047075b-MAL-ED          NEPAL                          <32             1        2      59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         0       33      59
Birth       ki0047075b-MAL-ED          NEPAL                          [32-38)         1        4      59
Birth       ki0047075b-MAL-ED          PERU                           >=38            0       27      78
Birth       ki0047075b-MAL-ED          PERU                           >=38            1        0      78
Birth       ki0047075b-MAL-ED          PERU                           <32             0       24      78
Birth       ki0047075b-MAL-ED          PERU                           <32             1        2      78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)         0       25      78
Birth       ki0047075b-MAL-ED          PERU                           [32-38)         1        0      78
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            0       51      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            1        1      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             0        7      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <32             1        1      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         0       13      75
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         1        2      75
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       20      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0        6      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        0      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       17      44
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        1      44
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            0        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=38            1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32             0      125     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          <32             1       10     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)         0       27     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          [32-38)         1        1     166
Birth       ki1119695-PROBIT           BELARUS                        >=38            0      502   13333
Birth       ki1119695-PROBIT           BELARUS                        >=38            1      104   13333
Birth       ki1119695-PROBIT           BELARUS                        <32             0     8407   13333
Birth       ki1119695-PROBIT           BELARUS                        <32             1     2269   13333
Birth       ki1119695-PROBIT           BELARUS                        [32-38)         0     1652   13333
Birth       ki1119695-PROBIT           BELARUS                        [32-38)         1      399   13333
Birth       ki1135781-COHORTS          GUATEMALA                      >=38            0      165     735
Birth       ki1135781-COHORTS          GUATEMALA                      >=38            1       57     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32             0      251     735
Birth       ki1135781-COHORTS          GUATEMALA                      <32             1       86     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)         0      132     735
Birth       ki1135781-COHORTS          GUATEMALA                      [32-38)         1       44     735
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38            0      264    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    >=38            1       39    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32             0     1659    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    <32             1      322    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)         0      445    2797
Birth       ki1135781-COHORTS          PHILIPPINES                    [32-38)         1       68    2797
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38            0       67     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38            1        2     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32             0       30     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     <32             1        0     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)         0       48     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)         1        3     150
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38            0       30      79
6 months    ki0047075b-MAL-ED          BRAZIL                         >=38            1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32             0       18      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <32             1        0      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)         0       31      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)         1        0      79
6 months    ki0047075b-MAL-ED          INDIA                          >=38            0       35     161
6 months    ki0047075b-MAL-ED          INDIA                          >=38            1        1     161
6 months    ki0047075b-MAL-ED          INDIA                          <32             0       49     161
6 months    ki0047075b-MAL-ED          INDIA                          <32             1        4     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)         0       65     161
6 months    ki0047075b-MAL-ED          INDIA                          [32-38)         1        7     161
6 months    ki0047075b-MAL-ED          NEPAL                          >=38            0       17      79
6 months    ki0047075b-MAL-ED          NEPAL                          >=38            1        0      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32             0       14      79
6 months    ki0047075b-MAL-ED          NEPAL                          <32             1        1      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)         0       47      79
6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)         1        0      79
6 months    ki0047075b-MAL-ED          PERU                           >=38            0       27      83
6 months    ki0047075b-MAL-ED          PERU                           >=38            1        0      83
6 months    ki0047075b-MAL-ED          PERU                           <32             0       28      83
6 months    ki0047075b-MAL-ED          PERU                           <32             1        0      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)         0       28      83
6 months    ki0047075b-MAL-ED          PERU                           [32-38)         1        0      83
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            0       62      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            1        2      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             0        8      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32             1        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         0       15      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         1        1      89
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       48     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0       15     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        0     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       36     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        1     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38            0       38    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38            1        6    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32             0      992    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          <32             1      130    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)         0      136    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)         1       29    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38            0       30     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38            1       10     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32             0      222     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32             1       42     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)         0       59     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)         1       17     380
6 months    ki1119695-PROBIT           BELARUS                        >=38            0      693   15179
6 months    ki1119695-PROBIT           BELARUS                        >=38            1        8   15179
6 months    ki1119695-PROBIT           BELARUS                        <32             0    12071   15179
6 months    ki1119695-PROBIT           BELARUS                        <32             1      103   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)         0     2287   15179
6 months    ki1119695-PROBIT           BELARUS                        [32-38)         1       17   15179
6 months    ki1135781-COHORTS          GUATEMALA                      >=38            0      267     930
6 months    ki1135781-COHORTS          GUATEMALA                      >=38            1        9     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32             0      412     930
6 months    ki1135781-COHORTS          GUATEMALA                      <32             1        9     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)         0      222     930
6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)         1       11     930
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38            0      275    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    >=38            1       24    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32             0     1731    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    <32             1       97    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)         0      462    2622
6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)         1       33    2622
6 months    ki1148112-LCNI-5           MALAWI                         >=38            0       26     106
6 months    ki1148112-LCNI-5           MALAWI                         >=38            1        0     106
6 months    ki1148112-LCNI-5           MALAWI                         <32             0       54     106
6 months    ki1148112-LCNI-5           MALAWI                         <32             1        2     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)         0       24     106
6 months    ki1148112-LCNI-5           MALAWI                         [32-38)         1        0     106
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38            0       62     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38            1        7     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32             0       27     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     <32             1        3     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)         0       46     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)         1        6     151
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38            0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=38            1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32             0       18      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <32             1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)         0       30      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)         1        1      79
24 months   ki0047075b-MAL-ED          INDIA                          >=38            0       35     161
24 months   ki0047075b-MAL-ED          INDIA                          >=38            1        1     161
24 months   ki0047075b-MAL-ED          INDIA                          <32             0       44     161
24 months   ki0047075b-MAL-ED          INDIA                          <32             1        9     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)         0       64     161
24 months   ki0047075b-MAL-ED          INDIA                          [32-38)         1        8     161
24 months   ki0047075b-MAL-ED          NEPAL                          >=38            0       17      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=38            1        0      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32             0       15      79
24 months   ki0047075b-MAL-ED          NEPAL                          <32             1        0      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)         0       46      79
24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)         1        1      79
24 months   ki0047075b-MAL-ED          PERU                           >=38            0       26      79
24 months   ki0047075b-MAL-ED          PERU                           >=38            1        0      79
24 months   ki0047075b-MAL-ED          PERU                           <32             0       26      79
24 months   ki0047075b-MAL-ED          PERU                           <32             1        1      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)         0       25      79
24 months   ki0047075b-MAL-ED          PERU                           [32-38)         1        1      79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            0       64      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38            1        1      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             0        8      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32             1        0      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         0       16      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)         1        0      89
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            0       48     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38            1        0     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             0       14     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32             1        1     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         0       36     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)         1        1     100
24 months   ki1119695-PROBIT           BELARUS                        >=38            0      176    3848
24 months   ki1119695-PROBIT           BELARUS                        >=38            1        0    3848
24 months   ki1119695-PROBIT           BELARUS                        <32             0     3058    3848
24 months   ki1119695-PROBIT           BELARUS                        <32             1       36    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)         0      571    3848
24 months   ki1119695-PROBIT           BELARUS                        [32-38)         1        7    3848
24 months   ki1135781-COHORTS          GUATEMALA                      >=38            0      276    1032
24 months   ki1135781-COHORTS          GUATEMALA                      >=38            1       11    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32             0      471    1032
24 months   ki1135781-COHORTS          GUATEMALA                      <32             1       24    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)         0      239    1032
24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)         1       11    1032
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38            0      247    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    >=38            1       24    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32             0     1570    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    <32             1      100    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)         0      401    2376
24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)         1       34    2376
24 months   ki1148112-LCNI-5           MALAWI                         >=38            0       21      74
24 months   ki1148112-LCNI-5           MALAWI                         >=38            1        0      74
24 months   ki1148112-LCNI-5           MALAWI                         <32             0       35      74
24 months   ki1148112-LCNI-5           MALAWI                         <32             1        2      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)         0       16      74
24 months   ki1148112-LCNI-5           MALAWI                         [32-38)         1        0      74


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/1cecaffe-d2ba-4ee8-8b97-b9d3cb434ac9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1cecaffe-d2ba-4ee8-8b97-b9d3cb434ac9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1cecaffe-d2ba-4ee8-8b97-b9d3cb434ac9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1cecaffe-d2ba-4ee8-8b97-b9d3cb434ac9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1692308   0.0777504   0.2607111
Birth       ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2400000   0.0719854   0.4080146
Birth       ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1200000   0.0296035   0.2103965
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                0.1716172   0.1048366   0.2383977
Birth       ki1119695-PROBIT           BELARUS       <32                  NA                0.2125328   0.1453606   0.2797049
Birth       ki1119695-PROBIT           BELARUS       [32-38)              NA                0.1945392   0.1347060   0.2543725
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.2567568   0.1992533   0.3142602
Birth       ki1135781-COHORTS          GUATEMALA     <32                  NA                0.2551929   0.2086144   0.3017713
Birth       ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2500000   0.1859841   0.3140159
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1287129   0.0909994   0.1664263
Birth       ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1625442   0.1462943   0.1787940
Birth       ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1325536   0.1032052   0.1619020
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1363636   0.0538801   0.2188472
6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1158645   0.0916826   0.1400465
6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1757576   0.1320926   0.2194226
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.2500000   0.1156335   0.3843665
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.1590909   0.1149119   0.2032699
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.2236842   0.1298739   0.3174945
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0114123   0.0003147   0.0225098
6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0084607   0.0064263   0.0104950
6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0073785   0.0038513   0.0109056
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0326087   0.0116437   0.0535737
6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0213777   0.0075538   0.0352015
6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0472103   0.0199632   0.0744574
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0802676   0.0494643   0.1110708
6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0530635   0.0427856   0.0633413
6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0666667   0.0446880   0.0886453
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0383275   0.0161053   0.0605497
24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0484848   0.0295541   0.0674156
24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0440000   0.0185643   0.0694357
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0885609   0.0547280   0.1223938
24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0598802   0.0484983   0.0712621
24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0781609   0.0529309   0.1033909


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1642857   0.1026873   0.2258841
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.2079052   0.1425355   0.2732749
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2544218   0.2229136   0.2859300
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1533786   0.1400217   0.1667355
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1239669   0.0988748   0.1490591
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0084327   0.0066853   0.0101801
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0311828   0.0200060   0.0423596
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0587338   0.0497323   0.0677353
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0445736   0.0319770   0.0571703
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0664983   0.0564781   0.0765186


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.4181818   0.5856109   3.434430
Birth       ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7090909   0.2805621   1.792152
Birth       ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS       <32                  >=38              1.2384122   1.0077044   1.521939
Birth       ki1119695-PROBIT           BELARUS       [32-38)              >=38              1.1335652   0.9237516   1.391034
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.9939091   0.7445121   1.326849
Birth       ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.9736842   0.6929101   1.368231
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.2628432   0.9266083   1.721086
Birth       ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.0298396   0.7133041   1.486841
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.8496732   0.4582271   1.575517
6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              1.2888889   0.7620445   2.179970
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.6363636   0.3475134   1.165304
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.8947368   0.4525056   1.769158
6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              0.7413648   0.2644592   2.078285
6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.6465386   0.1961174   2.131439
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.6555819   0.2633944   1.631727
6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4477825   0.6102174   3.434963
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.6610822   0.4300976   1.016118
6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8305556   0.5007825   1.377489
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2650138   0.6288106   2.544900
24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.1480000   0.5062497   2.603269
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.6761477   0.4412922   1.035993
24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8825670   0.5352269   1.455317


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0049451   -0.0712182   0.0613281
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                 0.0362880    0.0020845   0.0704915
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0023350   -0.0503134   0.0456434
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0246657   -0.0112863   0.0606178
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0123967   -0.0901578   0.0653644
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.0684211   -0.1939587   0.0571166
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0029796   -0.0140524   0.0080932
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0014259   -0.0188492   0.0159974
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0215338   -0.0500551   0.0069875
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0062461   -0.0131919   0.0256841
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0220626   -0.0534307   0.0093055


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0301003   -0.5237568   0.3036246
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                 0.1745413   -0.0039288   0.3212844
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0091776   -0.2165245   0.1628286
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.1608161   -0.1092095   0.3651067
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1000000   -0.9449871   0.3778879
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.3768116   -1.2718476   0.1656086
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.3533345   -2.5888223   0.4896615
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0457271   -0.7839164   0.3869975
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3666334   -0.9458509   0.0401697
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.1401303   -0.4251163   0.4811820
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.3317764   -0.8947679   0.0639337
