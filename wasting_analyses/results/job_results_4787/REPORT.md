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
![](/tmp/3fdb27ce-d8f9-4405-9c9e-e62ba8e94dbf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fdb27ce-d8f9-4405-9c9e-e62ba8e94dbf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fdb27ce-d8f9-4405-9c9e-e62ba8e94dbf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fdb27ce-d8f9-4405-9c9e-e62ba8e94dbf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                0.1692308   0.0777504   0.2607111
Birth       ki0047075b-MAL-ED          BANGLADESH    <32                  NA                0.2400000   0.0719854   0.4080146
Birth       ki0047075b-MAL-ED          BANGLADESH    [32-38)              NA                0.1200000   0.0296035   0.2103965
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                0.0854203   0.0622294   0.1086111
Birth       ki1119695-PROBIT           BELARUS       <32                  NA                0.2113670   0.1466022   0.2761317
Birth       ki1119695-PROBIT           BELARUS       [32-38)              NA                0.1716961   0.1320767   0.2113155
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.4047370   0.3583281   0.4511459
Birth       ki1135781-COHORTS          GUATEMALA     <32                  NA                0.3147165   0.2775575   0.3518755
Birth       ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.2690629   0.2245989   0.3135270
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.1927552   0.1583749   0.2271354
Birth       ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.1671298   0.1506442   0.1836154
Birth       ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.1681337   0.1401244   0.1961430
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                0.1363636   0.0538801   0.2188472
6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  NA                0.1158645   0.0916826   0.1400465
6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              NA                0.1757576   0.1320926   0.2194226
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                0.6648179   0.5267020   0.8029338
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  NA                0.2704079   0.1956998   0.3451160
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              NA                0.0835685   0.0307462   0.1363908
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                0.0114123   0.0003147   0.0225098
6 months    ki1119695-PROBIT           BELARUS       <32                  NA                0.0084607   0.0064263   0.0104950
6 months    ki1119695-PROBIT           BELARUS       [32-38)              NA                0.0073785   0.0038513   0.0109056
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0326087   0.0116437   0.0535737
6 months    ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0213777   0.0075538   0.0352015
6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0472103   0.0199632   0.0744574
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0404809   0.0249405   0.0560212
6 months    ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0497603   0.0382457   0.0612748
6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0454235   0.0285759   0.0622711
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                0.0416571   0.0197424   0.0635718
24 months   ki1135781-COHORTS          GUATEMALA     <32                  NA                0.0523643   0.0331933   0.0715353
24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              NA                0.0469884   0.0218857   0.0720912
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                0.0634310   0.0431341   0.0837279
24 months   ki1135781-COHORTS          PHILIPPINES   <32                  NA                0.0520562   0.0419188   0.0621936
24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              NA                0.0922405   0.0681005   0.1163805


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


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH    <32                  >=38              1.4181818   0.5856109   3.4344303
Birth       ki0047075b-MAL-ED          BANGLADESH    [32-38)              >=38              0.7090909   0.2805621   1.7921519
Birth       ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       <32                  >=38              2.4744361   2.0126492   3.0421765
Birth       ki1119695-PROBIT           BELARUS       [32-38)              >=38              2.0100161   1.6429690   2.4590633
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.7775827   0.6582450   0.9185561
Birth       ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              0.6647846   0.5441384   0.8121806
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.8670575   0.7072097   1.0630352
Birth       ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              0.8722654   0.6836449   1.1129272
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <32                  >=38              0.8496732   0.4582271   1.5755168
6 months    ki1000304b-SAS-CompFeed    INDIA         [32-38)              >=38              1.2888889   0.7620445   2.1799704
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <32                  >=38              0.4067398   0.2851509   0.5801747
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [32-38)              >=38              0.1257014   0.0641557   0.2462887
6 months    ki1119695-PROBIT           BELARUS       >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       <32                  >=38              0.7413648   0.2644592   2.0782853
6 months    ki1119695-PROBIT           BELARUS       [32-38)              >=38              0.6465386   0.1961174   2.1314386
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     <32                  >=38              0.6555819   0.2633944   1.6317271
6 months    ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.4477825   0.6102174   3.4349634
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   <32                  >=38              1.2292296   0.7849533   1.9249622
6 months    ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.1220977   0.6586877   1.9115330
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     <32                  >=38              1.2570321   0.6623440   2.3856630
24 months   ki1135781-COHORTS          GUATEMALA     [32-38)              >=38              1.1279803   0.5336780   2.3840959
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   <32                  >=38              0.8206741   0.5643099   1.1935038
24 months   ki1135781-COHORTS          PHILIPPINES   [32-38)              >=38              1.4541857   0.9622135   2.1976996


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0049451   -0.0712182    0.0613281
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                 0.1224849    0.0723900    0.1725799
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.1503152   -0.1929172   -0.1077133
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.0393765   -0.0736512   -0.0051019
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.0123967   -0.0901578    0.0653644
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -0.4832389   -0.6210553   -0.3454225
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.0029796   -0.0140524    0.0080932
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0014259   -0.0188492    0.0159974
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0182529    0.0028610    0.0336449
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0029165   -0.0163124    0.0221454
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0030673   -0.0167892    0.0229238


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    >=38                 NA                -0.0301003   -0.5237568    0.3036246
Birth       ki1119695-PROBIT           BELARUS       >=38                 NA                 0.5891384    0.4944955    0.6660618
Birth       ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.5908112   -0.8021068   -0.4042898
Birth       ki1135781-COHORTS          PHILIPPINES   >=38                 NA                -0.2567277   -0.5075602   -0.0476295
6 months    ki1000304b-SAS-CompFeed    INDIA         >=38                 NA                -0.1000000   -0.9449871    0.3778879
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=38                 NA                -2.6613159   -3.8207374   -1.7807435
6 months    ki1119695-PROBIT           BELARUS       >=38                 NA                -0.3533345   -2.5888223    0.4896615
6 months    ki1135781-COHORTS          GUATEMALA     >=38                 NA                -0.0457271   -0.7839164    0.3869975
6 months    ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.3107741    0.0049509    0.5226041
24 months   ki1135781-COHORTS          GUATEMALA     >=38                 NA                 0.0654315   -0.4805046    0.4100537
24 months   ki1135781-COHORTS          PHILIPPINES   >=38                 NA                 0.0461261   -0.3026283    0.3015080
