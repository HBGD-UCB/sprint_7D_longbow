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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mbmi                   n_cell       n
-------------  -------------------------  -----------------------------  --------------------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight             157     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight                32     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese        55     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight              68     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight                 9     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese       103     180
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight             120     201
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight                39     201
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese        42     201
0-3 months     ki0047075b-MAL-ED          NEPAL                          Normal weight             102     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          Underweight                 0     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          Overweight or Obese        73     175
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight             146     270
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight                 5     270
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese       119     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              94     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 4     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese       125     223
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight             160     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                12     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese        57     229
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight             756    1074
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight               263    1074
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese        55    1074
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight             400     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight                94     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese        72     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight             401     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight               118     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese       114     633
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight             459     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                66     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese       195     720
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight            7460   12593
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight               485   12593
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese      4648   12593
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            4710    6904
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight               337    6904
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese      1857    6904
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight             147     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight                30     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese        54     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight              81     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight                 9     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese       117     207
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight             136     228
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight                46     228
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese        46     228
3-6 months     ki0047075b-MAL-ED          NEPAL                          Normal weight             131     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Underweight                 0     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          Overweight or Obese       102     233
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight             145     266
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight                 5     266
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese       116     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              93     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 6     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese       138     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight             165     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                13     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese        61     239
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight             726    1036
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight               256    1036
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese        54    1036
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight             363     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight                91     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese        69     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight             363     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight               101     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese       109     573
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight             440     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                64     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese       191     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight             838    1623
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                27    1623
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese       758    1623
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight            6540   11058
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight               433   11058
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese      4085   11058
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            3652    5375
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight               254    5375
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese      1469    5375
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight             142     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                26     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese        52     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight              74     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                 9     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese       110     193
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight             131     223
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight                44     223
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese        48     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          Normal weight             127     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          Underweight                 0     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese       103     230
6-12 months    ki0047075b-MAL-ED          PERU                           Normal weight             125     236
6-12 months    ki0047075b-MAL-ED          PERU                           Underweight                 4     236
6-12 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese       107     236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              91     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 6     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese       131     228
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight             154     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                13     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese        56     223
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight             727    1042
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight               259    1042
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese        56    1042
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight             331     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                89     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese        62     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight             341     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                96     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese       108     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight             429     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                60     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese       187     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight             552    1059
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                17    1059
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese       490    1059
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight            6403   10803
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight               424   10803
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese      3976   10803
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight            2872    4133
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight               208    4133
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese      1053    4133
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight             335     433
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight                76     433
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese        22     433
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight             131     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                27     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese        48     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight              62     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                 6     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese        96     164
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight             132     224
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                45     224
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese        47     224
12-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight             126     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                 0     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese       100     226
12-24 months   ki0047075b-MAL-ED          PERU                           Normal weight              99     191
12-24 months   ki0047075b-MAL-ED          PERU                           Underweight                 3     191
12-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese        89     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight              89     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                 7     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese       130     226
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight             141     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                11     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese        55     207
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight             286     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                79     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese        56     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight             285     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                84     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese        89     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight             312     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                39     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese       144     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight               1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                 0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese         1       2
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight            1488    2520
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight                89    2520
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese       943    2520
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight             194     268
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                19     268
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese        55     268
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight             235     309
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                56     309
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese        18     309


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/fd361b1b-6fb9-42c8-97a9-201116d4f1fa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fd361b1b-6fb9-42c8-97a9-201116d4f1fa/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level    baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                3.5768962   3.4979412   3.6558513
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                3.3993019   3.2449736   3.5536303
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                3.6205480   3.4885572   3.7525388
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                4.1155921   3.9387030   4.2924812
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                4.3101110   3.9286057   4.6916163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                3.9856659   3.8577142   4.1136176
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight         NA                3.6038658   3.5128676   3.6948640
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight           NA                3.5992026   3.4459956   3.7524096
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                3.4769975   3.2467715   3.7072235
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight         NA                3.3564932   3.2755173   3.4374691
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           NA                3.2603545   2.6770107   3.8436982
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   NA                3.2709227   3.1704564   3.3713890
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                3.4850357   3.3930209   3.5770505
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                3.5645980   3.1622003   3.9669958
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                3.4548457   3.3060105   3.6036808
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                3.6134474   3.5869152   3.6399795
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                3.5779473   3.5235179   3.6323768
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                3.5578287   3.4415315   3.6741259
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                3.3257154   3.2599165   3.3915144
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                3.2958636   3.1809863   3.4107409
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                3.2641451   3.0931812   3.4351090
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                3.4674479   3.4184862   3.5164096
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                3.4994585   3.4156159   3.5833011
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                3.5275597   3.4280819   3.6270376
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                3.3067160   3.2573733   3.3560587
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                3.2810164   3.1497640   3.4122688
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                3.3011974   3.2347077   3.3676871
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight         NA                2.8544234   2.7451412   2.9637057
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight           NA                2.9002260   2.7534943   3.0469576
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                2.8043622   2.6793486   2.9293759
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                3.3555146   3.3285030   3.3825262
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                3.3420648   3.2443516   3.4397781
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                3.3463268   3.3035355   3.3891181
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                1.9437562   1.8816204   2.0058920
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                1.8966679   1.7350001   2.0583357
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                1.9027123   1.8152205   1.9902041
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                2.2058442   2.0770162   2.3346721
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                1.8073439   1.5400611   2.0746267
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                2.1316203   2.0265533   2.2366872
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight         NA                1.8657520   1.7881620   1.9433419
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight           NA                1.9149479   1.7763992   2.0534966
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                1.8895226   1.7477358   2.0313093
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight         NA                1.9963008   1.9088654   2.0837362
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           NA                2.0838224   1.6034396   2.5642052
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   NA                2.0420961   1.9397817   2.1444105
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                1.9919710   1.8559054   2.1280365
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                1.8828421   1.1631569   2.6025273
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                1.9626680   1.8622477   2.0630883
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                1.8460921   1.7684699   1.9237143
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                1.6711338   1.3354701   2.0067976
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                1.8206822   1.6755204   1.9658439
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                1.9540797   1.9213111   1.9868483
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                1.9359328   1.8448726   2.0269929
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                2.0622011   1.9197532   2.2046489
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                1.8188493   1.7611982   1.8765004
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                1.7920579   1.6841912   1.8999247
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                1.9591025   1.8206232   2.0975818
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                1.9710415   1.9289397   2.0131433
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                1.9573981   1.8676219   2.0471743
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                1.9540621   1.8674090   2.0407151
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                2.0293049   1.9823590   2.0762508
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                1.9570629   1.8571227   2.0570030
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                1.9679735   1.8996046   2.0363424
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                1.7782837   1.7299672   1.8266002
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                1.7520157   1.5448842   1.9591473
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                1.8219764   1.7661707   1.8777821
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight         NA                2.0963669   2.0556987   2.1370351
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight           NA                2.0940354   1.9939714   2.1940995
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                2.0813386   2.0347345   2.1279427
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                1.9815996   1.9563615   2.0068377
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                2.0017202   1.9063959   2.0970445
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                1.9739590   1.9347668   2.0131511
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                1.1153503   1.0866014   1.1440993
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                1.0691232   0.9918373   1.1464091
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                1.1344128   1.0775729   1.1912526
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                1.3160509   1.2450489   1.3870529
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                1.3081554   1.1199732   1.4963375
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                1.4326914   1.3715239   1.4938588
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                1.1311904   1.0933209   1.1690598
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                1.0992156   1.0309177   1.1675135
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                1.1054363   1.0537939   1.1570788
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                1.1591353   1.0886010   1.2296697
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                1.2991051   1.1592788   1.4389314
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                1.2011279   1.1496348   1.2526210
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                1.0049168   0.9632204   1.0466133
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                1.0821423   0.9198871   1.2443975
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.9751845   0.8909191   1.0594498
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                1.1027153   1.0887091   1.1167214
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                1.0928277   1.0594668   1.1261887
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                1.1312836   1.0023466   1.2602205
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                1.1673390   1.1393810   1.1952970
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                1.1423125   1.0950420   1.1895830
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                1.2078930   1.1496186   1.2661675
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                1.1708550   1.1498313   1.1918788
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                1.1078895   1.0639856   1.1517934
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                1.2385378   1.2009583   1.2761172
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                1.2142652   1.1928759   1.2356546
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                1.2097755   1.1549374   1.2646137
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                1.2658311   1.2309080   1.3007542
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                1.1955797   1.1650047   1.2261547
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                1.2403812   1.0788460   1.4019164
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                1.1975067   1.1660517   1.2289618
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                1.4710006   1.4339401   1.5080611
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                1.4637565   1.4047571   1.5227559
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                1.4754806   1.4284270   1.5225343
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                1.2053713   1.1917123   1.2190304
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                1.1512044   1.0949386   1.2074703
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                1.1870996   1.1648845   1.2093147
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight         NA                1.2859727   1.2555093   1.3164361
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight           NA                1.2435460   1.1854468   1.3016452
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                1.2941345   1.2097065   1.3785625
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.8410667   0.8212406   0.8608929
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.8196023   0.7734448   0.8657599
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.8742111   0.8423474   0.9060747
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                0.9920702   0.9383350   1.0458055
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                0.9533311   0.7516123   1.1550498
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                0.9801195   0.9429959   1.0172431
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.8778148   0.8556551   0.8999746
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.8771337   0.8391487   0.9151188
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.8915132   0.8507246   0.9323018
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                0.8731915   0.8389688   0.9074143
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                0.7031632   0.6202431   0.7860834
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                0.8826920   0.8524858   0.9128983
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.7534881   0.7260960   0.7808802
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.7817417   0.6839785   0.8795050
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.7960986   0.7473249   0.8448723
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.7540954   0.7363258   0.7718649
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.7136785   0.6817588   0.7455983
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.7901062   0.7508241   0.8293883
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.8477793   0.8328101   0.8627485
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.8374974   0.8112971   0.8636977
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.9077740   0.8801855   0.9353625
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.8628435   0.8480578   0.8776292
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.8570883   0.8201298   0.8940467
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.9081597   0.8863664   0.9299529
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.8626754   0.7940814   0.9312693
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.9393254   0.8525254   1.0261254
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.8470222   0.8013319   0.8927126
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.6948345   0.6633314   0.7263375
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.7372791   0.6119910   0.8625672
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.7398658   0.6832200   0.7965116
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         NA                0.8429202   0.8235979   0.8622425
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           NA                0.8427377   0.8016268   0.8838485
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                0.8045547   0.7468583   0.8622511


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3169985   3.2535876   3.3804093
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019059   3.5794591   3.6243527
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4842409   3.4451170   3.5233649
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8377102   2.7235014   2.9519189
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3523868   3.3301424   3.3746313
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1465654   2.0670402   2.2260907
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8804733   1.8192508   1.9416958
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0179168   1.9519428   2.0838909
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9721457   1.8908533   2.0534381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9552312   1.9134079   1.9970545
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654067   1.9302800   2.0005334
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7982528   1.7619937   1.8345119
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0907239   2.0499674   2.1314804
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9804622   1.9597476   2.0011769
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3821617   1.3363222   1.4280012
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1193380   1.0909904   1.1476855
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1869461   1.1457857   1.2281065
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.1017930   1.0897842   1.1138017
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1971906   1.1754499   1.2189312
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4723651   1.4336785   1.5110518
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1979900   1.1865747   1.2094054
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2789407   1.2528587   1.3050227
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9836574   0.9529821   1.0143327
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8805522   0.8631583   0.8979461
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8733901   0.8508889   0.8958912
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8595250   0.8059960   0.9130539
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7070851   0.6798868   0.7342834
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406522   0.8238073   0.8574972


### Parameter: ATE


agecat         studyid                    country                        intervention_level    baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  --------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.1775943   -0.3509469   -0.0042416
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0436518   -0.1101516    0.1974551
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight      0.1945189   -0.2259999    0.6150377
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.1299261   -0.3482411    0.0883888
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0046632   -0.1828571    0.1735306
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.1268683   -0.3744257    0.1206891
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           Normal weight     -0.0961387   -0.6850759    0.4927985
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   Normal weight     -0.0855705   -0.2146076    0.0434667
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0795623   -0.3332218    0.4923464
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0301901   -0.2051719    0.1447917
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     -0.0355001   -0.0980741    0.0270740
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     -0.0556187   -0.1844928    0.0732555
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0298518   -0.1622387    0.1025351
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     -0.0615703   -0.2447591    0.1216185
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight      0.0320106   -0.0650813    0.1291024
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0601119   -0.0507624    0.1709861
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0256996   -0.1659205    0.1145213
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     -0.0055186   -0.0883170    0.0772799
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.0458025   -0.0461364    0.1377415
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0500612   -0.0900153   -0.0101072
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     -0.0134498   -0.1148278    0.0879282
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0091878   -0.0597914    0.0414158
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0470883   -0.2202857    0.1261091
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     -0.0410439   -0.1483550    0.0662672
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.3985002   -0.6952101   -0.1017904
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0742239   -0.2404638    0.0920160
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight      0.0491959   -0.1095994    0.2079912
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight      0.0237706   -0.1378577    0.1853988
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           Normal weight      0.0875216   -0.4007535    0.5757967
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   Normal weight      0.0457953   -0.0887899    0.1803805
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight     -0.1091289   -0.8415636    0.6233058
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight     -0.0293030   -0.1984127    0.1398066
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     -0.1749583   -0.5194802    0.1695636
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0254099   -0.1900220    0.1392022
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     -0.0181469   -0.0990622    0.0627684
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.1081214   -0.0262431    0.2424858
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0267914   -0.1490979    0.0955151
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.1402532   -0.0097474    0.2902538
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0136434   -0.1128015    0.0855147
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     -0.0169794   -0.1133190    0.0793601
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0722420   -0.1826592    0.0381752
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     -0.0613314   -0.1442665    0.0216037
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     -0.0262680   -0.2389602    0.1864242
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0436926   -0.0301230    0.1175083
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     -0.0023315   -0.0965403    0.0918773
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0150284   -0.0438810    0.0138243
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0201206   -0.0784881    0.1187293
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0076406   -0.0542559    0.0389747
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0462271   -0.1286868    0.0362327
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0190624   -0.0446342    0.0827591
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.0078956   -0.2090269    0.1932358
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight      0.1166405    0.0229242    0.2103567
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0319748   -0.1100690    0.0461194
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.0257540   -0.0897934    0.0382853
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight      0.1399697   -0.0166396    0.2965791
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight      0.0419926   -0.0453381    0.1293232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0772255   -0.0903017    0.2447526
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0297324   -0.1237497    0.0642849
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     -0.0098876   -0.0485421    0.0287670
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.0285683   -0.1115818    0.1687183
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0250265   -0.0799460    0.0298930
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0405540   -0.0240800    0.1051881
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0629656   -0.1116436   -0.0142875
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0676827    0.0246221    0.1107433
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0044897   -0.0633516    0.0543723
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0515659    0.0106131    0.0925186
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0448015   -0.1196019    0.2092048
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0019270   -0.0419392    0.0457933
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     -0.0072441   -0.0588350    0.0443468
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight      0.0044801   -0.0237350    0.0326951
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     -0.0541669   -0.1120669    0.0037331
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0182717   -0.0443501    0.0078066
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     -0.0424267   -0.1080280    0.0231746
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight      0.0081618   -0.0815940    0.0979176
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0214644   -0.0716998    0.0287710
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0331444   -0.0043839    0.0706726
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.0387392   -0.2474925    0.1700141
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0119507   -0.0772626    0.0533611
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0006811   -0.0446574    0.0432953
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight      0.0136984   -0.0327210    0.0601178
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight     -0.1700283   -0.2597331   -0.0803235
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight      0.0095005   -0.0361461    0.0551471
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0282536   -0.0732746    0.1297818
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0426105   -0.0133288    0.0985497
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0404168   -0.0769494   -0.0038843
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0360108   -0.0071035    0.0791251
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0102820   -0.0404570    0.0198931
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0599947    0.0286067    0.0913826
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0057552   -0.0455616    0.0340511
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0453162    0.0189806    0.0716518
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.0766500   -0.0154181    0.1687181
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0156532   -0.0715791    0.0402728
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0424446   -0.0867434    0.1716327
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight      0.0450313   -0.0197853    0.1098479
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     -0.0001825   -0.0456078    0.0452428
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     -0.0383655   -0.0992114    0.0224805
