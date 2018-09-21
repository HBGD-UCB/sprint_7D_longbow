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
0-24 months   ki1119695-PROBIT           BELARUS                        0                   0    12068   16898
0-24 months   ki1119695-PROBIT           BELARUS                        0                   1     4137   16898
0-24 months   ki1119695-PROBIT           BELARUS                        1                   0      494   16898
0-24 months   ki1119695-PROBIT           BELARUS                        1                   1      199   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     9992   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     3013   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      636   13883
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      242   13883
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      804    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      295    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       77    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       21    1197
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
0-6 months    ki1119695-PROBIT           BELARUS                        0                   0    12178   16895
0-6 months    ki1119695-PROBIT           BELARUS                        0                   1     4024   16895
0-6 months    ki1119695-PROBIT           BELARUS                        1                   0      497   16895
0-6 months    ki1119695-PROBIT           BELARUS                        1                   1      196   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   0    10612   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                   1     2312   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      688   13791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                   1      179   13791
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   0      703     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                   1      187     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   0       60     959
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                   1        9     959
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
6-24 months   ki1119695-PROBIT           BELARUS                        0                   0    15756   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0                   1      163   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                   0      675   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1                   1        4   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   0     9065   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                   1      922   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   0      583   10650
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                   1       80   10650
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   0      886    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                   1      131    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   0       81    1111
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                   1       13    1111
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
![](/tmp/85465b1f-76cc-4197-9e80-e0f8038c9af7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/85465b1f-76cc-4197-9e80-e0f8038c9af7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/85465b1f-76cc-4197-9e80-e0f8038c9af7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/85465b1f-76cc-4197-9e80-e0f8038c9af7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0746269   0.0431126   0.1061411
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.1764706   0.0481180   0.3048232
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1826399   0.1275021   0.2377777
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1999479   0.1355517   0.2643441
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2346592   0.2169289   0.2523894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1819915   0.1513164   0.2126665
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.2505533   0.1943098   0.3067968
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2505764   0.1953847   0.3057680
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2325282   0.2253070   0.2397494
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2564177   0.2315432   0.2812921
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2675551   0.2414938   0.2936164
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1354752   0.0821239   0.1888264
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4072394   0.3895901   0.4248887
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.9796342   0.9742163   0.9850521
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0863303   0.0445495   0.1281110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1098066   0.0566222   0.1629909
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1383731   0.1238557   0.1528904
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1143951   0.0832681   0.1455221
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.2433516   0.1863730   0.3003301
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.2687566   0.2104748   0.3270384
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1797434   0.1731575   0.1863293
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2099414   0.1866112   0.2332716
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2101124   0.1833337   0.2368910
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1304348   0.0509292   0.2099404
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2309442   0.2156766   0.2462119
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1824475   0.1268710   0.2380240
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1315777   0.0762732   0.1868823
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1164071   0.0567534   0.1760608
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1605461   0.1438453   0.1772469
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2167486   0.1797026   0.2537945
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0923785   0.0867303   0.0980267
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1000680   0.0812434   0.1188926
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1297303   0.1090104   0.1504503
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1386571   0.0774402   0.1998739
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2667128   0.2500376   0.2833879
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3544045   0.2966659   0.4121430


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0860927   0.0544044   0.1177810
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1955128   0.1514355   0.2395901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2370526   0.2199455   0.2541598
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2344594   0.2274118   0.2415070
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2639933   0.2390117   0.2889749
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4026622   0.3851243   0.4202002
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1393684   0.1254369   0.1532999
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1806250   0.1742041   0.1870460
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2043796   0.1788445   0.2299146
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2336884   0.2185531   0.2488237
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612581   0.1451483   0.1773679
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0940845   0.0885396   0.0996294
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1296130   0.1098539   0.1493721
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2670270   0.2505637   0.2834903


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 2.3647059   1.0198121   5.4832004
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0947659   0.7152345   1.6756916
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7755566   0.6452237   0.9322162
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0000923   0.7943376   1.2591429
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1027380   0.9962439   1.2206158
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.5063449   0.3377522   0.7590924
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.4055486   2.3022316   2.5135021
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2719360   0.6411668   2.5232453
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8267153   0.6177516   1.1063642
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1043965   0.8727993   1.3974478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1680059   1.0392710   1.3126873
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 0.6207859   0.3330396   1.1571449
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.7900067   0.5784437   1.0789477
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8847022   0.4569833   1.7127495
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3500707   1.1075816   1.6456493
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0832387   0.8893939   1.3193321
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0688098   0.6684568   1.7089426
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3287870   1.1162011   1.5818608


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.0114658   -0.0038516    0.0267833
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0128729   -0.0230581    0.0488039
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0023935   -0.0030841    0.0078711
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0060451    0.0036883    0.0084020
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0019312    0.0000410    0.0038214
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0035618   -0.0104914    0.0033679
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0045772   -0.0080017   -0.0011526
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0162338   -0.0134253    0.0458930
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009954   -0.0035180    0.0055087
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0064265    0.0040447    0.0088082
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0008816   -0.0008535    0.0026168
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0057328   -0.0119082    0.0004426
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0027442   -0.0000283    0.0055167
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0074184   -0.0282412    0.0430780
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0007120   -0.0042647    0.0056887
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017060    0.0001463    0.0032657
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0001174   -0.0063512    0.0061165
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0003142   -0.0024668    0.0030953


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1331803   -0.0572850    0.2893340
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0658418   -0.1368846    0.2324186
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0100968   -0.0132609    0.0329161
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0235588    0.0152013    0.0318453
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0082368    0.0001483    0.0162599
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0134919   -0.0400892    0.0124253
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0113673   -0.0199547   -0.0028521
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1582800   -0.1834365    0.4013261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071420   -0.0257625    0.0389909
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0257287    0.0169417    0.0344373
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0048810   -0.0047665    0.0144359
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0280498   -0.0586145    0.0016325
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0117430   -0.0001838    0.0235275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0533714   -0.2420165    0.2785074
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0044153   -0.0269175    0.0347922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0181328    0.0014596    0.0345275
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0009056   -0.0501757    0.0460530
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0011768   -0.0092922    0.0115373
