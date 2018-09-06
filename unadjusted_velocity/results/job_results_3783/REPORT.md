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

**Outcome Variable:** y_rate_haz

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
![](/tmp/ba7c5dc1-9744-4a26-af83-4ebb8a54cfc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ba7c5dc1-9744-4a26-af83-4ebb8a54cfc2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level    baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  --------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                -0.0327745   -0.0734690    0.0079200
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                -0.0973296   -0.1774763   -0.0171828
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                -0.0002360   -0.0660661    0.0655940
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                 0.2201664    0.1343810    0.3059519
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                 0.3585008    0.1357292    0.5812724
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                 0.1603567    0.0932028    0.2275106
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight         NA                -0.0094898   -0.0557653    0.0367857
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight           NA                 0.0059316   -0.0733688    0.0852321
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                -0.0764044   -0.1855040    0.0326951
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight         NA                -0.1432917   -0.1837315   -0.1028519
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           NA                -0.1683951   -0.4989930    0.1622028
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   NA                -0.1738774   -0.2267740   -0.1209809
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0414233   -0.0882767    0.0054301
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.0080470   -0.2038247    0.1877307
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0675067   -0.1381131    0.0030997
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                 0.0164304    0.0042823    0.0285786
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                 0.0196304   -0.0116581    0.0509190
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                -0.0289241   -0.1017305    0.0438823
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                -0.1152883   -0.1475827   -0.0829940
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                -0.1122864   -0.1716046   -0.0529682
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                -0.1493012   -0.2308143   -0.0677881
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                -0.0475424   -0.0699729   -0.0251119
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                -0.0271459   -0.0680712    0.0137794
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                -0.0313419   -0.0774674    0.0147836
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                -0.1238117   -0.1472510   -0.1003724
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                -0.1420810   -0.2035445   -0.0806175
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                -0.1112420   -0.1433506   -0.0791335
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight         NA                -0.4268704   -0.4838159   -0.3699249
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight           NA                -0.3954028   -0.4720402   -0.3187655
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                -0.4565304   -0.5216748   -0.3913859
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                -0.1493634   -0.1627847   -0.1359421
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                -0.1460963   -0.1958106   -0.0963819
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                -0.1596330   -0.1809915   -0.1382745
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                -0.0172635   -0.0467279    0.0122010
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                -0.0286659   -0.1026376    0.0453059
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                -0.0334196   -0.0739353    0.0070960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                 0.0844449    0.0252676    0.1436221
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                -0.0847461   -0.2034780    0.0339859
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                 0.0536815    0.0049182    0.1024449
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight         NA                -0.0491789   -0.0847344   -0.0136234
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight           NA                -0.0256463   -0.0882630    0.0369705
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                -0.0356689   -0.1045515    0.0332137
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight         NA                 0.0159385   -0.0249830    0.0568601
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           NA                 0.0610216   -0.1589844    0.2810276
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   NA                 0.0399891   -0.0087775    0.0887557
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                 0.0098812   -0.0542303    0.0739926
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                -0.0275228   -0.3769600    0.3219143
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                -0.0127808   -0.0599351    0.0343734
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0620872   -0.0989665   -0.0252078
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.1376564   -0.2923715    0.0170586
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0791197   -0.1482609   -0.0099785
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                -0.0115855   -0.0255668    0.0023958
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                -0.0129258   -0.0560705    0.0302190
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                 0.0304465   -0.0351974    0.0960903
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                -0.0585887   -0.0851705   -0.0320069
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                -0.0613416   -0.1106430   -0.0120402
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                 0.0033146   -0.0607931    0.0674223
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                -0.0240906   -0.0438203   -0.0043609
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                -0.0263835   -0.0685737    0.0158067
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                -0.0397261   -0.0803332    0.0008810
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                 0.0361780    0.0143551    0.0580009
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                 0.0083046   -0.0359935    0.0526027
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                 0.0112991   -0.0200738    0.0426721
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0925920   -0.1150812   -0.0701028
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.1040058   -0.2033041   -0.0047075
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0725644   -0.0983820   -0.0467467
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight         NA                 0.0494201    0.0302410    0.0685993
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight           NA                 0.0527073    0.0075420    0.0978726
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                 0.0410267    0.0192350    0.0628184
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                 0.0030563   -0.0087491    0.0148618
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                 0.0173202   -0.0271399    0.0617804
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                -0.0044529   -0.0228103    0.0139045
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                -0.0801706   -0.0925511   -0.0677901
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                -0.0928033   -0.1240873   -0.0615193
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                -0.0762604   -0.0992519   -0.0532689
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                -0.0245913   -0.0549503    0.0057677
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                -0.0202116   -0.0933952    0.0529720
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                 0.0268277    0.0012126    0.0524428
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                -0.0736523   -0.0897165   -0.0575882
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                -0.0866091   -0.1168193   -0.0563990
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                -0.0843679   -0.1061558   -0.0625801
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                -0.0627096   -0.0926394   -0.0327798
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                 0.0100999   -0.0500907    0.0702905
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                -0.0520390   -0.0737035   -0.0303744
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.1219619   -0.1393441   -0.1045798
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.0857045   -0.1549869   -0.0164221
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.1385515   -0.1746704   -0.1024325
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                -0.0855555   -0.0904083   -0.0807027
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                -0.0841231   -0.0990896   -0.0691567
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                -0.0808173   -0.1322490   -0.0293855
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                -0.0539166   -0.0654471   -0.0423860
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                -0.0575185   -0.0777312   -0.0373058
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                -0.0423790   -0.0667258   -0.0180322
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                -0.0633241   -0.0718246   -0.0548236
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                -0.0849343   -0.1018979   -0.0679707
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                -0.0405374   -0.0562332   -0.0248416
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                -0.0374709   -0.0464297   -0.0285122
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                -0.0307288   -0.0541097   -0.0073479
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                -0.0182873   -0.0328206   -0.0037539
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0588566   -0.0718428   -0.0458703
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.0342248   -0.1040203    0.0355706
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0609152   -0.0743731   -0.0474572
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                 0.0425838    0.0265173    0.0586504
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                 0.0424629    0.0158611    0.0690647
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                 0.0434206    0.0237732    0.0630680
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                -0.0455300   -0.0513537   -0.0397063
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                -0.0664549   -0.0902230   -0.0426868
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                -0.0563470   -0.0658540   -0.0468400
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight         NA                -0.0042327   -0.0170630    0.0085976
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight           NA                -0.0184163   -0.0425806    0.0057480
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                -0.0053128   -0.0399286    0.0293031
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                -0.0188940   -0.0252346   -0.0125535
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                -0.0214394   -0.0378886   -0.0049901
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                -0.0129774   -0.0251927   -0.0007620
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                 0.0034762   -0.0150092    0.0219615
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                 0.0031939   -0.0532002    0.0595881
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                -0.0033572   -0.0163905    0.0096761
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                -0.0104176   -0.0171149   -0.0037202
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                -0.0107111   -0.0220950    0.0006728
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                -0.0074428   -0.0188932    0.0040075
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                -0.0125598   -0.0243508   -0.0007688
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                -0.0568653   -0.0838330   -0.0298976
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                -0.0126284   -0.0227870   -0.0024698
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0421397   -0.0514967   -0.0327827
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.0356599   -0.0650927   -0.0062272
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0328478   -0.0486894   -0.0170062
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                -0.0397155   -0.0454681   -0.0339629
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                -0.0459954   -0.0565002   -0.0354907
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                -0.0362115   -0.0481005   -0.0243224
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                -0.0117427   -0.0166135   -0.0068719
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                -0.0075912   -0.0154926    0.0003102
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                 0.0027153   -0.0065027    0.0119333
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                -0.0091289   -0.0142860   -0.0039719
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                -0.0052194   -0.0175021    0.0070633
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                 0.0014873   -0.0056166    0.0085911
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                -0.0412205   -0.0645824   -0.0178586
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                -0.0167779   -0.0420238    0.0084681
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                -0.0490919   -0.0641319   -0.0340519
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                -0.0563258   -0.0676493   -0.0450023
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                -0.0443233   -0.0893236    0.0006769
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                -0.0451325   -0.0650067   -0.0252583
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         NA                -0.0156706   -0.0222288   -0.0091123
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           NA                -0.0120149   -0.0265566    0.0025267
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                -0.0330373   -0.0528893   -0.0131853


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1572370   -0.1898325   -0.1246414
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0148914    0.0006226    0.0291602
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0408226   -0.0589776   -0.0226676
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4366058   -0.4962029   -0.3770087
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1519662   -0.1630450   -0.1408873
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597008    0.0230362    0.0963653
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0417054   -0.0700621   -0.0133486
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0272742   -0.0038596    0.0584080
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0042614   -0.0425659    0.0340432
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0097258   -0.0280274    0.0085758
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0274690   -0.0439444   -0.0109937
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0834282   -0.1002569   -0.0665996
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0464482    0.0273518    0.0655445
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0016781   -0.0080142    0.0113704
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0049191   -0.0143947    0.0242329
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0785153   -0.0906466   -0.0663840
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0546626   -0.0720558   -0.0372694
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0849448   -0.0896851   -0.0802045
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0594137   -0.0686815   -0.0501459
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0428870    0.0262524    0.0595217
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0493390   -0.0542083   -0.0444698
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0067771   -0.0177257    0.0041716
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0005342   -0.0110966    0.0100282
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098524   -0.0150104   -0.0046944
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0139716   -0.0215484   -0.0063947
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0433028   -0.0606990   -0.0259066
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0531778   -0.0628925   -0.0434630
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0160197   -0.0217996   -0.0102398


### Parameter: ATE


agecat         studyid                    country                        intervention_level    baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  --------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0645551   -0.1544414    0.0253312
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0325385   -0.0448543    0.1099312
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight      0.1383344   -0.1003837    0.3770525
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0598098   -0.1687538    0.0491342
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight      0.0154214   -0.0763935    0.1072364
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.0669147   -0.1854226    0.0515933
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           Normal weight     -0.0251034   -0.3581655    0.3079587
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   Normal weight     -0.0305857   -0.0971697    0.0359982
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0333763   -0.1679298    0.2346824
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0260834   -0.1108213    0.0586545
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight      0.0032000   -0.0275358    0.0339358
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     -0.0453546   -0.1173411    0.0266320
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight      0.0030019   -0.0645375    0.0705414
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     -0.0340128   -0.1216901    0.0536644
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight      0.0203965   -0.0262726    0.0670657
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0162005   -0.0350897    0.0674907
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0182693   -0.0840504    0.0475118
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0125696   -0.0271841    0.0523233
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.0314676   -0.0165570    0.0794922
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0296600   -0.0498249   -0.0094950
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0032671   -0.0482271    0.0547613
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0102696   -0.0354949    0.0149557
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0114024   -0.0910264    0.0682215
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     -0.0161562   -0.0662528    0.0339405
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.1691909   -0.3018530   -0.0365288
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0307633   -0.1074433    0.0459166
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight      0.0235326   -0.0484747    0.0955399
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight      0.0135100   -0.0640078    0.0910278
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           Normal weight      0.0450831   -0.1786963    0.2688625
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   Normal weight      0.0240506   -0.0396106    0.0877118
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight     -0.0374040   -0.3926737    0.3178657
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight     -0.0226620   -0.1022472    0.0569232
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     -0.0755693   -0.2346190    0.0834804
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0170325   -0.0953944    0.0613294
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     -0.0013403   -0.0406827    0.0380021
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.0420319   -0.0204433    0.1045072
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0027529   -0.0587638    0.0532580
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0619033   -0.0074970    0.1313035
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0022929   -0.0488683    0.0442826
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     -0.0156355   -0.0607819    0.0295109
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0278734   -0.0772552    0.0215083
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     -0.0248788   -0.0630953    0.0133376
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     -0.0114138   -0.1132269    0.0903993
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0200276   -0.0142115    0.0542667
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.0032872   -0.0397004    0.0462748
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0083934   -0.0218399    0.0050531
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0142639   -0.0317369    0.0602647
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0075092   -0.0293350    0.0143165
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0126327   -0.0462774    0.0210120
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0039102   -0.0222028    0.0300231
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight      0.0043797   -0.0748510    0.0836104
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight      0.0514191    0.0116975    0.0911406
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0129568   -0.0471724    0.0212588
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.0107156   -0.0377853    0.0163540
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight      0.0728095    0.0055882    0.1400307
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight      0.0106706   -0.0262772    0.0476185
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0362574   -0.0351722    0.1076871
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0165895   -0.0566734    0.0234944
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight      0.0014324   -0.0153553    0.0182200
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.0047382   -0.0506003    0.0600767
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0036019   -0.0268722    0.0196684
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0115376   -0.0154016    0.0384768
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0216102   -0.0405844   -0.0026360
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0227867    0.0049368    0.0406365
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight      0.0067421   -0.0182964    0.0317805
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0191837    0.0021109    0.0362564
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0246317   -0.0463615    0.0956250
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0020586   -0.0207605    0.0166432
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     -0.0001209   -0.0229176    0.0226757
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight      0.0008368   -0.0103718    0.0120454
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     -0.0209249   -0.0453961    0.0035463
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0108169   -0.0219659    0.0003320
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     -0.0141836   -0.0415429    0.0131757
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     -0.0010801   -0.0379972    0.0358370
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0025453   -0.0201743    0.0150837
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0059167   -0.0078462    0.0196796
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.0002822   -0.0596288    0.0590643
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0068334   -0.0294514    0.0157847
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0002935   -0.0135014    0.0129144
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight      0.0029747   -0.0102904    0.0162399
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight     -0.0443055   -0.0737382   -0.0148728
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight     -0.0000686   -0.0156321    0.0154949
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0064798   -0.0244045    0.0373641
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0092919   -0.0091067    0.0276906
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0062799   -0.0182566    0.0056968
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0035040   -0.0097036    0.0167117
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight      0.0041515   -0.0051305    0.0134336
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0144580    0.0040323    0.0248838
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight      0.0039095   -0.0094119    0.0172310
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0106162    0.0018378    0.0193946
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.0244426   -0.0039981    0.0528833
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0078714   -0.0292532    0.0135104
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0120025   -0.0344006    0.0584055
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight      0.0111933   -0.0116803    0.0340670
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight      0.0036556   -0.0122965    0.0196078
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     -0.0173667   -0.0382740    0.0035405
