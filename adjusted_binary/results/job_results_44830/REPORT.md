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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        single    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      224     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       39     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      196     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       35     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0               0      196     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0               1       53     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0               0      219     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0               1       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0               0      260     302
0-24 months   ki0047075b-MAL-ED          PERU                           0               1        8     302
0-24 months   ki0047075b-MAL-ED          PERU                           1               0       30     302
0-24 months   ki0047075b-MAL-ED          PERU                           1               1        4     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      165     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       11     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      125     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       11     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      229     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       22     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2039    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      112    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      217    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        7    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               0      232     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               1       20     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               0       28     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               1        2     282
0-24 months   ki1119695-PROBIT           BELARUS                        0               0    16178   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0               1       26   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1               0      692   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1               1        1   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0    12476   13879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      526   13879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      825   13879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       52   13879
0-24 months   ki1135781-COHORTS          GUATEMALA                      0               0      972    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      0               1      127    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               0       85    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       13    1197
0-24 months   ki1135781-COHORTS          INDIA                          0               0     4840    5374
0-24 months   ki1135781-COHORTS          INDIA                          0               1      525    5374
0-24 months   ki1135781-COHORTS          INDIA                          1               0        7    5374
0-24 months   ki1135781-COHORTS          INDIA                          1               1        2    5374
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2396    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0               1      535    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       56    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       18    3005
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      254     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        9     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      197     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       36     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0               0      232     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0               1       17     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0               0      233     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0               1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0               0      268     302
0-6 months    ki0047075b-MAL-ED          PERU                           0               1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           1               0       32     302
0-6 months    ki0047075b-MAL-ED          PERU                           1               1        2     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      174     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      133     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        3     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      247     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        4     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       10     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2133    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       18    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      223    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      233     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1        5     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       25     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        2     265
0-6 months    ki1119695-PROBIT           BELARUS                        0               0    16182   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0               1       18   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1               0      692   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1               1        1   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0    12770   13784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      148   13784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      849   13784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       17   13784
0-6 months    ki1135781-COHORTS          GUATEMALA                      0               0      872     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      0               1       17     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               0       68     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     958
0-6 months    ki1135781-COHORTS          INDIA                          0               0     5020    5169
0-6 months    ki1135781-COHORTS          INDIA                          0               1      141    5169
0-6 months    ki1135781-COHORTS          INDIA                          1               0        8    5169
0-6 months    ki1135781-COHORTS          INDIA                          1               1        0    5169
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2868    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0               1       62    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       68    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        6    3004
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      204     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       35     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      176     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0               0      186     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0               1       47     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0               0      219     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0               1       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           0               0      230     270
6-24 months   ki0047075b-MAL-ED          PERU                           0               1        8     270
6-24 months   ki0047075b-MAL-ED          PERU                           1               0       29     270
6-24 months   ki0047075b-MAL-ED          PERU                           1               1        3     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      135     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        9     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      105     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       10     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      217     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       20     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1712    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      107    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      177    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        6    2002
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               0      219     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               1       17     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               0       29     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               1        1     266
6-24 months   ki1119695-PROBIT           BELARUS                        0               0    15910   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0               1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1               0      679   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1               1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0     9592   10649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      394   10649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      625   10649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       38   10649
6-24 months   ki1135781-COHORTS          GUATEMALA                      0               0      900    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      0               1      116    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               0       81    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       13    1110
6-24 months   ki1135781-COHORTS          INDIA                          0               0     4549    5023
6-24 months   ki1135781-COHORTS          INDIA                          0               1      465    5023
6-24 months   ki1135781-COHORTS          INDIA                          1               0        7    5023
6-24 months   ki1135781-COHORTS          INDIA                          1               1        2    5023
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2188    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0               1      514    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       55    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       17    2774


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
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA

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
![](/tmp/6c1e6132-0b6d-4eae-a101-31f4b01ab90e/943094f6-fb37-4966-aefe-1141a816a3a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6c1e6132-0b6d-4eae-a101-31f4b01ab90e/943094f6-fb37-4966-aefe-1141a816a3a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6c1e6132-0b6d-4eae-a101-31f4b01ab90e/943094f6-fb37-4966-aefe-1141a816a3a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6c1e6132-0b6d-4eae-a101-31f4b01ab90e/943094f6-fb37-4966-aefe-1141a816a3a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0625000   0.0266809   0.0983191
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0808824   0.0349849   0.1267798
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0520688   0.0426781   0.0614595
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0312500   0.0084599   0.0540401
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0404553   0.0370686   0.0438420
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0592930   0.0436618   0.0749243
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1155596   0.0966506   0.1344686
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1326531   0.0654682   0.1998379
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1825316   0.1685394   0.1965237
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2432432   0.1469379   0.3395486
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0114569   0.0096216   0.0132921
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0196305   0.0103906   0.0288703
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0211604   0.0159465   0.0263744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0197904   0.1423718
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0625000   0.0228875   0.1021125
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0869565   0.0353581   0.1385549
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0588235   0.0480079   0.0696391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0327869   0.0069796   0.0585942
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0394552   0.0356368   0.0432737
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0573152   0.0396211   0.0750094
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1141732   0.0946094   0.1337370
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1382979   0.0684801   0.2081157
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1902295   0.1754280   0.2050309
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2361111   0.1379966   0.3342257


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0705128   0.0420601   0.0989655
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0501053   0.0413295   0.0588811
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0416457   0.0383219   0.0449694
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1169591   0.0987457   0.1351724
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1840266   0.1701694   0.1978839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0119704   0.0101548   0.0137860
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0226365   0.0173166   0.0279564
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0733591   0.0415449   0.1051733
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0564436   0.0463321   0.0665551
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0405672   0.0368200   0.0443144
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1162162   0.0973542   0.1350783
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1914203   0.1767774   0.2060633


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2941176   0.5777110   2.898924
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6001674   0.2831440   1.272147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4656429   1.1114824   1.932652
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1479190   0.6741541   1.954624
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3326092   0.8903545   1.994540
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.7134230   1.0421567   2.817061
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.8317349   1.7302287   8.485695
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.3913043   0.5839281   3.315010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5573770   0.2483727   1.250819
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4526648   1.0511335   2.007580
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.2112986   0.7107524   2.064354
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.2411911   0.8132682   1.894277


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0080128   -0.0173854   0.0334110
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019635   -0.0043012   0.0003741
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011903    0.0001768   0.0022038
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0013995   -0.0043209   0.0071199
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0014951   -0.0009610   0.0039511
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0005135   -0.0000793   0.0011063
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0014761   -0.0000972   0.0030493
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0108591   -0.0180623   0.0397805
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023800   -0.0049588   0.0001989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011120   -0.0000180   0.0022419
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0020430   -0.0041100   0.0081959
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0011909   -0.0013988   0.0037806


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1136364   -0.3269501   0.4079352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0391883   -0.0864337   0.0060025
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0285825    0.0040391   0.0525211
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0119654   -0.0381471   0.0596590
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0081242   -0.0053058   0.0213747
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0428990   -0.0074828   0.0907614
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0652078   -0.0052026   0.1306862
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1480263   -0.3460906   0.4607650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0421655   -0.0882963   0.0020098
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0274101   -0.0007378   0.0547664
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0175792   -0.0367571   0.0690678
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0062212   -0.0073955   0.0196540
