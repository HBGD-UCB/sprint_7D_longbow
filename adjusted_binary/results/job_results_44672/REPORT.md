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

unadjusted

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0        1    242
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        2    242
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0      144    242
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1       60    242
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       17    242
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       18    242
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0        5     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        0     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       40     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        3     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0       13     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        1     62
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0       16   2106
0-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1       73   2106
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  0      235   2106
0-24 months   ki1119695-PROBIT           BELARUS                        <32                  1     1484   2106
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0       40   2106
0-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1      258   2106
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0       40    227
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1       27    227
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0       60    227
0-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1       40    227
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0       36    227
0-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1       24    227
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
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 0        0    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        1    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  0       51    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <32                  1       35    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0       10    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1       11    108
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0        2     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        0     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       12     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        0     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0        4     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        0     18
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 0       14   2041
0-6 months    ki1119695-PROBIT           BELARUS                        >=38                 1       72   2041
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  0      192   2041
0-6 months    ki1119695-PROBIT           BELARUS                        <32                  1     1473   2041
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              0       32   2041
0-6 months    ki1119695-PROBIT           BELARUS                        [32-38)              1      258   2041
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 0       16    123
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=38                 1       26    123
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  0       11    123
0-6 months    ki1135781-COHORTS          GUATEMALA                      <32                  1       38    123
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              0       10    123
0-6 months    ki1135781-COHORTS          GUATEMALA                      [32-38)              1       22    123
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
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 0        1    134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=38                 1        1    134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  0       93    134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <32                  1       25    134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              0        7    134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [32-38)              1        7    134
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 0        3     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=38                 1        0     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  0       28     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <32                  1        3     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              0        9     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [32-38)              1        1     44
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 0        2     65
6-24 months   ki1119695-PROBIT           BELARUS                        >=38                 1        1     65
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  0       43     65
6-24 months   ki1119695-PROBIT           BELARUS                        <32                  1       11     65
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              0        8     65
6-24 months   ki1119695-PROBIT           BELARUS                        [32-38)              1        0     65
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 0       24    104
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=38                 1        1    104
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  0       49    104
6-24 months   ki1135781-COHORTS          GUATEMALA                      <32                  1        2    104
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              0       26    104
6-24 months   ki1135781-COHORTS          GUATEMALA                      [32-38)              1        2    104
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
![](/tmp/df8c02a6-bc47-4bd4-bce5-99a044c7a230/6b3e60c7-5887-4cc0-a404-c1abfbc03387/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/df8c02a6-bc47-4bd4-bce5-99a044c7a230/6b3e60c7-5887-4cc0-a404-c1abfbc03387/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/df8c02a6-bc47-4bd4-bce5-99a044c7a230/6b3e60c7-5887-4cc0-a404-c1abfbc03387/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/df8c02a6-bc47-4bd4-bce5-99a044c7a230/6b3e60c7-5887-4cc0-a404-c1abfbc03387/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED   BANGLADESH    >=38                 NA                0.6470588   0.4719757   0.8221420
0-24 months   ki0047075b-MAL-ED   BANGLADESH    <32                  NA                0.7619048   0.5675039   0.9563056
0-24 months   ki0047075b-MAL-ED   BANGLADESH    [32-38)              NA                0.4761905   0.2868777   0.6655032
0-24 months   ki0047075b-MAL-ED   INDIA         >=38                 NA                0.6000000   0.3336484   0.8663516
0-24 months   ki0047075b-MAL-ED   INDIA         <32                  NA                0.5294118   0.3739682   0.6848553
0-24 months   ki0047075b-MAL-ED   INDIA         [32-38)              NA                0.6964286   0.5644321   0.8284250
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                0.8202247   0.7390218   0.9014277
0-24 months   ki1119695-PROBIT    BELARUS       <32                  NA                0.8632926   0.8471388   0.8794465
0-24 months   ki1119695-PROBIT    BELARUS       [32-38)              NA                0.8657718   0.8271236   0.9044200
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                0.4029851   0.2801180   0.5258522
0-24 months   ki1135781-COHORTS   GUATEMALA     <32                  NA                0.4000000   0.2988093   0.5011907
0-24 months   ki1135781-COHORTS   GUATEMALA     [32-38)              NA                0.4000000   0.2725938   0.5274062
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.5786802   0.5085776   0.6487828
0-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.6210247   0.5908047   0.6512448
0-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.5773196   0.5199854   0.6346537
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                0.8372093   0.7585214   0.9158972
0-6 months    ki1119695-PROBIT    BELARUS       <32                  NA                0.8846847   0.8692058   0.9001635
0-6 months    ki1119695-PROBIT    BELARUS       [32-38)              NA                0.8896552   0.8532465   0.9260639
0-6 months    ki1135781-COHORTS   GUATEMALA     >=38                 NA                0.6190476   0.4715811   0.7665141
0-6 months    ki1135781-COHORTS   GUATEMALA     <32                  NA                0.7755102   0.6582057   0.8928147
0-6 months    ki1135781-COHORTS   GUATEMALA     [32-38)              NA                0.6875000   0.5262473   0.8487527
0-6 months    ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.7272727   0.6287266   0.8258189
0-6 months    ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.7470588   0.7093834   0.7847342
0-6 months    ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.7109375   0.6314136   0.7904614
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                0.4833333   0.3891595   0.5775072
6-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  NA                0.5176849   0.4756795   0.5596903
6-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              NA                0.4723926   0.3949587   0.5498266


### Parameter: E(Y)


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED   BANGLADESH    NA                   NA                0.6315789   0.5193816   0.7437763
0-24 months   ki0047075b-MAL-ED   INDIA         NA                   NA                0.6147541   0.5199078   0.7096004
0-24 months   ki1119695-PROBIT    BELARUS       NA                   NA                0.8618234   0.8471362   0.8765105
0-24 months   ki1135781-COHORTS   GUATEMALA     NA                   NA                0.4008811   0.3342964   0.4674657
0-24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.6080247   0.5830213   0.6330281
0-6 months    ki1119695-PROBIT    BELARUS       NA                   NA                0.8833905   0.8693407   0.8974403
0-6 months    ki1135781-COHORTS   GUATEMALA     NA                   NA                0.6991870   0.6178078   0.7805661
0-6 months    ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.7384615   0.7062339   0.7706892
6-24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.5049724   0.4705318   0.5394130


### Parameter: RR


agecat        studyid             country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED   BANGLADESH    >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED   BANGLADESH    <32                  >=38              1.1774892   0.8118096   1.707889
0-24 months   ki0047075b-MAL-ED   BANGLADESH    [32-38)              >=38              0.7359307   0.4549883   1.190347
0-24 months   ki0047075b-MAL-ED   INDIA         >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED   INDIA         <32                  >=38              0.8823529   0.5176350   1.504046
0-24 months   ki0047075b-MAL-ED   INDIA         [32-38)              >=38              1.1607143   0.7166205   1.880016
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT    BELARUS       <32                  >=38              1.0525074   0.9516307   1.164078
0-24 months   ki1119695-PROBIT    BELARUS       [32-38)              >=38              1.0555300   0.9469049   1.176616
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS   GUATEMALA     <32                  >=38              0.9925926   0.6678433   1.475256
0-24 months   ki1135781-COHORTS   GUATEMALA     [32-38)              >=38              0.9925926   0.6386175   1.542770
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  >=38              1.0731743   0.9418273   1.222839
0-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              0.9976488   0.8529894   1.166841
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT    BELARUS       <32                  >=38              1.0567067   0.9603611   1.162718
0-6 months    ki1119695-PROBIT    BELARUS       [32-38)              >=38              1.0626437   0.9591078   1.177356
0-6 months    ki1135781-COHORTS   GUATEMALA     >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS   GUATEMALA     <32                  >=38              1.2527473   0.9447428   1.661167
0-6 months    ki1135781-COHORTS   GUATEMALA     [32-38)              >=38              1.1105769   0.7949902   1.551442
0-6 months    ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS   PHILIPPINES   <32                  >=38              1.0272059   0.8889263   1.186996
0-6 months    ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              0.9775391   0.8200225   1.165313
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 >=38              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS   PHILIPPINES   <32                  >=38              1.0710722   0.8672718   1.322764
6-24 months   ki1135781-COHORTS   PHILIPPINES   [32-38)              >=38              0.9773641   0.7576601   1.260777


### Parameter: PAR


agecat        studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED   BANGLADESH    >=38                 NA                -0.0154799   -0.1412234   0.1102637
0-24 months   ki0047075b-MAL-ED   INDIA         >=38                 NA                 0.0147541   -0.2355840   0.2650922
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                 0.0415986   -0.0374708   0.1206681
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                -0.0021040   -0.1051805   0.1009725
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0293445   -0.0365766   0.0952656
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                 0.0461812   -0.0304156   0.1227780
0-6 months    ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.0801394   -0.0361265   0.1964053
0-6 months    ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0111888   -0.0818684   0.1042461
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0216390   -0.0661150   0.1093931


### Parameter: PAF


agecat        studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED   BANGLADESH    >=38                 NA                -0.0245098   -0.2439004   0.1561862
0-24 months   ki0047075b-MAL-ED   INDIA         >=38                 NA                 0.0240000   -0.4812659   0.3569176
0-24 months   ki1119695-PROBIT    BELARUS       >=38                 NA                 0.0482682   -0.0480995   0.1357753
0-24 months   ki1135781-COHORTS   GUATEMALA     >=38                 NA                -0.0052485   -0.2982487   0.2216249
0-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0482620   -0.0665554   0.1507190
0-6 months    ki1119695-PROBIT    BELARUS       >=38                 NA                 0.0522772   -0.0385790   0.1351852
0-6 months    ki1135781-COHORTS   GUATEMALA     >=38                 NA                 0.1146179   -0.0703139   0.2675967
0-6 months    ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0151515   -0.1192843   0.1334404
6-24 months   ki1135781-COHORTS   PHILIPPINES   >=38                 NA                 0.0428519   -0.1477224   0.2017822
