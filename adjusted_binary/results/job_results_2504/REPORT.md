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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=35             0       83     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=35             1       16     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0       11     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1        2     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [30-35)          0       31     145
Birth       ki0047075b-MAL-ED          BANGLADESH                     [30-35)          1        2     145
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=35             0       83     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=35             1       18     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0        9     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1        5     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)          0       28     150
6 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)          1        7     150
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35             0       59     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35             1       43     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          0        7     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)          1        7     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)          0       16     151
24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)          1       19     151
Birth       ki0047075b-MAL-ED          BRAZIL                         >=35             0       31      68
Birth       ki0047075b-MAL-ED          BRAZIL                         >=35             1        4      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <25              0        3      68
Birth       ki0047075b-MAL-ED          BRAZIL                         <25              1        0      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)          0        7      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        0      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [30-35)          0       20      68
Birth       ki0047075b-MAL-ED          BRAZIL                         [30-35)          1        3      68
6 months    ki0047075b-MAL-ED          BRAZIL                         >=35             0       40      79
6 months    ki0047075b-MAL-ED          BRAZIL                         <25              0        3      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)          0        8      79
6 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)          0       28      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=35             0       40      79
24 months   ki0047075b-MAL-ED          BRAZIL                         >=35             1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <25              0        3      79
24 months   ki0047075b-MAL-ED          BRAZIL                         <25              1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          0        8      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)          1        0      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)          0       27      79
24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)          1        1      79
Birth       ki0047075b-MAL-ED          INDIA                          >=35             0       49     131
Birth       ki0047075b-MAL-ED          INDIA                          >=35             1        8     131
Birth       ki0047075b-MAL-ED          INDIA                          <25              0        2     131
Birth       ki0047075b-MAL-ED          INDIA                          <25              1        0     131
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)          0       20     131
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)          1        4     131
Birth       ki0047075b-MAL-ED          INDIA                          [30-35)          0       40     131
Birth       ki0047075b-MAL-ED          INDIA                          [30-35)          1        8     131
6 months    ki0047075b-MAL-ED          INDIA                          >=35             0       57     161
6 months    ki0047075b-MAL-ED          INDIA                          >=35             1       14     161
6 months    ki0047075b-MAL-ED          INDIA                          <25              0        1     161
6 months    ki0047075b-MAL-ED          INDIA                          <25              1        2     161
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)          0       22     161
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)          1        5     161
6 months    ki0047075b-MAL-ED          INDIA                          [30-35)          0       51     161
6 months    ki0047075b-MAL-ED          INDIA                          [30-35)          1        9     161
24 months   ki0047075b-MAL-ED          INDIA                          >=35             0       45     161
24 months   ki0047075b-MAL-ED          INDIA                          >=35             1       26     161
24 months   ki0047075b-MAL-ED          INDIA                          <25              0        0     161
24 months   ki0047075b-MAL-ED          INDIA                          <25              1        3     161
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          0       15     161
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)          1       12     161
24 months   ki0047075b-MAL-ED          INDIA                          [30-35)          0       35     161
24 months   ki0047075b-MAL-ED          INDIA                          [30-35)          1       25     161
Birth       ki0047075b-MAL-ED          NEPAL                          >=35             0       28      61
Birth       ki0047075b-MAL-ED          NEPAL                          >=35             1        3      61
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)          0        6      61
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)          1        0      61
Birth       ki0047075b-MAL-ED          NEPAL                          [30-35)          0       22      61
Birth       ki0047075b-MAL-ED          NEPAL                          [30-35)          1        2      61
6 months    ki0047075b-MAL-ED          NEPAL                          >=35             0       37      79
6 months    ki0047075b-MAL-ED          NEPAL                          >=35             1        1      79
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          0        9      79
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)          1        1      79
6 months    ki0047075b-MAL-ED          NEPAL                          [30-35)          0       29      79
6 months    ki0047075b-MAL-ED          NEPAL                          [30-35)          1        2      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=35             0       28      79
24 months   ki0047075b-MAL-ED          NEPAL                          >=35             1       10      79
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          0        8      79
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)          1        2      79
24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)          0       24      79
24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)          1        7      79
Birth       ki0047075b-MAL-ED          PERU                           >=35             0       40      80
Birth       ki0047075b-MAL-ED          PERU                           >=35             1        2      80
Birth       ki0047075b-MAL-ED          PERU                           <25              0        3      80
Birth       ki0047075b-MAL-ED          PERU                           <25              1        1      80
Birth       ki0047075b-MAL-ED          PERU                           [25-30)          0       15      80
Birth       ki0047075b-MAL-ED          PERU                           [25-30)          1        2      80
Birth       ki0047075b-MAL-ED          PERU                           [30-35)          0       12      80
Birth       ki0047075b-MAL-ED          PERU                           [30-35)          1        5      80
6 months    ki0047075b-MAL-ED          PERU                           >=35             0       38      83
6 months    ki0047075b-MAL-ED          PERU                           >=35             1        7      83
6 months    ki0047075b-MAL-ED          PERU                           <25              0        3      83
6 months    ki0047075b-MAL-ED          PERU                           <25              1        2      83
6 months    ki0047075b-MAL-ED          PERU                           [25-30)          0       14      83
6 months    ki0047075b-MAL-ED          PERU                           [25-30)          1        3      83
6 months    ki0047075b-MAL-ED          PERU                           [30-35)          0        9      83
6 months    ki0047075b-MAL-ED          PERU                           [30-35)          1        7      83
24 months   ki0047075b-MAL-ED          PERU                           >=35             0       28      79
24 months   ki0047075b-MAL-ED          PERU                           >=35             1       14      79
24 months   ki0047075b-MAL-ED          PERU                           <25              0        3      79
24 months   ki0047075b-MAL-ED          PERU                           <25              1        2      79
24 months   ki0047075b-MAL-ED          PERU                           [25-30)          0       12      79
24 months   ki0047075b-MAL-ED          PERU                           [25-30)          1        4      79
24 months   ki0047075b-MAL-ED          PERU                           [30-35)          0       10      79
24 months   ki0047075b-MAL-ED          PERU                           [30-35)          1        6      79
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=35             0       56      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=35             1        7      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0        1      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1        0      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0        4      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        1      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)          0        6      76
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)          1        1      76
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35             0       64      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35             1       10      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1        0      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0        5      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        1      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)          0        7      89
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)          1        1      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35             0       51      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35             1       24      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25              0        1      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25              1        0      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          0        5      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)          1        1      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)          0        4      89
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)          1        3      89
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35             0       24      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35             1        3      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0        1      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1        0      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0        3      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1        0      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)          0       13      46
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)          1        2      46
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35             0       44     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35             1       21     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0        0     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1        2     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0        5     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1        1     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)          0       24     100
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)          1        3     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35             0       16     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35             1       49     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              0        0     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25              1        2     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          0        1     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)          1        5     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)          0        7     100
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)          1       20     100
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=35             0       78    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=35             1       44    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25              0      295    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25              1      100    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          0      397    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)          1      150    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)          0      185    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)          1       84    1333
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=35             0       15     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=35             1        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25              0       46     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25              1       18     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)          0       53     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)          1       19     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [30-35)          0       27     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [30-35)          1        5     187
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35             0       52     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35             1       38     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25              0       37     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25              1       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)          0       65     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)          1       49     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)          0       63     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)          1       44     380
Birth       ki1119695-PROBIT           BELARUS                        >=35             0     1351   13390
Birth       ki1119695-PROBIT           BELARUS                        >=35             1        1   13390
Birth       ki1119695-PROBIT           BELARUS                        <25              0     4394   13390
Birth       ki1119695-PROBIT           BELARUS                        <25              1       15   13390
Birth       ki1119695-PROBIT           BELARUS                        [25-30)          0     5049   13390
Birth       ki1119695-PROBIT           BELARUS                        [25-30)          1       12   13390
Birth       ki1119695-PROBIT           BELARUS                        [30-35)          0     2565   13390
Birth       ki1119695-PROBIT           BELARUS                        [30-35)          1        3   13390
6 months    ki1119695-PROBIT           BELARUS                        >=35             0     1425   15183
6 months    ki1119695-PROBIT           BELARUS                        >=35             1      100   15183
6 months    ki1119695-PROBIT           BELARUS                        <25              0     4794   15183
6 months    ki1119695-PROBIT           BELARUS                        <25              1      304   15183
6 months    ki1119695-PROBIT           BELARUS                        [25-30)          0     5338   15183
6 months    ki1119695-PROBIT           BELARUS                        [25-30)          1      355   15183
6 months    ki1119695-PROBIT           BELARUS                        [30-35)          0     2697   15183
6 months    ki1119695-PROBIT           BELARUS                        [30-35)          1      170   15183
24 months   ki1119695-PROBIT           BELARUS                        >=35             0      381    3909
24 months   ki1119695-PROBIT           BELARUS                        >=35             1       35    3909
24 months   ki1119695-PROBIT           BELARUS                        <25              0     1151    3909
24 months   ki1119695-PROBIT           BELARUS                        <25              1      105    3909
24 months   ki1119695-PROBIT           BELARUS                        [25-30)          0     1364    3909
24 months   ki1119695-PROBIT           BELARUS                        [25-30)          1      134    3909
24 months   ki1119695-PROBIT           BELARUS                        [30-35)          0      681    3909
24 months   ki1119695-PROBIT           BELARUS                        [30-35)          1       58    3909
6 months    ki1135781-COHORTS          GUATEMALA                      >=35             0      235     929
6 months    ki1135781-COHORTS          GUATEMALA                      >=35             1      149     929
6 months    ki1135781-COHORTS          GUATEMALA                      <25              0       87     929
6 months    ki1135781-COHORTS          GUATEMALA                      <25              1       50     929
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)          0      116     929
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)          1       76     929
6 months    ki1135781-COHORTS          GUATEMALA                      [30-35)          0      115     929
6 months    ki1135781-COHORTS          GUATEMALA                      [30-35)          1      101     929
24 months   ki1135781-COHORTS          GUATEMALA                      >=35             0       89    1024
24 months   ki1135781-COHORTS          GUATEMALA                      >=35             1      314    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <25              0       35    1024
24 months   ki1135781-COHORTS          GUATEMALA                      <25              1      127    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)          0       44    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)          1      189    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)          0       47    1024
24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)          1      179    1024
Birth       ki1135781-COHORTS          GUATEMALA                      >=35             0      316     823
Birth       ki1135781-COHORTS          GUATEMALA                      >=35             1       19     823
Birth       ki1135781-COHORTS          GUATEMALA                      <25              0      122     823
Birth       ki1135781-COHORTS          GUATEMALA                      <25              1        7     823
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)          0      168     823
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)          1       13     823
Birth       ki1135781-COHORTS          GUATEMALA                      [30-35)          0      167     823
Birth       ki1135781-COHORTS          GUATEMALA                      [30-35)          1       11     823
Birth       ki1135781-COHORTS          PHILIPPINES                    >=35             0      501    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    >=35             1       38    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <25              0      746    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    <25              1       58    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      902    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)          1       52    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [30-35)          0      615    2944
Birth       ki1135781-COHORTS          PHILIPPINES                    [30-35)          1       32    2944
6 months    ki1135781-COHORTS          PHILIPPINES                    >=35             0      371    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    >=35             1      125    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <25              0      544    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    <25              1      170    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      675    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)          1      159    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)          0      478    2624
6 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)          1      102    2624
24 months   ki1135781-COHORTS          PHILIPPINES                    >=35             0      167    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    >=35             1      276    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <25              0      230    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    <25              1      418    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)          0      304    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)          1      457    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)          0      201    2371
24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)          1      318    2371
6 months    ki1148112-LCNI-5           MALAWI                         >=35             0       28     106
6 months    ki1148112-LCNI-5           MALAWI                         >=35             1        8     106
6 months    ki1148112-LCNI-5           MALAWI                         <25              0       13     106
6 months    ki1148112-LCNI-5           MALAWI                         <25              1       10     106
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)          0       20     106
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)          1        7     106
6 months    ki1148112-LCNI-5           MALAWI                         [30-35)          0       12     106
6 months    ki1148112-LCNI-5           MALAWI                         [30-35)          1        8     106
24 months   ki1148112-LCNI-5           MALAWI                         >=35             0       16      74
24 months   ki1148112-LCNI-5           MALAWI                         >=35             1       12      74
24 months   ki1148112-LCNI-5           MALAWI                         <25              0       10      74
24 months   ki1148112-LCNI-5           MALAWI                         <25              1        6      74
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          0       11      74
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)          1        6      74
24 months   ki1148112-LCNI-5           MALAWI                         [30-35)          0        9      74
24 months   ki1148112-LCNI-5           MALAWI                         [30-35)          1        4      74


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e6117286-f777-43da-8cfc-2ca2eac6072c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e6117286-f777-43da-8cfc-2ca2eac6072c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e6117286-f777-43da-8cfc-2ca2eac6072c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e6117286-f777-43da-8cfc-2ca2eac6072c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.0268528   0.0134190   0.0402865
Birth       ki1135781-COHORTS          GUATEMALA     <25                  NA                0.0161798   0.0022479   0.0301117
Birth       ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.0309924   0.0123457   0.0496391
Birth       ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.0316465   0.0107945   0.0524986
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0536376   0.0346088   0.0726664
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0545772   0.0389599   0.0701945
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0629811   0.0479197   0.0780425
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0327464   0.0216375   0.0438554
6 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.1201693   0.0651089   0.1752298
6 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.0378536   0.0043038   0.0714035
6 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.0479226   0.0082759   0.0875693
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.0402856   0.0312907   0.0492806
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.1140856   0.0947805   0.1333908
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.2050593   0.1837643   0.2263543
6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.1346583   0.1011148   0.1682018
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.2000110   0.1535426   0.2464795
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.1588298   0.1192907   0.1983689
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.3213845   0.2708509   0.3719180
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.2430640   0.1933184   0.2928096
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0801211   0.0622450   0.0979972
6 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.0559663   0.0428197   0.0691128
6 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0650458   0.0516577   0.0784339
6 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0742879   0.0558016   0.0927741
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.3333070   0.2948054   0.3718086
6 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.2107944   0.1808273   0.2407616
6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.4065550   0.3653187   0.4477913
6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.5028892   0.4602613   0.5455170
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.1994860   0.1646786   0.2342933
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.1351415   0.1147456   0.1555373
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.1844462   0.1584087   0.2104838
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.1482446   0.1201507   0.1763385
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                0.6420619   0.5270047   0.7571191
6 months    ki1148112-LCNI-5           MALAWI        <25                  NA                0.8728649   0.7514319   0.9942979
6 months    ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.7847369   0.6671229   0.9023508
6 months    ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.8837389   0.7688720   0.9986059
24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.5920004   0.5121481   0.6718528
24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.9507531   0.9141325   0.9873736
24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.8830548   0.8279586   0.9381511
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.0301915   0.0187126   0.0416703
24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.0540325   0.0312081   0.0768569
24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0804289   0.0390408   0.1218170
24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0750987   0.0468469   0.1033506
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.7726025   0.7425256   0.8026793
24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.5156299   0.4870455   0.5442143
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.7199404   0.6895389   0.7503420
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.7907409   0.7616775   0.8198043
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.5171014   0.4763139   0.5578888
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.5096485   0.4762710   0.5430261
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.6105168   0.5787997   0.6422339
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.5856292   0.5477779   0.6234805


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0607533   0.0444233   0.0770834
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0611413   0.0524852   0.0697974
6 months    ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.2000000   0.1357734   0.2642266
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2835709   0.2656121   0.3015297
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0611869   0.0477477   0.0746260
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4047363   0.3731561   0.4363165
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2118902   0.1962516   0.2275288
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.3113208   0.2227550   0.3998865
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.4569536   0.3772355   0.5366718
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0849322   0.0549995   0.1148649
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.7900391   0.7650814   0.8149967
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.6195698   0.6000239   0.6391157


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.6025371   0.2219967   1.6353885
Birth       ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.1541602   0.5270725   2.5273292
Birth       ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.1785207   0.5170703   2.6861163
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  >=35              1.0175175   0.6452000   1.6046837
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              1.1741967   0.7662743   1.7992745
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.6105129   0.3740512   0.9964573
6 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              0.3150025   0.1131819   0.8766997
6 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              0.3987923   0.1507900   1.0546807
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              2.8319190   2.0175245   3.9750521
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              5.0901345   3.8547618   6.7214189
6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              3.3425890   2.2195122   5.0339444
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              0.7941053   0.5579928   1.1301278
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.6068337   1.2164718   2.1224616
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              1.2152529   0.9021530   1.6370168
6 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       <25                  >=35              0.6985206   0.5632590   0.8662641
6 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              0.8118428   0.6444280   1.0227500
6 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.9271946   0.7000688   1.2280076
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.6324333   0.5292179   0.7557792
6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.2197614   1.0521026   1.4141375
6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.5087868   1.3148634   1.7313110
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.6774484   0.5379529   0.8531163
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.9246075   0.7394125   1.1561868
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7431329   0.5749496   0.9605128
6 months    ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        <25                  >=35              1.3594716   1.0765492   1.7167473
6 months    ki1148112-LCNI-5           MALAWI        [25-30)              >=35              1.2222137   0.9575964   1.5599540
6 months    ki1148112-LCNI-5           MALAWI        [30-35)              >=35              1.3764077   1.0953746   1.7295436
24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              1.6060006   1.3869414   1.8596589
24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              1.4916456   1.2739117   1.7465939
24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.7896598   1.0305865   3.1078245
24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              2.6639617   1.8254357   3.8876702
24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              2.4874144   1.4896388   4.1535104
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.6673935   0.6259899   0.7115357
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9318381   0.8825945   0.9838292
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0234771   0.9727128   1.0768907
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9855872   0.8899500   1.0915020
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              1.1806520   1.0754758   1.2961138
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              1.1325230   1.0241448   1.2523700


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0339006    0.0203302    0.0474710
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0075037   -0.0108759    0.0258833
6 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.0798307    0.0359180    0.1237434
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.2432853    0.2189176    0.2676529
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.2289363    0.1789635    0.2789092
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0189343   -0.0341191   -0.0037494
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0714293    0.0389814    0.1038771
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0124043   -0.0210290    0.0458375
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.3307412   -0.4322452   -0.2292371
24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.1350468   -0.1906117   -0.0794819
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0547407    0.0297492    0.0797322
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0174366   -0.0080142    0.0428874
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.1024684    0.0630421    0.1418947


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.5580034    0.3395282    0.7042099
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.1227275   -0.2326116    0.3756289
6 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.3991533    0.1815544    0.5588995
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.8579345    0.8147220    0.8910686
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.5337166    0.4270039    0.6205556
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.3094501   -0.6113078   -0.0641415
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.1764835    0.0952272    0.2504423
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0585410   -0.1125700    0.2033354
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                -1.0623807   -1.6300520   -0.6172357
24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                -0.2955372   -0.4518670   -0.1560402
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.6445226    0.5035741    0.7454521
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0220705   -0.0104802    0.0535727
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.1653864    0.1000327    0.2259943
