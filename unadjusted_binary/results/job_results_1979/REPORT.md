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
      W: []
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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/fbba839f-218b-496d-8916-6c84ce33f86a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fbba839f-218b-496d-8916-6c84ce33f86a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fbba839f-218b-496d-8916-6c84ce33f86a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fbba839f-218b-496d-8916-6c84ce33f86a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.0567164   0.0319328   0.0815001
Birth       ki1135781-COHORTS          GUATEMALA     <25                  NA                0.0542636   0.0151474   0.0933797
Birth       ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.0718232   0.0341857   0.1094607
Birth       ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.0617978   0.0264032   0.0971923
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0705009   0.0488862   0.0921156
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0721393   0.0542530   0.0900256
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0545073   0.0400993   0.0689154
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0494590   0.0327490   0.0661691
6 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.1782178   0.1033330   0.2531026
6 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.3571429   0.1053086   0.6089771
6 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.2000000   0.0670383   0.3329617
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.3606557   0.2897206   0.4315909
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.2531646   0.2109382   0.2953909
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.2742230   0.2426029   0.3058432
6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.3122677   0.2462228   0.3783125
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.4222222   0.3200460   0.5243985
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.4637681   0.3459472   0.5815891
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.4298246   0.3388295   0.5208196
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.4112150   0.3178592   0.5045707
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0655738   0.0442644   0.0868831
6 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.0596312   0.0443241   0.0749384
6 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0623573   0.0481129   0.0766017
6 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0592954   0.0429924   0.0755985
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.3880208   0.3392554   0.4367863
6 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.3649635   0.2843058   0.4456212
6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.3958333   0.3266238   0.4650429
6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.4675926   0.4010176   0.5341676
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.2520161   0.2137997   0.2902326
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.2380952   0.2068483   0.2693422
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.1906475   0.1639831   0.2173119
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.1758621   0.1448734   0.2068507
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                0.2222222   0.0857713   0.3586732
6 months    ki1148112-LCNI-5           MALAWI        <25                  NA                0.4347826   0.2312255   0.6383397
6 months    ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.2592593   0.0931764   0.4253421
6 months    ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.4000000   0.1842767   0.6157233
24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.4215686   0.3254183   0.5177190
24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.5000000   0.2372172   0.7627828
24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.5428571   0.3772704   0.7084439
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.0841346   0.0336840   0.1345852
24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.0835987   0.0427711   0.1244264
24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0894526   0.0521272   0.1267781
24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0784844   0.0387508   0.1182181
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.7791563   0.7386370   0.8196757
24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.7839506   0.7205456   0.8473556
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.8111588   0.7608801   0.8614374
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.7920354   0.7390967   0.8449741
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.6230248   0.5778864   0.6681633
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.6450617   0.6082124   0.6819110
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.6005256   0.5657193   0.6353319
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.6127168   0.5707988   0.6546347


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
Birth       ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.9567523   0.4118198   2.2227564
Birth       ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.2663565   0.6400741   2.5054267
Birth       ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0895920   0.5301449   2.2394077
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  >=35              1.0232391   0.6898198   1.5178141
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7731436   0.5157693   1.1589502
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7015375   0.4445433   1.1071021
6 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              2.0039683   0.8818724   4.5538207
6 months    ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              1.1222222   0.5111182   2.4639754
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.7019563   0.5167559   0.9535307
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.7603457   0.5958781   0.9702078
6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              0.8658331   0.6456315   1.1611373
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.0983982   0.7733609   1.5600459
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.0180055   0.7380950   1.4040676
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              0.9739302   0.6989107   1.3571691
6 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS       <25                  >=35              0.9093762   0.6750939   1.2249631
6 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              0.9509485   0.6999002   1.2920459
6 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.9042553   0.6865399   1.1910125
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.9405771   0.7294247   1.2128535
6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.0201342   0.8225117   1.2652390
6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.2050708   0.9966326   1.4571023
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9447619   0.7730833   1.1545651
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7564892   0.6154752   0.9298115
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.6978207   0.5530703   0.8804553
6 months    ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        <25                  >=35              1.9565217   0.9039436   4.2347526
6 months    ki1148112-LCNI-5           MALAWI        [25-30)              >=35              1.1666667   0.4803650   2.8334932
6 months    ki1148112-LCNI-5           MALAWI        [30-35)              >=35              1.8000000   0.7949660   4.0756458
24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              1.1860465   0.6687830   2.1033822
24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              1.2877076   0.8798481   1.8846332
24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              0.9936306   0.4644267   2.1258503
24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0632081   0.7261014   1.5568230
24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.9328436   0.4405351   1.9753185
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              1.0061532   0.9139121   1.1077041
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.0410732   0.9601577   1.1288078
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0165295   0.9339873   1.1063664
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              1.0353708   0.9441192   1.1354422
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.9638871   0.8784796   1.0575981
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.9834548   0.8901812   1.0865017


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0040369   -0.0154787    0.0235525
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0093596   -0.0286223    0.0099031
6 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.0217822   -0.0249194    0.0684838
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0770848   -0.1531822   -0.0009875
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.0067251   -0.0825917    0.0960420
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0043869   -0.0205015    0.0117276
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0167154   -0.0208271    0.0542579
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0401259   -0.0740806   -0.0061712
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0890985   -0.0284429    0.2066400
24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.0353850   -0.0203831    0.0911531
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0007976   -0.0400691    0.0416643
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0108827   -0.0203008    0.0420663
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0034550   -0.0441755    0.0372654


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0664478   -0.3163522    0.3379281
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1530818   -0.5145436    0.1221133
6 months    ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.1089109   -0.1561578    0.3132081
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.2718362   -0.5796006   -0.0240357
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.0156783   -0.2162123    0.2033551
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0716970   -0.3702063    0.1617798
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0412996   -0.0561127    0.1297269
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1893711   -0.3606631   -0.0396428
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.2861953   -0.2061228    0.5775578
24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.0774368   -0.0535178    0.1921134
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0093909   -0.6100702    0.3905195
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0137749   -0.0265125    0.0524812
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0055765   -0.0734962    0.0580460
