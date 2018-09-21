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

unadjusted

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
![](/tmp/2e735663-8d79-42d8-89d5-be2b1316355d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2e735663-8d79-42d8-89d5-be2b1316355d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2e735663-8d79-42d8-89d5-be2b1316355d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2e735663-8d79-42d8-89d5-be2b1316355d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8095238   0.6750720   0.9439757
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7804878   0.6540830   0.9068926
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6341085   0.5947500   0.6734670
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5538462   0.4224385   0.6852538
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8600804   0.8497149   0.8704458
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8850000   0.8405381   0.9294619
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.5435773   0.5264265   0.5607280
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5437262   0.4824654   0.6049871
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4559271   0.4002153   0.5116388
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2500000   0.0728958   0.4271042
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6094527   0.5842542   0.6346513
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4716981   0.3604061   0.5829901
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.7124183   0.6609879   0.7638487
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6250000   0.4534564   0.7965436
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.8851733   0.8753038   0.8950429
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8928571   0.8491103   0.9366040
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7433247   0.7255765   0.7610730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7430168   0.6787331   0.8073004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7380282   0.7055710   0.7704853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6666667   0.4900832   0.8432501
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5634218   0.5089777   0.6178660
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4848485   0.3004875   0.6692095
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0659114   0.0503888   0.0814341
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1190476   0.0517762   0.1863190
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
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8734249   0.6834759   1.1161636
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0289736   0.9771618   1.0835327
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0002740   0.8898270   1.1244299
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.5483333   0.2671990   1.1252640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.7739700   0.6091162   0.9834405
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8772936   0.6605262   1.1651983
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0086806   0.9592476   1.0606609
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9995857   0.9137797   1.0934491
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9033079   0.6906013   1.1815285
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8605426   0.5812790   1.2739726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8061756   0.9792305   3.3314630
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.5301957   0.2928894   0.9597734


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0143431   -0.1055140    0.0768278
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0073480   -0.0199549    0.0052590
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0011248   -0.0009427    0.0031923
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000110   -0.0046940    0.0047160
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0140007   -0.0277753   -0.0002261
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0043955   -0.0082996   -0.0004914
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0082763   -0.0254616    0.0089090
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003533   -0.0017092    0.0024158
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0000220   -0.0047950    0.0047510
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0026143   -0.0092776    0.0040489
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0069702   -0.0242145    0.0102740
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0042307   -0.0013202    0.0097817
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0067128   -0.0124377   -0.0009880


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0180375   -0.1392487    0.0902773
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0117237   -0.0320775    0.0082287
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0013061   -0.0010980    0.0037043
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000203   -0.0086727    0.0086384
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0316811   -0.0634737   -0.0008389
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0072647   -0.0137298   -0.0008408
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0117537   -0.0365149    0.0124160
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003989   -0.0019329    0.0027254
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0000297   -0.0064717    0.0063711
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0035549   -0.0126621    0.0054704
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0125262   -0.0440634    0.0180584
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0603168   -0.0214692    0.1355544
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0133967   -0.0249192   -0.0020037
