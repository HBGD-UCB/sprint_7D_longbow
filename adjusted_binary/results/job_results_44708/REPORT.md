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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        single    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      176     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       87     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      182     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1       15     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       32     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        4     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      132     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                   1      117     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      171     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       69     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                   0      248     302
0-24 months   ki0047075b-MAL-ED          PERU                           0                   1       20     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                   0       28     302
0-24 months   ki0047075b-MAL-ED          PERU                           1                   1        6     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      143     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       33     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      108     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       28     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      222     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       29     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        7     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        3     261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1643    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      508    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      169    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       55    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0      225     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       27     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       27     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        3     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                   0     5760    8127
0-24 months   ki1119695-PROBIT           BELARUS                        0                   1     2070    8127
0-24 months   ki1119695-PROBIT           BELARUS                        1                   0      209    8127
0-24 months   ki1119695-PROBIT           BELARUS                        1                   1       88    8127
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     9992   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     3013   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      636   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      242   13883
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      343     581
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      181     581
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       42     581
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       15     581
0-24 months   ki1135781-COHORTS          INDIA                          0                   0     3568    5376
0-24 months   ki1135781-COHORTS          INDIA                          0                   1     1799    5376
0-24 months   ki1135781-COHORTS          INDIA                          1                   0        5    5376
0-24 months   ki1135781-COHORTS          INDIA                          1                   1        4    5376
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0     1754    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1     1177    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       41    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       33    3005
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      204     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1       59     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      186     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1       11     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       33     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        3     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   0      171     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                   1       78     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                   1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      197     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                   1       43     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                   0      260     302
0-6 months    ki0047075b-MAL-ED          PERU                           0                   1        8     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                   0       31     302
0-6 months    ki0047075b-MAL-ED          PERU                           1                   1        3     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      160     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       16     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      120     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       16     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      242     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        9     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        8     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1852    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      299    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      192    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       32    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0      231     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1        7     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0       25     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        2     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                   0     5804    8126
0-6 months    ki1119695-PROBIT           BELARUS                        0                   1     2025    8126
0-6 months    ki1119695-PROBIT           BELARUS                        1                   0      210    8126
0-6 months    ki1119695-PROBIT           BELARUS                        1                   1       87    8126
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   0    10612   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     2312   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      688   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      179   13791
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   0      305     460
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   1      114     460
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0       37     460
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1        4     460
0-6 months    ki1135781-COHORTS          INDIA                          0                   0     3873    5170
0-6 months    ki1135781-COHORTS          INDIA                          0                   1     1289    5170
0-6 months    ki1135781-COHORTS          INDIA                          1                   0        7    5170
0-6 months    ki1135781-COHORTS          INDIA                          1                   1        1    5170
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   0     2253    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                   1      677    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   0       49    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                   1       25    3004
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      196     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       44     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      172     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        5     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   0      169     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0                   1       64     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   0        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1                   1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      199     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                   1       36     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           0                   0      225     270
6-24 months   ki0047075b-MAL-ED          PERU                           0                   1       13     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   0       28     270
6-24 months   ki0047075b-MAL-ED          PERU                           1                   1        4     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      123     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       21     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0      100     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1       15     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      213     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       24     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        2     245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1527    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      293    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      153    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1       30    2003
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   0      214     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                   1       22     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   0       29     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                   1        1     266
6-24 months   ki1119695-PROBIT           BELARUS                        0                   0     7621    7975
6-24 months   ki1119695-PROBIT           BELARUS                        0                   1       65    7975
6-24 months   ki1119695-PROBIT           BELARUS                        1                   0      288    7975
6-24 months   ki1119695-PROBIT           BELARUS                        1                   1        1    7975
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     9065   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1      922   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      583   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       80   10650
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      400     539
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1       85     539
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       43     539
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       11     539
6-24 months   ki1135781-COHORTS          INDIA                          0                   0     4358    5025
6-24 months   ki1135781-COHORTS          INDIA                          0                   1      658    5025
6-24 months   ki1135781-COHORTS          INDIA                          1                   0        6    5025
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        3    5025
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   0     1983    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                   1      720    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   0       51    2775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                   1       21    2775


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
![](/tmp/1021bf13-f248-4da5-91fc-1a60579fcf84/32aadf76-d2cb-4977-833e-24ab29c9b3a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1021bf13-f248-4da5-91fc-1a60579fcf84/32aadf76-d2cb-4977-833e-24ab29c9b3a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1021bf13-f248-4da5-91fc-1a60579fcf84/32aadf76-d2cb-4977-833e-24ab29c9b3a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1021bf13-f248-4da5-91fc-1a60579fcf84/32aadf76-d2cb-4977-833e-24ab29c9b3a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0746269   0.0431126   0.1061411
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1764706   0.0481180   0.3048232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1875000   0.1297435   0.2452565
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2058824   0.1378167   0.2739480
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2361692   0.2182165   0.2541219
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2455357   0.1891600   0.3019114
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.2643678   0.1695010   0.3592346
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2962963   0.1989969   0.3935957
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2316801   0.2244287   0.2389316
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2756264   0.2460696   0.3051833
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3454198   0.3046714   0.3861683
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2631579   0.1487436   0.3775722
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4015694   0.3838126   0.4193263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4459459   0.3343704   0.5575215
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0909091   0.0483692   0.1334490
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1176471   0.0634111   0.1718830
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1390051   0.1243822   0.1536281
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1428571   0.0970226   0.1886917
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.2586537   0.1627750   0.3545324
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.2929293   0.1962264   0.3896322
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1788920   0.1722841   0.1854998
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2064591   0.1795154   0.2334027
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2310580   0.2157874   0.2463287
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3378378   0.2316359   0.4440398
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1458333   0.0880761   0.2035906
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1304348   0.0687629   0.1921066
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1609890   0.1441001   0.1778780
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1639344   0.1102824   0.2175865
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0923200   0.0866424   0.0979976
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1206637   0.0958679   0.1454594
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1752577   0.1413906   0.2091248
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2037037   0.0961832   0.3112242
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2663707   0.2497026   0.2830388
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2916667   0.1866587   0.3966747


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0860927   0.0544044   0.1177810
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2370526   0.2199455   0.2541598
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2344594   0.2274118   0.2415070
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3373494   0.2988711   0.3758277
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4026622   0.3851243   0.4202002
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1393684   0.1254369   0.1532999
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1806250   0.1742041   0.1870460
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2336884   0.2185531   0.2488237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612581   0.1451483   0.1773679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0940845   0.0885396   0.0996294
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1781076   0.1457776   0.2104376
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2670270   0.2505637   0.2834903


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 2.3647059   1.0198121   5.483200
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0980392   0.6988340   1.725288
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0396601   0.8163063   1.324127
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1207729   0.8256715   1.521346
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1896852   1.0639402   1.330292
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.7618494   0.4855366   1.195408
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.1105077   0.8613453   1.431746
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2941176   0.6709558   2.496052
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0277114   0.7332172   1.440488
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1325153   0.8291101   1.546949
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1540990   1.0077194   1.321741
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.4621342   1.0604221   2.016024
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8944099   0.4826969   1.657291
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0182958   0.7221302   1.435927
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3070150   1.0546889   1.619708
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1623094   0.6625358   2.039079
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0949653   0.7597984   1.577983


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0114658   -0.0038516   0.0267833
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0080128   -0.0309120   0.0469376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0008834   -0.0046979   0.0064647
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0011668   -0.0019050   0.0042386
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0027793    0.0008464   0.0047122
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0080704   -0.0201512   0.0040103
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0010928   -0.0017424   0.0039280
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0116550   -0.0184270   0.0417370
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0003633   -0.0041745   0.0049011
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0012527   -0.0018266   0.0043321
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017331   -0.0000146   0.0034807
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0026304   -0.0001165   0.0053773
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0068372   -0.0443657   0.0306913
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0002691   -0.0048700   0.0054082
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017645    0.0001756   0.0033534
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0028499   -0.0084669   0.0141666
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0006563   -0.0021064   0.0034190


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1331803   -0.0572850   0.2893340
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0409836   -0.1801393   0.2206747
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0037266   -0.0200977   0.0269946
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0043942   -0.0079811   0.0166176
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0118540    0.0035785   0.0200608
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0239231   -0.0603720   0.0112728
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0027139   -0.0043527   0.0097308
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1136364   -0.2313691   0.3619781
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0026068   -0.0304897   0.0346403
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0048200   -0.0079711   0.0174488
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0095948   -0.0001247   0.0192198
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0112560   -0.0005611   0.0229336
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0491898   -0.3567549   0.1886528
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0016688   -0.0307137   0.0330338
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0187543    0.0017494   0.0354696
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0160009   -0.0495937   0.0774961
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0024579   -0.0079418   0.0127503
