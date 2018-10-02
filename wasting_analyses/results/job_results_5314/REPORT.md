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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        fage       wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0       12     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       22     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0        5     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1       16     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0       11     76
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1       10     76
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0        0      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0        0      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        2      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0        2      6
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        2      6
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0        6    122
0-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        9    122
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       24    122
0-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       27    122
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       17    122
0-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       39    122
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0        1     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        5     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0        2     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        7     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0        1     32
0-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1       16     32
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0        0     10
0-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1     10
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  0        1     10
0-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        4     10
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0        1     10
0-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        3     10
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0        4     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       13     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        7     26
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        2     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        6     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        1     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        3     17
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        2     17
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       23    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1       13    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      418    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      247    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       60    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       50    811
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       25    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        2    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0      149    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        8    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       47    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        3    234
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0       25   4253
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1      141   4253
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  0      476   4253
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  1     2984   4253
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0       94   4253
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1      533   4253
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0       59    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       51    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0       86    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1       74    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0       57    366
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       39    366
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0       83   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1      114   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0      429   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      703   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0      123   1620
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1      168   1620
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0        2     14
0-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        0     14
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0        7     14
0-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        2     14
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0        3     14
0-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        0     14
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 0        4     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=38                 1       14     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  0        0     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <32                  1        8     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0        4     36
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        6     36
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <32                  1        2      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              0        0      3
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      3
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 0        3     54
0-6 months    ki0047075b-MAL-ED          INDIA                          >=38                 1        4     54
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  0        6     54
0-6 months    ki0047075b-MAL-ED          INDIA                          <32                  1       13     54
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              0        6     54
0-6 months    ki0047075b-MAL-ED          INDIA                          [32-38)              1       22     54
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 0        0     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=38                 1        0     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  0        2     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          <32                  1        2     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              0        0     12
0-6 months    ki0047075b-MAL-ED          NEPAL                          [32-38)              1        8     12
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 0        0      3
0-6 months    ki0047075b-MAL-ED          PERU                           >=38                 1        0      3
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  0        0      3
0-6 months    ki0047075b-MAL-ED          PERU                           <32                  1        2      3
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              0        0      3
0-6 months    ki0047075b-MAL-ED          PERU                           [32-38)              1        1      3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0        1      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1        3      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        0      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        2      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0        0      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        3      9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        3      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        1      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        1      5
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 0        8    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        7    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  0      132    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  1      140    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       25    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       28    340
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       12     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       51     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       15     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        0     78
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 0       21   4088
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 1      138   4088
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  0      372   4088
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  1     2954   4088
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              0       76   4088
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              1      527   4088
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 0       19    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 1       49    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  0       18    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  1       71    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              0       14    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              1       36    207
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 0       21    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=38                 1       56    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  0      129    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <32                  1      381    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              0       37    715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [32-38)              1       91    715
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 0        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         >=38                 1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  0        1      1
0-6 months    ki1148112-LCNI-5           MALAWI                         <32                  1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              0        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         [32-38)              1        0      1
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 0        8     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=38                 1        8     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  0        5     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <32                  1        8     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              0        7     40
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [32-38)              1        4     40
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 0        0      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=38                 1        0      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  0        0      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <32                  1        0      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              0        2      3
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [32-38)              1        1      3
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 0        3     68
6-24 months   ki0047075b-MAL-ED          INDIA                          >=38                 1        5     68
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  0       18     68
6-24 months   ki0047075b-MAL-ED          INDIA                          <32                  1       14     68
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              0       11     68
6-24 months   ki0047075b-MAL-ED          INDIA                          [32-38)              1       17     68
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 0        1     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=38                 1        5     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  0        0     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          <32                  1        5     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              0        1     20
6-24 months   ki0047075b-MAL-ED          NEPAL                          [32-38)              1        8     20
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 0        0      7
6-24 months   ki0047075b-MAL-ED          PERU                           >=38                 1        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  0        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           <32                  1        2      7
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              0        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           [32-38)              1        2      7
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 0        3     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=38                 1       10     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  0        0     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <32                  1        0     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              0        0     17
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [32-38)              1        4     17
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 0        2     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=38                 1        3     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  0        1     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <32                  1        3     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              0        2     12
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [32-38)              1        1     12
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0       15    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        6    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      286    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1      107    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       35    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       22    471
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0       13    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       98    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        8    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       32    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        3    156
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0        4    165
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1        3    165
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  0      104    165
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  1       30    165
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0       18    165
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1        6    165
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0       40    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1        2    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0       68    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1        3    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0       43    159
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1        3    159
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 0       62    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=38                 1       58    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  0      300    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <32                  1      322    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              0       86    905
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [32-38)              1       77    905
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 0        2     13
6-24 months   ki1148112-LCNI-5           MALAWI                         >=38                 1        0     13
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  0        6     13
6-24 months   ki1148112-LCNI-5           MALAWI                         <32                  1        2     13
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              0        3     13
6-24 months   ki1148112-LCNI-5           MALAWI                         [32-38)              1        0     13


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fb1151f7-79a3-4d37-b1a4-175e408240ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb1151f7-79a3-4d37-b1a4-175e408240ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb1151f7-79a3-4d37-b1a4-175e408240ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb1151f7-79a3-4d37-b1a4-175e408240ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                0.6470588   0.4719757   0.8221420
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <32                  NA                0.7619048   0.5675039   0.9563056
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [32-38)              NA                0.4761905   0.2868777   0.6655032
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                0.6000000   0.3336484   0.8663516
0-24 months   ki0047075b-MAL-ED         INDIA         <32                  NA                0.5294118   0.3739682   0.6848553
0-24 months   ki0047075b-MAL-ED         INDIA         [32-38)              NA                0.6964286   0.5644321   0.8284250
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.3780403   0.2595277   0.4965529
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.3701821   0.3317277   0.4086365
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.4392459   0.3573411   0.5211507
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                0.8494338   0.7952411   0.9036265
0-24 months   ki1119695-PROBIT          BELARUS       <32                  NA                0.8625159   0.8511840   0.8738477
0-24 months   ki1119695-PROBIT          BELARUS       [32-38)              NA                0.8492696   0.8220069   0.8765322
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                0.5095961   0.4218226   0.5973696
0-24 months   ki1135781-COHORTS         GUATEMALA     <32                  NA                0.4782854   0.3989179   0.5576530
0-24 months   ki1135781-COHORTS         GUATEMALA     [32-38)              NA                0.4594957   0.3689617   0.5500297
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.4756606   0.4255994   0.5257217
0-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.6511913   0.6223531   0.6800294
0-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.6547416   0.6151060   0.6943773
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.4666667   0.2061538   0.7271796
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.5147059   0.4543062   0.5751055
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.5283019   0.3989989   0.6576049
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                0.8688552   0.8168291   0.9208814
0-6 months    ki1119695-PROBIT          BELARUS       <32                  NA                0.8882093   0.8774482   0.8989704
0-6 months    ki1119695-PROBIT          BELARUS       [32-38)              NA                0.8736931   0.8475462   0.8998400
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                0.7581888   0.6611094   0.8552681
0-6 months    ki1135781-COHORTS         GUATEMALA     <32                  NA                0.8078975   0.7269364   0.8888586
0-6 months    ki1135781-COHORTS         GUATEMALA     [32-38)              NA                0.7546441   0.6435358   0.8657525
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.8351422   0.7858721   0.8844124
0-6 months    ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.7826390   0.7486397   0.8166383
0-6 months    ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.8488662   0.8035493   0.8941831
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                0.2857143   0.0723858   0.4990428
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  NA                0.2722646   0.2273817   0.3171476
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              NA                0.3859649   0.2542449   0.5176849
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                0.3024776   0.2541024   0.3508528
6-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  NA                0.5323433   0.4937784   0.5709082
6-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              NA                0.4135688   0.3656680   0.4614695


### Parameter: E(Y)


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    NA                   NA                0.6315789   0.5193816   0.7437763
0-24 months   ki0047075b-MAL-ED         INDIA         NA                   NA                0.6147541   0.5199078   0.7096004
0-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.3822441   0.3470990   0.4173892
0-24 months   ki1119695-PROBIT          BELARUS       NA                   NA                0.8600988   0.8497563   0.8704412
0-24 months   ki1135781-COHORTS         GUATEMALA     NA                   NA                0.4480874   0.3954108   0.5007641
0-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.6080247   0.5830213   0.6330281
0-6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1119695-PROBIT          BELARUS       NA                   NA                0.8852740   0.8754291   0.8951189
0-6 months    ki1135781-COHORTS         GUATEMALA     NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.7384615   0.7062339   0.7706892
6-24 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.5049724   0.4705318   0.5394130


### Parameter: RR


agecat        studyid                   country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH    <32                  >=38              1.1774892   0.8118096   1.707889
0-24 months   ki0047075b-MAL-ED         BANGLADESH    [32-38)              >=38              0.7359307   0.4549883   1.190347
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         INDIA         <32                  >=38              0.8823529   0.5176350   1.504046
0-24 months   ki0047075b-MAL-ED         INDIA         [32-38)              >=38              1.1607143   0.7166205   1.880016
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              0.9792133   0.7041061   1.361810
0-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.1619023   0.8071781   1.672514
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT          BELARUS       <32                  >=38              1.0154009   0.9514387   1.083663
0-24 months   ki1119695-PROBIT          BELARUS       [32-38)              >=38              0.9998067   0.9309699   1.073733
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         GUATEMALA     <32                  >=38              0.9385579   0.7417289   1.187618
0-24 months   ki1135781-COHORTS         GUATEMALA     [32-38)              >=38              0.9016862   0.6977183   1.165281
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.3690252   1.2218837   1.533886
0-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.3764892   1.2189492   1.554390
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              1.1029412   0.6234654   1.951158
0-6 months    ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.1320755   0.6153979   2.082547
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS       <32                  >=38              1.0222753   0.9617447   1.086616
0-6 months    ki1119695-PROBIT          BELARUS       [32-38)              >=38              1.0055681   0.9405178   1.075117
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         GUATEMALA     <32                  >=38              1.0655624   0.9063997   1.252674
0-6 months    ki1135781-COHORTS         GUATEMALA     [32-38)              >=38              0.9953249   0.8196262   1.208687
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS         PHILIPPINES   <32                  >=38              0.9371326   0.8706527   1.008689
0-6 months    ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.0164331   0.9389791   1.100276
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA         <32                  >=38              0.9529262   0.4435900   2.047089
6-24 months   ki1000304b-SAS-CompFeed   INDIA         [32-38)              >=38              1.3508772   0.5944071   3.070066
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         PHILIPPINES   <32                  >=38              1.7599429   1.4781637   2.095437
6-24 months   ki1135781-COHORTS         PHILIPPINES   [32-38)              >=38              1.3672707   1.1239211   1.663310


### Parameter: PAR


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                -0.0154799   -0.1412234    0.1102637
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                 0.0147541   -0.2355840    0.2650922
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0042038   -0.1123048    0.1207125
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0106650   -0.0423071    0.0636371
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0615086   -0.1346241    0.0116068
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.1323641    0.0820787    0.1826496
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0480392   -0.2064266    0.3025050
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0164187   -0.0344348    0.0672723
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0045656   -0.0825412    0.0734100
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                -0.0966807   -0.1486065   -0.0447549
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0009099   -0.2069616    0.2087814
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.2024948    0.1520048    0.2529847


### Parameter: PAF


agecat        studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH    >=38                 NA                -0.0245098   -0.2439004    0.1561862
0-24 months   ki0047075b-MAL-ED         INDIA         >=38                 NA                 0.0240000   -0.4812659    0.3569176
0-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0109978   -0.3458673    0.2732379
0-24 months   ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0123997   -0.0511533    0.0721102
0-24 months   ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.1372693   -0.3146478    0.0161765
0-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.2176953    0.1325074    0.2945178
0-6 months    ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0933333   -0.5644012    0.4745309
0-6 months    ki1119695-PROBIT          BELARUS       >=38                 NA                 0.0185465   -0.0406173    0.0743465
0-6 months    ki1135781-COHORTS         GUATEMALA     >=38                 NA                -0.0060582   -0.1150405    0.0922724
0-6 months    ki1135781-COHORTS         PHILIPPINES   >=38                 NA                -0.1309218   -0.2060505   -0.0604731
6-24 months   ki1000304b-SAS-CompFeed   INDIA         >=38                 NA                 0.0031746   -1.0634622    0.5184497
6-24 months   ki1135781-COHORTS         PHILIPPINES   >=38                 NA                 0.4010017    0.3010104    0.4866891
