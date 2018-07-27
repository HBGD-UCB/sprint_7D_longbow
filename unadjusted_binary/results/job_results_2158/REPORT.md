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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        fage       ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=35                  0       86     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=35                  1       16     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0       11     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1        3     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)               0       33     151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)               1        2     151
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=35                  0       36      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=35                  1        4      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                   0        3      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                   1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)               0        8      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)               1        0      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)               0       23      79
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)               1        5      79
0-6 months    ki0047075b-MAL-ED          INDIA                          >=35                  0       63     161
0-6 months    ki0047075b-MAL-ED          INDIA                          >=35                  1        8     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                   0        3     161
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                   1        0     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)               0       23     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)               1        4     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [30-35)               0       47     161
0-6 months    ki0047075b-MAL-ED          INDIA                          [30-35)               1       13     161
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=35                  0       35      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=35                  1        3      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)               0        9      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)               1        1      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [30-35)               0       27      79
0-6 months    ki0047075b-MAL-ED          NEPAL                          [30-35)               1        4      79
0-6 months    ki0047075b-MAL-ED          PERU                           >=35                  0       42      85
0-6 months    ki0047075b-MAL-ED          PERU                           >=35                  1        3      85
0-6 months    ki0047075b-MAL-ED          PERU                           <25                   0        4      85
0-6 months    ki0047075b-MAL-ED          PERU                           <25                   1        1      85
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)               0       15      85
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)               1        3      85
0-6 months    ki0047075b-MAL-ED          PERU                           [30-35)               0       12      85
0-6 months    ki0047075b-MAL-ED          PERU                           [30-35)               1        5      85
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35                  0       68      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35                  1        7      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   0        1      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   1        0      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0        5      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1        1      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)               0        7      90
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)               1        1      90
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35                  0       56     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35                  1        9     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   0        2     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   1        0     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0        3     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1        3     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)               0       24     100
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)               1        3     100
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=35                  0      104    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=35                  1       45    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                   0      310    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                   1      138    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0      451    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1      176    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)               0      222    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)               1       81    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35                  0       65     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35                  1       34     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                   0       41     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                   1       33     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       78     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1       50     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)               0       73     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)               1       42     416
0-6 months    ki1119695-PROBIT           BELARUS                        >=35                  0     1621   16273
0-6 months    ki1119695-PROBIT           BELARUS                        >=35                  1        9   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <25                   0     5423   16273
0-6 months    ki1119695-PROBIT           BELARUS                        <25                   1       58   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)               0     6048   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)               1       47   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [30-35)               0     3044   16273
0-6 months    ki1119695-PROBIT           BELARUS                        [30-35)               1       23   16273
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=35                  0      371    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=35                  1       62    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                   0      144    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                   1       19    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)               0      194    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)               1       32    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [30-35)               0      202    1052
0-6 months    ki1135781-COHORTS          GUATEMALA                      [30-35)               1       28    1052
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=35                  0      503    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=35                  1       38    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                   0      747    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                   1       59    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      902    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)               1       52    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)               0      618    2951
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)               1       32    2951
0-6 months    ki1148112-LCNI-5           MALAWI                         >=35                  0        9      38
0-6 months    ki1148112-LCNI-5           MALAWI                         >=35                  1        4      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                   0        5      38
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                   1        5      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)               0        6      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)               1        4      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [30-35)               0        2      38
0-6 months    ki1148112-LCNI-5           MALAWI                         [30-35)               1        3      38
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35                  0       56     122
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35                  1       29     122
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0        6     122
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1        4     122
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)               0       13     122
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)               1       14     122
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=35                  0       39      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=35                  1        1      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                   0        3      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                   1        0      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               0        6      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               1        2      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)               0       27      79
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)               1        1      79
6-24 months   ki0047075b-MAL-ED          INDIA                          >=35                  0       45     135
6-24 months   ki0047075b-MAL-ED          INDIA                          >=35                  1       16     135
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                   0        0     135
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                   1        1     135
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               0       12     135
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               1       10     135
6-24 months   ki0047075b-MAL-ED          INDIA                          [30-35)               0       29     135
6-24 months   ki0047075b-MAL-ED          INDIA                          [30-35)               1       22     135
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=35                  0       28      74
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=35                  1        8      74
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               0        6      74
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               1        3      74
6-24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)               0       24      74
6-24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)               1        5      74
6-24 months   ki0047075b-MAL-ED          PERU                           >=35                  0       20      72
6-24 months   ki0047075b-MAL-ED          PERU                           >=35                  1       19      72
6-24 months   ki0047075b-MAL-ED          PERU                           <25                   0        3      72
6-24 months   ki0047075b-MAL-ED          PERU                           <25                   1        2      72
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               0       13      72
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               1        4      72
6-24 months   ki0047075b-MAL-ED          PERU                           [30-35)               0        7      72
6-24 months   ki0047075b-MAL-ED          PERU                           [30-35)               1        4      72
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35                  0       52      80
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35                  1       16      80
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   0        1      80
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   1        0      80
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0        5      80
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1        0      80
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)               0        5      80
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)               1        1      80
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35                  0       13      74
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35                  1       33      74
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0        1      74
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1        4      74
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)               0        5      74
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)               1       18      74
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=35                  0       54     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=35                  1       29     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                   0      211     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                   1       88     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0      272     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1      132     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)               0      119     963
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)               1       58     963
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35                  0       20     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35                  1       33     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                   0       19     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                   1       18     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       32     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1       39     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)               0       28     226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)               1       37     226
6-24 months   ki1119695-PROBIT           BELARUS                        >=35                  0     1535   15719
6-24 months   ki1119695-PROBIT           BELARUS                        >=35                  1       51   15719
6-24 months   ki1119695-PROBIT           BELARUS                        <25                   0     5077   15719
6-24 months   ki1119695-PROBIT           BELARUS                        <25                   1      205   15719
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               0     5657   15719
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               1      222   15719
6-24 months   ki1119695-PROBIT           BELARUS                        [30-35)               0     2854   15719
6-24 months   ki1119695-PROBIT           BELARUS                        [30-35)               1      118   15719
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=35                  0      115     607
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=35                  1      135     607
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                   0       43     607
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                   1       57     607
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               0       49     607
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               1       86     607
6-24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)               0       57     607
6-24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)               1       65     607
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=35                  0      195    2149
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=35                  1      184    2149
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                   0      302    2149
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                   1      284    2149
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      361    2149
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               1      344    2149
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)               0      234    2149
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)               1      245    2149
6-24 months   ki1148112-LCNI-5           MALAWI                         >=35                  0       18      79
6-24 months   ki1148112-LCNI-5           MALAWI                         >=35                  1       13      79
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                   0       10      79
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                   1        3      79
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               0       16      79
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               1        5      79
6-24 months   ki1148112-LCNI-5           MALAWI                         [30-35)               0       12      79
6-24 months   ki1148112-LCNI-5           MALAWI                         [30-35)               1        2      79
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35                  0       53     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35                  1       49     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               0        6     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)               1        8     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)               0       13     151
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)               1       22     151
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=35                  0       34      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=35                  1        6      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                   0        3      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                   1        0      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               0        6      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)               1        2      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)               0       22      79
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)               1        6      79
0-24 months   ki0047075b-MAL-ED          INDIA                          >=35                  0       41     161
0-24 months   ki0047075b-MAL-ED          INDIA                          >=35                  1       30     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                   0        0     161
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                   1        3     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               0       12     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)               1       15     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [30-35)               0       25     161
0-24 months   ki0047075b-MAL-ED          INDIA                          [30-35)               1       35     161
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=35                  0       26      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=35                  1       12      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               0        6      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)               1        4      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)               0       24      79
0-24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)               1        7      79
0-24 months   ki0047075b-MAL-ED          PERU                           >=35                  0       18      85
0-24 months   ki0047075b-MAL-ED          PERU                           >=35                  1       27      85
0-24 months   ki0047075b-MAL-ED          PERU                           <25                   0        1      85
0-24 months   ki0047075b-MAL-ED          PERU                           <25                   1        4      85
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               0       11      85
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)               1        7      85
0-24 months   ki0047075b-MAL-ED          PERU                           [30-35)               0        6      85
0-24 months   ki0047075b-MAL-ED          PERU                           [30-35)               1       11      85
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35                  0       47      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35                  1       28      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   0        1      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                   1        0      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               0        4      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)               1        2      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)               0        4      90
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)               1        4      90
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35                  0       12     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35                  1       53     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   0        0     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                   1        2     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               0        1     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)               1        5     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)               0        5     100
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)               1       22     100
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=35                  0       58    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=35                  1       92    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                   0      187    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                   1      262    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               0      251    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)               1      377    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)               0      125    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)               1      178    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35                  0       23     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35                  1       77     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                   0       19     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                   1       55     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               0       32     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)               1       96     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)               0       32     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)               1       84     418
0-24 months   ki1119695-PROBIT           BELARUS                        >=35                  0     1477   16277
0-24 months   ki1119695-PROBIT           BELARUS                        >=35                  1      155   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <25                   0     4947   16277
0-24 months   ki1119695-PROBIT           BELARUS                        <25                   1      535   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               0     5485   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)               1      611   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [30-35)               0     2761   16277
0-24 months   ki1119695-PROBIT           BELARUS                        [30-35)               1      306   16277
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=35                  0      153    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=35                  1      378    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                   0       67    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                   1      143    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               0       73    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)               1      208    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)               0       69    1301
0-24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)               1      210    1301
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=35                  0      221    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=35                  1      320    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                   0      340    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                   1      466    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               0      419    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)               1      535    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)               0      275    2951
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)               1      375    2951
0-24 months   ki1148112-LCNI-5           MALAWI                         >=35                  0       15     106
0-24 months   ki1148112-LCNI-5           MALAWI                         >=35                  1       21     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                   0       10     106
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                   1       13     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               0       16     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)               1       11     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [30-35)               0       10     106
0-24 months   ki1148112-LCNI-5           MALAWI                         [30-35)               1       10     106


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

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3fb8102b-f040-4699-ad6b-3c04509374bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fb8102b-f040-4699-ad6b-3c04509374bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fb8102b-f040-4699-ad6b-3c04509374bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fb8102b-f040-4699-ad6b-3c04509374bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.4803922    0.3831115   0.5776728
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.5714286    0.3113411   0.8315161
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.6285714    0.4679617   0.7891812
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.6133333    0.5661574   0.6605092
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.5835189    0.5329235   0.6341144
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.6003185    0.5525846   0.6480523
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.5874587    0.5016944   0.6732231
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.7700000    0.6874195   0.8525805
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.7432432    0.6435929   0.8428936
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.7500000    0.6748959   0.8251041
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.7241379    0.6427058   0.8055701
0-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.0949755    0.0728718   0.1170792
0-24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.0975921    0.0812986   0.1138856
0-24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.1002297    0.0816110   0.1188483
0-24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0997718    0.0821663   0.1173772
0-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.7118644    0.6733286   0.7504003
0-24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.6809524    0.6178869   0.7440178
0-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.7402135    0.6889216   0.7915054
0-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.7526882    0.7020424   0.8033339
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.5914972    0.5500689   0.6329255
0-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.5781638    0.5440640   0.6122635
0-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.5607966    0.5292986   0.5922946
0-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.5769231    0.5389362   0.6149100
0-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.5833333    0.4215224   0.7451443
0-24 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.5652174    0.3616603   0.7687745
0-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.4074074    0.2211914   0.5936234
0-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.5000000    0.2798284   0.7201716
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.3020134    0.2464097   0.3576172
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.3080357    0.2658109   0.3502605
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.2807018    0.2431524   0.3182511
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.2673267    0.2123019   0.3223515
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.3434343    0.2497830   0.4370857
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.4459459    0.3325567   0.5593352
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.3906250    0.3060021   0.4752479
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.3652174    0.2771105   0.4533243
0-6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0055215   -0.0007239   0.0117669
0-6 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.0105820    0.0067304   0.0144337
0-6 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0077112    0.0046813   0.0107412
0-6 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0074992    0.0034505   0.0115478
0-6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.1431871    0.1101801   0.1761940
0-6 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.1165644    0.0672775   0.1658513
0-6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.1415929    0.0961184   0.1870674
0-6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.1217391    0.0794608   0.1640174
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0702403    0.0487025   0.0917781
0-6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0732010    0.0552162   0.0911858
0-6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0545073    0.0400993   0.0689153
0-6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0492308    0.0325958   0.0658657
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.3493976    0.2917145   0.4070807
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.2943144    0.2542582   0.3343706
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.3267327    0.2844360   0.3690294
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.3276836    0.2155404   0.4398268
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.6226415    0.4918531   0.7534299
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.4864865    0.3250798   0.6478932
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.5492958    0.4333030   0.6652885
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.5692308    0.4485826   0.6898790
6-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.0321564    0.0212824   0.0430304
6-24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.0388111    0.0282741   0.0493480
6-24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0377615    0.0251043   0.0504188
6-24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0397039    0.0290827   0.0503251
6-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.5400000    0.4781682   0.6018318
6-24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.5700000    0.4728869   0.6671131
6-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.6370370    0.5558563   0.7182177
6-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.5327869    0.4441814   0.6213923
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.4854881    0.4351593   0.5358169
6-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.4846416    0.4441686   0.5251146
6-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.4879433    0.4510371   0.5248494
6-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.5114823    0.4667071   0.5562574


### Parameter: E(Y)


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.5231788   0.4432496   0.6031080
0-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.5941176   0.5531511   0.6350842
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0987283   0.0829150   0.1145416
0-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.7217525   0.6973920   0.7461130
0-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.5747204   0.5568801   0.5925608
0-24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.5188679   0.4232996   0.6144363
0-6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2881467   0.2614090   0.3148844
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0084189   0.0052961   0.0115416
0-6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1340304   0.1134336   0.1546272
0-6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0613351   0.0526766   0.0699937
6-24 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.3187954   0.2885259   0.3490649
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0379159   0.0282938   0.0475380
6-24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.5650741   0.5256037   0.6045446
6-24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.4918567   0.4707148   0.5129985


### Parameter: RR


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              1.1895044   0.7227936   1.957572
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              1.3084548   0.9444212   1.812808
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.9513896   0.8597883   1.052750
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.9787801   0.8932219   1.072534
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              0.9578132   0.8382139   1.094477
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              0.9652510   0.8129716   1.146054
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              0.9740260   0.8410975   1.127963
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              0.9404389   0.8050873   1.098546
0-24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.0275506   0.8572010   1.231753
0-24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0553213   0.8578423   1.298261
0-24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              1.0505001   0.8442952   1.307067
0-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.9565760   0.8592725   1.064898
0-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.0398238   0.9522947   1.135398
0-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0573477   0.9698676   1.152718
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9774581   0.8919326   1.071184
0-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.9480968   0.8666869   1.037154
0-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.9753606   0.8859648   1.073777
0-24 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI        <25                  >=35              0.9689441   0.6150010   1.526587
0-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              0.6984127   0.4091771   1.192101
0-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35              0.8571429   0.5093699   1.442358
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              1.0199405   0.8445285   1.231786
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.9294347   0.7703104   1.121430
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              0.8851485   0.6491984   1.206854
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.2984897   0.8943651   1.885220
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.1374081   0.8029071   1.611266
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              1.0634271   0.7389018   1.530484
0-6 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS       <25                  >=35              1.9165189   0.6801398   5.400426
0-6 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.3965904   0.4695805   4.153632
0-6 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              1.3581851   0.5223265   3.531636
0-6 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.8140708   0.5029365   1.317684
0-6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9888667   0.6659616   1.468339
0-6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              0.8502104   0.5604029   1.289889
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              1.0421510   0.7035382   1.543738
0-6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7760124   0.5176664   1.163288
0-6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7008907   0.4441074   1.106146
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.8423481   0.6820869   1.040264
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.9351314   0.7371510   1.186284
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              0.9378531   0.6447818   1.364133
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              0.7813268   0.5275846   1.157107
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              0.8822023   0.6549590   1.188290
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              0.9142191   0.6783515   1.232099
6-24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.2069478   0.8804864   1.654453
6-24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.1743094   0.8078319   1.707041
6-24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              1.2347135   0.8460281   1.801970
6-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              1.0555556   0.8596681   1.296079
6-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.1796982   0.9939567   1.400149
6-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              0.9866424   0.8062512   1.207394
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9982564   0.8738341   1.140395
6-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              1.0050570   0.8840147   1.142673
6-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              1.0535423   0.9198679   1.206642


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.0427867   -0.0125942   0.0981675
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0192157   -0.0624471   0.0240157
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.0235885   -0.0963916   0.0492145
0-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0037528   -0.0122724   0.0197779
0-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0098881   -0.0195438   0.0393200
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0167768   -0.0542640   0.0207104
0-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0644654   -0.1968722   0.0679414
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0138667   -0.0634663   0.0357328
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.0387772   -0.0435746   0.1211290
0-6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0028974   -0.0021194   0.0079141
0-6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0091566   -0.0339931   0.0156798
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0089052   -0.0281084   0.0102981
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0306022   -0.0948494   0.0336451
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.0606946   -0.1759569   0.0545677
6-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0057595   -0.0042353   0.0157544
6-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0250741   -0.0221684   0.0723166
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0063686   -0.0393100   0.0520471


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.0817821   -0.0312526   0.1824271
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0323432   -0.1086593   0.0387195
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.0316026   -0.1339892   0.0615397
0-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0380111   -0.1386768   0.1872825
0-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0137001   -0.0279443   0.0536574
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0291912   -0.0965413   0.0340221
0-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.1242424   -0.4125395   0.1052137
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0481239   -0.2354314   0.1107854
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.1014548   -0.1420848   0.2930617
0-6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.3441536   -0.7021177   0.7472945
0-6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0683177   -0.2704277   0.1016390
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1451885   -0.5045058   0.1283140
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0959931   -0.3222828   0.0915704
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.1080077   -0.3341710   0.0798173
6-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.1519028   -0.1405369   0.3693594
6-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0443732   -0.0430900   0.1245025
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0129480   -0.0844325   0.1015838
