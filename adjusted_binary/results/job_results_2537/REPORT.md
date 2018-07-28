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

**Outcome Variable:** ever_stunted

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/31968df8-04c6-44e7-8a63-415c8a38d574/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31968df8-04c6-44e7-8a63-415c8a38d574/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/31968df8-04c6-44e7-8a63-415c8a38d574/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/31968df8-04c6-44e7-8a63-415c8a38d574/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                0.3768433   0.3023971   0.4512896
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.0858751   0.0448332   0.1269170
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              NA                0.7135034   0.6635098   0.7634970
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.1117904   0.0888042   0.1347767
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.3033363   0.2647037   0.3419690
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.4816823   0.4426076   0.5207570
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.2789687   0.2519068   0.3060305
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.8626078   0.8303204   0.8948953
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.9087770   0.8805360   0.9370179
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.8125555   0.7738947   0.8512162
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.7799996   0.7410306   0.8189686
0-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.1011896   0.0795967   0.1227825
0-24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.0919844   0.0787463   0.1052226
0-24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.1004692   0.0832125   0.1177260
0-24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.1084947   0.0900682   0.1269212
0-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.7332369   0.7005294   0.7659445
0-24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.7762551   0.7455862   0.8069241
0-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.8387335   0.8086349   0.8688320
0-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.8070452   0.7750203   0.8390701
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.4939146   0.4526537   0.5351755
0-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.4714949   0.4378804   0.5051094
0-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.5696763   0.5390228   0.6003299
0-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.5522045   0.5170440   0.5873650
0-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.8402373   0.7299583   0.9505163
0-24 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.9013231   0.7827595   1.0198866
0-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.8317959   0.7077701   0.9558217
0-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.9020885   0.7891525   1.0150244
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.0687978   0.0490634   0.0885322
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.1414633   0.1232511   0.1596755
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.2085045   0.1807707   0.2362383
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.1178539   0.0935720   0.1421357
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.4177489   0.3749494   0.4605484
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.6454257   0.6091467   0.6817048
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.4313204   0.3853043   0.4773365
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.3301511   0.2868780   0.3734243
0-6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0198072   0.0047615   0.0348529
0-6 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.0069531   0.0045131   0.0093932
0-6 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0077551   0.0040221   0.0114881
0-6 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0066169   0.0013040   0.0119298
0-6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.0943239   0.0732028   0.1154449
0-6 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.0842824   0.0641116   0.1044531
0-6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.1130523   0.0891218   0.1369829
0-6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.1055676   0.0785027   0.1326326
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0551262   0.0357390   0.0745135
0-6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0544673   0.0391949   0.0697397
0-6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0646610   0.0491570   0.0801649
0-6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0325261   0.0215512   0.0435011
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.0351431   0.0210270   0.0492591
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.1567598   0.1478081   0.1657115
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.2390027   0.2109611   0.2670442
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.1191025   0.0848252   0.1533798
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.7243955   0.6728975   0.7758935
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.4242964   0.3789862   0.4696066
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.6592440   0.6018716   0.7166164
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.6373067   0.5816511   0.6929624
6-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.0180713   0.0131332   0.0230094
6-24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.0379900   0.0294886   0.0464915
6-24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0360407   0.0250599   0.0470214
6-24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0417013   0.0300510   0.0533516
6-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.6539403   0.6107444   0.6971363
6-24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.8316020   0.7956998   0.8675042
6-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.8311818   0.7917674   0.8705963
6-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.5367002   0.4893315   0.5840688
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.4552977   0.4131972   0.4973982
6-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.4735425   0.4380887   0.5089964
6-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.5223202   0.4878919   0.5567486
6-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.5189592   0.4793587   0.5585597


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


agecat        studyid                    country       intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 >=35              1.0000000   1.0000000    1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              >=35              0.2278802   0.1338349    0.3880107
0-24 months   ki0047075b-MAL-ED          BANGLADESH    [30-35)              >=35              1.8933689   1.5718807    2.2806092
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              2.7134375   2.0433355    3.6032962
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              4.3087973   3.4524419    5.3775661
0-24 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              2.4954613   1.9842750    3.1383386
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.0535228   1.0041253    1.1053502
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              0.9419755   0.8907820    0.9961112
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              0.9042343   0.8545989    0.9567526
0-24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000    1.0000000
0-24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              0.9090303   0.7655934    1.0793407
0-24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              0.9928808   0.7959251    1.2385743
0-24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              1.0721920   0.8588086    1.3385935
0-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              1.0586689   0.9989051    1.1220083
0-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.1438778   1.0812500    1.2101332
0-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.1006609   1.0385048    1.1665371
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9546082   0.8554310    1.0652838
0-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              1.1533904   1.0449811    1.2730464
0-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              1.1180162   1.0074196    1.2407542
0-24 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000    1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI        <25                  >=35              1.0727006   0.8886570    1.2948601
0-24 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              0.9899536   0.8090828    1.2112581
0-24 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35              1.0736115   0.8934352    1.2901235
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              2.0562194   1.4617979    2.8923548
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              3.0306869   2.3721498    3.8720417
0-6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              1.7130479   1.2191785    2.4069758
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.5450088   1.3768797    1.7336681
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.0324873   0.8936999    1.1928277
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              0.7903100   0.6723531    0.9289612
0-6 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000    1.0000000
0-6 months    ki1119695-PROBIT           BELARUS       <25                  >=35              0.3510406   0.1689958    0.7291865
0-6 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              0.3915282   0.1768072    0.8670144
0-6 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.3340641   0.1473064    0.7575965
0-6 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.8935423   0.6498358    1.2286455
0-6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.1985549   0.8894323    1.6151132
0-6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.1192039   0.8048018    1.5564297
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9880465   0.6304706    1.5484240
0-6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              1.1729617   0.7673097    1.7930688
0-6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.5900299   0.3629487    0.9591858
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              4.4606176   2.9011537    6.8583438
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              6.8008477   4.2328502   10.9268054
6-24 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              3.3890739   2.0786863    5.5255196
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              0.5857248   0.5216893    0.6576204
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              0.9100608   0.8205412    1.0093469
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              0.8797773   0.7942278    0.9745417
6-24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000   1.0000000    1.0000000
6-24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              2.1022294   1.6271781    2.7159710
6-24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.9943604   1.4446020    2.7533351
6-24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              2.3075987   1.6337519    3.2593760
6-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              1.2716787   1.1738710    1.3776358
6-24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.2710362   1.1706804    1.3799949
6-24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              0.8207174   0.7372197    0.9136720
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              1.0400724   0.9241780    1.1705002
6-24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              1.1472060   1.0250707    1.2838936
6-24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              1.1398240   1.0119894    1.2838066


### Parameter: PAR


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.1463355    0.0922623    0.2004086
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.4823272    0.4353183    0.5293362
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.1161963   -0.1522959   -0.0800967
0-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0024614   -0.0214776    0.0165548
0-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0114844   -0.0388419    0.0158731
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0808058    0.0409334    0.1206783
0-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.3213694   -0.4229136   -0.2198251
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.2193489    0.1989018    0.2397961
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.0355374   -0.0810396    0.0099649
0-6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0113884   -0.0245235    0.0017468
0-6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0397066    0.0219556    0.0574575
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0062089   -0.0125273    0.0249451
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.2836524    0.2482103    0.3190944
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.1624486   -0.2184911   -0.1064061
6-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0198446    0.0114784    0.0282108
6-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0888662   -0.1258262   -0.0519062
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0365590   -0.0044601    0.0775781


### Parameter: PAF


agecat        studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH    >=35                 NA                 0.2797045    0.1803942    0.3669816
0-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.8118379    0.7662416    0.8485403
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.1556733   -0.2115246   -0.1023968
0-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0249307   -0.2380423    0.1514966
0-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0159119   -0.0546497    0.0214031
0-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.1406003    0.0688827    0.2067939
0-24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.6193664   -0.9024597   -0.3783985
0-6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.7612405    0.6973199    0.8116622
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.0929782   -0.2263912    0.0259214
0-6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -1.3527206   -3.1905488   -0.3208996
0-6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.2962503    0.1635581    0.4078924
0-6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.1012289   -0.2599339    0.3588636
6-24 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.8897629    0.8309300    0.9281232
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.2890818   -0.4191391   -0.1709436
6-24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.5233845    0.3784288    0.6345353
6-24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.1572646   -0.2295760   -0.0892060
6-24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                 0.0743286   -0.0122850    0.1535313
