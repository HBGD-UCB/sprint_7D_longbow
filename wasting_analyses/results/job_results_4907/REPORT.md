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

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       45    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       79    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1       13     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        4     23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       71    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1      106    177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0    177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0       20     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       73     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     93
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0        4     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       22     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        6     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        8     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       34     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        9     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       32     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        7     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       33     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        4     45
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      236    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      409    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       29    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       36    710
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0       18     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       16     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        2     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        1     37
0-24 months   ki1119695-PROBIT           BELARUS                        0                   0      592   4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                   1     3639   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                   0       23   4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                   1      177   4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     1503   3556
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     1790   3556
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      120   3556
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      143   3556
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      179    353
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      150    353
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       18    353
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        6    353
0-24 months   ki1135781-COHORTS          INDIA                          0                   0     1499   1962
0-24 months   ki1135781-COHORTS          INDIA                          0                   1      459   1962
0-24 months   ki1135781-COHORTS          INDIA                          1                   0        3   1962
0-24 months   ki1135781-COHORTS          INDIA                          1                   1        1   1962
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0      628   1661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      980   1661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       28   1661
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       25   1661
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0       13     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       49     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1       11     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        2     14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0       26     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       56     82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        0     82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       34     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     43
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        8     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        4     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       13     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        4     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       12     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        9     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     12
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       88    338
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      218    338
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       12    338
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       20    338
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0        3      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1        4      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        0      9
0-6 months    ki1119695-PROBIT           BELARUS                        0                   0      467   4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                   1     3600   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                   0       21   4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                   1      175   4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   0      596   2501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     1726   2501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0       46   2501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      133   2501
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   0       45    197
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   1      142    197
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0        4    197
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1        6    197
0-6 months    ki1135781-COHORTS          INDIA                          0                   0      830   1290
0-6 months    ki1135781-COHORTS          INDIA                          0                   1      459   1290
0-6 months    ki1135781-COHORTS          INDIA                          1                   0        0   1290
0-6 months    ki1135781-COHORTS          INDIA                          1                   1        1   1290
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   0      186    737
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   1      524    737
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0        9    737
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1       18    737
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0       32     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       30     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        2      9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0       45     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       50     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       39     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     50
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       14     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        3     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0        4     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        5     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       20     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0        6     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       24     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     33
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      148    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      191    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       17    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       16    372
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0       15     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       12     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0        0     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        1     28
6-24 months   ki1119695-PROBIT           BELARUS                        0                   0      125    168
6-24 months   ki1119695-PROBIT           BELARUS                        0                   1       39    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                   0        2    168
6-24 months   ki1119695-PROBIT           BELARUS                        1                   1        2    168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0      907   1055
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1       64   1055
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0       74   1055
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       10   1055
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      134    156
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1        8    156
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       14    156
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1        0    156
6-24 months   ki1135781-COHORTS          INDIA                          0                   0      669    672
6-24 months   ki1135781-COHORTS          INDIA                          0                   1        0    672
6-24 months   ki1135781-COHORTS          INDIA                          1                   0        3    672
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    672
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0      442    924
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      456    924
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       19    924
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1        7    924


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/8890f3fd-e8f1-4eda-80a2-73b8dd1a811a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8890f3fd-e8f1-4eda-80a2-73b8dd1a811a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8890f3fd-e8f1-4eda-80a2-73b8dd1a811a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8890f3fd-e8f1-4eda-80a2-73b8dd1a811a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8095238   0.6750720   0.9439757
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7804878   0.6540830   0.9068926
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6362502   0.5970087   0.6754918
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6997780   0.5979495   0.8016065
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8601115   0.8497550   0.8704679
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8848744   0.8410254   0.9287234
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.5435486   0.5266134   0.5604839
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5465065   0.5049142   0.5880989
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4559271   0.4002153   0.5116388
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2500000   0.0728958   0.4271042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6093645   0.5842160   0.6345129
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5143090   0.4485589   0.5800591
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7146630   0.6634326   0.7658934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7388725   0.6085737   0.8691713
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.8851619   0.8752997   0.8950240
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8992585   0.8566827   0.9418344
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7425336   0.7250004   0.7600668
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7292710   0.6824728   0.7760691
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7380282   0.7055710   0.7704853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6666667   0.4900832   0.8432501
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5644309   0.5101661   0.6186957
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5112774   0.3678457   0.6547090
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0660490   0.0505284   0.0815696
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1164175   0.0490413   0.1837936
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5077951   0.4732557   0.5423345
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2692308   0.1105079   0.4279537


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7951807   0.7027530   0.8876084
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6267606   0.5890263   0.6644948
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5435883   0.5270723   0.5601043
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4419263   0.3882796   0.4955731
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6050572   0.5803571   0.6297573
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7041420   0.6547600   0.7535240
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7433027   0.7261944   0.7604109
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7354138   0.7034648   0.7673628
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0701422   0.0548634   0.0854209
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5010823   0.4670433   0.5351212


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9641320   0.7645047   1.2158859
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0998471   0.9390751   1.2881438
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0287903   0.9776995   1.0825509
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0054418   0.9268565   1.0906901
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.5483333   0.2671990   1.1252640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.8440089   0.7379888   0.9652599
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0338754   0.8544068   1.2510416
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0159255   0.9677565   1.0664921
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9821387   0.9194183   1.0491376
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9033079   0.6906013   1.1815285
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9058281   0.6736860   1.2179628
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.7625929   0.9438307   3.2916217
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.5301957   0.2928894   0.9597734


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0143431   -0.1055140    0.0768278
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0094897   -0.0221568    0.0031774
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0010936   -0.0009559    0.0031432
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000397   -0.0045021    0.0045815
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0140007   -0.0277753   -0.0002261
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0043073   -0.0082293   -0.0003852
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105210   -0.0278904    0.0068484
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003648   -0.0016712    0.0024007
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0007691   -0.0032236    0.0047617
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0026143   -0.0092776    0.0040489
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0079793   -0.0254311    0.0094725
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0040932   -0.0014556    0.0096420
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0067128   -0.0124377   -0.0009880


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0180375   -0.1392487    0.0902773
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0151408   -0.0356179    0.0049314
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0012699   -0.0011132    0.0036474
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000730   -0.0083171    0.0083933
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0316811   -0.0634737   -0.0008389
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0071188   -0.0136179   -0.0006614
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0149416   -0.0400063    0.0095190
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004119   -0.0018899    0.0027085
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010346   -0.0043512    0.0063916
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0035549   -0.0126621    0.0054704
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0143396   -0.0462936    0.0166385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0583558   -0.0233743    0.1335586
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0133967   -0.0249192   -0.0020037
