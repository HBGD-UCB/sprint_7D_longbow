---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

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







# Results Detail

## Results Plots
![](/tmp/e5dfef0c-9625-4f88-b146-e1cb8b2d2bc1/afdc08af-3161-4bf7-b6b3-4cfc49caa581/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5dfef0c-9625-4f88-b146-e1cb8b2d2bc1/afdc08af-3161-4bf7-b6b3-4cfc49caa581/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0747007   0.0431277   0.1062737
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2110130   0.1458620   0.2761641
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2594600   0.2183404   0.3005796
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2440474   0.1509892   0.3371056
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2271302   0.2118942   0.2423662
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2293245   0.1180889   0.3405602
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.4538379   0.4309902   0.4766856
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1235711   0.0723402   0.1748021
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2005093   0.1604355   0.2405831
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2508367   0.1558717   0.3458017
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1803925   0.1642309   0.1965541
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2390155   0.2172588   0.2607722
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1892926   0.1232022   0.2553830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1675073   0.1266727   0.2083419
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0915536   0.0784750   0.1046322
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1451790   0.0957884   0.1945697
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3757570   0.3369498   0.4145643


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.0860927   0.0544044   0.1177810
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2370526   0.2199455   0.2541598
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2655346   0.1719990   0.3590703
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2344594   0.2274118   0.2415070
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3373494   0.2988711   0.3758277
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.4026622   0.3851243   0.4202002
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1393684   0.1254369   0.1532999
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2599065   0.1654090   0.3544039
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1806250   0.1742041   0.1870460
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2336884   0.2185531   0.2488237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1389961   0.0967835   0.1812087
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1612581   0.1451483   0.1773679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0940845   0.0885396   0.0996294
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1781076   0.1457776   0.2104376
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2670270   0.2505637   0.2834903


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1525024   0.9442828   1.4066355
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.9265438   0.7626455   1.1256651
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9136385   0.7935021   1.0519636
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0880452   1.0145850   1.1668243
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0322687   0.9723187   1.0959151
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.4710567   0.9208697   2.3499607
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.8872380   0.8480261   0.9282630
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8300007   0.6453329   1.0675127
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.6950721   0.5778421   0.8360853
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0361580   0.9817701   1.0935589
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0012890   0.9225131   1.0867918
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9777125   0.9159597   1.0436285
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7342925   0.5797137   0.9300892
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9626930   0.7727162   1.1993767
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0276443   0.9021109   1.1706462
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2268134   0.9195531   1.6367420
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.7106375   0.6447152   0.7833004


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0113920   -0.0039771    0.0267612
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0155002   -0.0569874    0.0259869
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0224073   -0.0590241    0.0142094
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0214872    0.0052957    0.0376788
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0073292   -0.0062609    0.0209193
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1080249    0.0002285    0.2158212
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0511757   -0.0710038   -0.0313475
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0210070   -0.0528817    0.0108677
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0611409   -0.0979920   -0.0242898
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0090698   -0.0041611    0.0223007
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0002325   -0.0145491    0.0150142
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0053271   -0.0209183    0.0102641
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0502965   -0.0948594   -0.0057335
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0062492   -0.0430924    0.0305940
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0025309   -0.0093986    0.0144605
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0329286   -0.0093675    0.0752246
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.1087300   -0.1444566   -0.0730034


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1323228   -0.0590048    0.2890838
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0792798   -0.3112252    0.1116363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0945248   -0.2602361    0.0493968
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0809206    0.0143753    0.1429729
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0312600   -0.0284694    0.0875206
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.3202165   -0.0859299    0.5744610
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.1270933   -0.1792090   -0.0772809
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.2048183   -0.5495877    0.0632430
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.4386996   -0.7305766   -0.1960502
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0348963   -0.0185684    0.0855545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0012874   -0.0839954    0.0798606
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0227956   -0.0917510    0.0418046
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.3618551   -0.7249893   -0.0751656
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0387527   -0.2941362    0.1662336
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0269006   -0.1085111    0.1457710
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1848801   -0.0874847    0.3890302
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.4071872   -0.5510725   -0.2766495
