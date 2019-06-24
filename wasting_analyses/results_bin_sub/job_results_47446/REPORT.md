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




# Results Detail

## Results Plots
![](/tmp/01e45d7c-4f1f-4201-8e30-6422af5110d9/0392ebc5-70aa-4dbf-bebc-ab059ccfc152/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/01e45d7c-4f1f-4201-8e30-6422af5110d9/0392ebc5-70aa-4dbf-bebc-ab059ccfc152/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/01e45d7c-4f1f-4201-8e30-6422af5110d9/0392ebc5-70aa-4dbf-bebc-ab059ccfc152/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/01e45d7c-4f1f-4201-8e30-6422af5110d9/0392ebc5-70aa-4dbf-bebc-ab059ccfc152/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0623197   0.0278260   0.0968134
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0876171   0.0417468   0.1334875
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0520688   0.0426781   0.0614595
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0312500   0.0084599   0.0540401
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0405618   0.0371673   0.0439563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0606648   0.0442881   0.0770415
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1166271   0.0975282   0.1357260
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1178796   0.0529984   0.1827608
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1826712   0.1686719   0.1966705
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2399774   0.1465166   0.3334382
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0114720   0.0096329   0.0133112
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0194389   0.0096108   0.0292671
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0211604   0.0159465   0.0263744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0197904   0.1423718
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0625000   0.0228875   0.1021125
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0869565   0.0353581   0.1385549
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0588235   0.0480079   0.0696391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0327869   0.0069796   0.0585942
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0394808   0.0356585   0.0433032
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0596883   0.0405949   0.0787817
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1151990   0.0954628   0.1349352
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1273972   0.0563352   0.1984592
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1901485   0.1753106   0.2049863
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2389101   0.1460557   0.3317645


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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4059307   0.6527518   3.028167
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6001674   0.2831440   1.272147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4956132   1.1276927   1.983571
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0107390   0.5692876   1.794512
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3137126   0.8837029   1.952965
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.6944630   0.9968877   2.880169
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.8317349   1.7302287   8.485695
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.3913043   0.5839281   3.315010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5573770   0.2483727   1.250819
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5118291   1.0825142   2.111406
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1058882   0.6171515   1.981667
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.2564399   0.8457661   1.866522


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0081932   -0.0166753   0.0330616
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019635   -0.0043012   0.0003741
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010839    0.0000740   0.0020937
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0003319   -0.0055039   0.0061677
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0013554   -0.0010506   0.0037615
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0004984   -0.0000958   0.0010926
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0014761   -0.0000972   0.0030493
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0108591   -0.0180623   0.0397805
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023800   -0.0049588   0.0001989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010864   -0.0000432   0.0022160
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0010172   -0.0052325   0.0072669
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0012719   -0.0012728   0.0038165


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1161938   -0.3100824   0.4037678
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0391883   -0.0864337   0.0060025
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0260256    0.0015548   0.0498967
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0028380   -0.0483273   0.0515061
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0073655   -0.0057920   0.0203509
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0416328   -0.0089127   0.0896461
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0652078   -0.0052026   0.1306862
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1480263   -0.3460906   0.4607650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0421655   -0.0882963   0.0020098
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0267793   -0.0013683   0.0541357
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0087528   -0.0464951   0.0610840
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0066444   -0.0067432   0.0198540
