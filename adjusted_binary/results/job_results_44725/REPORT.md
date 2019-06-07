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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        single    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      242     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       21     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      194     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        3     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       35     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      225     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       24     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      231     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        9     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      265     302
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1        3     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       34     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      170     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        6     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      128     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        8     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      246     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        5     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        8     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        2     261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2008    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      143    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      209    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       15    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      250     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1        2     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       29     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0     7171    8127
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1      659    8127
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      275    8127
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1       22    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    11832   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1173   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      781   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       97   13883
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      473     581
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1       51     581
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       51     581
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        6     581
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     4814    5376
0-24 months   ki1135781-COHORTS          INDIA                          0                    1      553    5376
0-24 months   ki1135781-COHORTS          INDIA                          1                    0        7    5376
0-24 months   ki1135781-COHORTS          INDIA                          1                    1        2    5376
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0     2571    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      360    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       54    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       20    3005
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      247     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       16     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      195     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1        2     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       36     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      229     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       20     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      233     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      267     302
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1        1     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       34     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1        0     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      174     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      133     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        3     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      249     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        2     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        9     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2080    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       71    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      216    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        8    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      238     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1        0     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       26     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1        1     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0     7177    8126
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1      652    8126
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      275    8126
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1       22    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0    12052   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      872   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      792   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       75   13791
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0      384     460
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1       35     460
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0       40     460
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1        1     460
0-6 months    ki1135781-COHORTS          INDIA                          0                    0     4794    5170
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      368    5170
0-6 months    ki1135781-COHORTS          INDIA                          1                    0        8    5170
0-6 months    ki1135781-COHORTS          INDIA                          1                    1        0    5170
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0     2730    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      200    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       65    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1        9    3004
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      235     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1        5     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      176     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      228     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1        5     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      233     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0      236     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1        2     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       32     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        0     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      140     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1        4     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0      110     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1        5     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      234     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        1     245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1745    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       75    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      175    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        8    2003
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      234     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1        2     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0       30     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        0     266
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0     7678    7975
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1        8    7975
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      289    7975
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1        0    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9664   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      323   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      640   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       23   10650
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      469     539
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1       16     539
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       49     539
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1        5     539
6-24 months   ki1135781-COHORTS          INDIA                          0                    0     4825    5025
6-24 months   ki1135781-COHORTS          INDIA                          0                    1      191    5025
6-24 months   ki1135781-COHORTS          INDIA                          1                    0        7    5025
6-24 months   ki1135781-COHORTS          INDIA                          1                    1        2    5025
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0     2526    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1      177    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       61    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       11    2775


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
![](/tmp/264bb4ea-49be-4eee-924c-143acafed1f3/a14e6039-957d-4314-9389-4ebaa24cbb0c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/264bb4ea-49be-4eee-924c-143acafed1f3/a14e6039-957d-4314-9389-4ebaa24cbb0c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/264bb4ea-49be-4eee-924c-143acafed1f3/a14e6039-957d-4314-9389-4ebaa24cbb0c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/264bb4ea-49be-4eee-924c-143acafed1f3/a14e6039-957d-4314-9389-4ebaa24cbb0c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0340909   0.0072389   0.0609429
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0588235   0.0192152   0.0984319
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0664807   0.0559507   0.0770107
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0669643   0.0342237   0.0997049
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0841635   0.0277171   0.1406099
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0740741   0.0302147   0.1179334
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0901961   0.0852726   0.0951196
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1104784   0.0897420   0.1312148
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0973282   0.0719278   0.1227287
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1052632   0.0255242   0.1850021
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1228250   0.1109354   0.1347145
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2702703   0.1705848   0.3699557
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0330079   0.0254563   0.0405595
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0357143   0.0114068   0.0600217
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0832801   0.0265798   0.1399804
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0740741   0.0302056   0.1179426
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0674714   0.0631467   0.0717961
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0865052   0.0677928   0.1052175
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0682594   0.0591229   0.0773959
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1216216   0.0482307   0.1950126
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0412088   0.0320744   0.0503431
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0437158   0.0140850   0.0733467
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0323420   0.0288723   0.0358118
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0346908   0.0207608   0.0486208
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0329897   0.0170791   0.0489002
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0925926   0.0152099   0.1699753
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0654828   0.0561554   0.0748102
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1527778   0.0696610   0.2358946


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0448718   0.0218634   0.0678801
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0665263   0.0565020   0.0765506
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0837948   0.0281977   0.1393918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0914788   0.0866831   0.0962745
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0981067   0.0738986   0.1223148
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1264559   0.1145706   0.1383412
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0332632   0.0260497   0.0404766
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0829436   0.0271087   0.1387786
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0686680   0.0644472   0.0728888
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0695739   0.0604740   0.0786738
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414378   0.0327076   0.0501681
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0324883   0.0291209   0.0358556
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0389610   0.0226101   0.0553120
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0677477   0.0583957   0.0770998


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.7254902   0.6121797   4.863468
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0072740   0.6024838   1.684030
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.8801214   0.5501776   1.407934
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2248688   1.0073879   1.489301
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0815273   0.4853714   2.409910
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2004505   1.5028070   3.221959
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0819920   0.5276998   2.218509
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.8894569   0.5519728   1.433284
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2821022   1.0231536   1.606588
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.7817568   0.9603060   3.305881
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0608379   0.5199252   2.164498
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0726223   0.7078477   1.625376
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 2.8067130   1.0694065   7.366364
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.3330979   1.3295250   4.094203


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0107809   -0.0101223   0.0316841
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0000456   -0.0031981   0.0032893
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0003687   -0.0017689   0.0010315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012827   -0.0000677   0.0026331
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0007785   -0.0074340   0.0089910
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0036309    0.0009915   0.0062704
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002553   -0.0021456   0.0026561
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0003365   -0.0017494   0.0010764
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011966   -0.0000133   0.0024065
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0013145   -0.0005579   0.0031870
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002291   -0.0026040   0.0030621
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0001462   -0.0007475   0.0010400
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0059713   -0.0020866   0.0140293
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0022650    0.0000343   0.0044956


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.2402597   -0.3745652   0.5800816
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0006856   -0.0492821   0.0482738
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0044002   -0.0196590   0.0106302
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0140219   -0.0008360   0.0286593
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0079349   -0.0793884   0.0881937
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0287130    0.0077382   0.0492444
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0076738   -0.0671750   0.0772729
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0040567   -0.0197137   0.0113600
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0174259   -0.0003236   0.0348605
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0188938   -0.0082968   0.0453512
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0055276   -0.0652363   0.0715907
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0045006   -0.0233893   0.0316305
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1532646   -0.0688988   0.3292528
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0334321    0.0002274   0.0655341
