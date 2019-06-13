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
![](/tmp/3ff819a8-3d62-42a7-849f-0e54e77d74a7/d9f8bf8f-e7b4-449c-b6ca-a8a63bffdf7c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ff819a8-3d62-42a7-849f-0e54e77d74a7/d9f8bf8f-e7b4-449c-b6ca-a8a63bffdf7c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.0747266   0.0431539   0.1062992
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2208834   0.1534946   0.2882723
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2506600   0.2114026   0.2899173
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2449159   0.1588588   0.3309731
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2233195   0.2080227   0.2386162
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2661849   0.1456920   0.3866777
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.4481375   0.4215521   0.4747228
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.0981103   0.0520142   0.1442064
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1501697   0.1124665   0.1878728
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2479628   0.1598038   0.3361218
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1790230   0.1649777   0.1930682
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2731735   0.2318365   0.3145104
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.1647302   0.0993488   0.2301116
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1683585   0.1256042   0.2111128
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0911754   0.0777615   0.1045893
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2561808   0.1788550   0.3335066
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3299852   0.2786081   0.3813622


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
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1521033   0.9442995   1.4056365
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8851403   0.7312030   1.0714854
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9457139   0.8231733   1.0864964
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0841869   1.0323431   1.1386342
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0498835   0.9873993   1.1163217
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2673500   0.8184251   1.9625204
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.8985239   0.8517031   0.9479187
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0453959   0.7565880   1.4444486
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9280731   0.7343659   1.1728753
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0481672   0.9584705   1.1462579
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0089490   0.9411419   1.0816415
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.8554580   0.7426364   0.9854195
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8437805   0.6378186   1.1162508
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9578255   0.7597663   1.2075157
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0319069   0.9017997   1.1807852
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.6952419   0.5327025   0.9073757
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.8092092   0.6979210   0.9382430


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0113662   -0.0039787    0.0267110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0253706   -0.0683341    0.0175929
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0136073   -0.0484092    0.0211945
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0206187    0.0060579    0.0351795
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0111399   -0.0025649    0.0248448
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0711645   -0.0454673    0.1877963
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0454752   -0.0690075   -0.0219429
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0044538   -0.0272462    0.0361538
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0108012   -0.0459324    0.0243299
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0119437   -0.0115461    0.0354335
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0016021   -0.0108522    0.0140563
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0394850   -0.0780232   -0.0009468
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0257341   -0.0718961    0.0204280
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0071004   -0.0461209    0.0319200
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0029091   -0.0093798    0.0151981
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0780732   -0.1458943   -0.0102521
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0629581   -0.1116255   -0.0142908


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1320222   -0.0589860    0.2885785
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1297644   -0.3676093    0.0667162
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0574022   -0.2148111    0.0796104
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0776498    0.0313298    0.1217548
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0475133   -0.0127615    0.1042008
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2109520   -0.2218589    0.4904512
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.1129364   -0.1741181   -0.0549428
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0434246   -0.3217233    0.3076943
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0775014   -0.3617190    0.1473944
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0459537   -0.0433289    0.1275959
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0088696   -0.0625390    0.0754793
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.1689645   -0.3465540   -0.0147963
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1851423   -0.5678438    0.1041440
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0440315   -0.3161942    0.1718534
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0309203   -0.1088936    0.1531059
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.4383484   -0.8772206   -0.1020794
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.2357744   -0.4328270   -0.0658219
