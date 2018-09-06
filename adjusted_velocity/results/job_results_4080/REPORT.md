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

* arm
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/801deaaf-3a0a-41c2-8074-5f651adb7c16/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/801deaaf-3a0a-41c2-8074-5f651adb7c16/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level    baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                3.5816051   3.5031559   3.6600542
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                3.4392086   3.2955246   3.5828926
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                3.6482792   3.5221310   3.7744273
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                4.1155921   3.9387030   4.2924812
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                4.3101110   3.9286057   4.6916163
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                3.9856659   3.8577142   4.1136176
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight         NA                3.6033629   3.5147574   3.6919683
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight           NA                3.6203007   3.4861247   3.7544767
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                3.5061338   3.2978296   3.7144380
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight         NA                3.3564932   3.2755173   3.4374691
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           NA                3.2603545   2.6770107   3.8436982
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   NA                3.2709227   3.1704564   3.3713890
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                3.4823970   3.3904619   3.5743321
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                3.5604546   3.1632140   3.9576952
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                3.4631262   3.3150404   3.6112120
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                3.6154495   3.5897278   3.6411711
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                3.5908863   3.5410972   3.6406754
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                3.6250412   3.5396429   3.7104395
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                3.3234331   3.2578762   3.3889899
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                3.3034460   3.1938522   3.4130398
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                3.2930411   3.1365620   3.4495202
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                3.4673672   3.4198145   3.5149200
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                3.4785486   3.4101079   3.5469893
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                3.5768821   3.5035640   3.6502001
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                3.3088922   3.2600718   3.3577126
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                3.2465557   3.1411541   3.3519574
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                3.2862095   3.2172763   3.3551427
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight         NA                2.8525195   2.7436882   2.9613507
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight           NA                2.9268372   2.8138459   3.0398285
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                2.8103382   2.6870484   2.9336280
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                3.3524034   3.3253868   3.3794201
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                3.3197924   3.2361803   3.4034045
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                3.3658873   3.3220067   3.4097679
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                1.9643115   1.9038952   2.0247279
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                2.1335712   2.0012290   2.2659133
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                2.0430830   1.9674244   2.1187416
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                2.2058442   2.0770162   2.3346721
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                1.8073439   1.5400611   2.0746267
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                2.1316203   2.0265533   2.2366872
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight         NA                1.8437503   1.7676414   1.9198593
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight           NA                1.7869460   1.6607158   1.9131762
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                1.7234913   1.6027249   1.8442578
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight         NA                1.9963008   1.9088654   2.0837362
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           NA                2.0838224   1.6034396   2.5642052
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   NA                2.0420961   1.9397817   2.1444105
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                1.9919710   1.8559054   2.1280365
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                1.8828421   1.1631569   2.6025273
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                1.9626680   1.8622477   2.0630883
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                1.8477963   1.7711620   1.9244306
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                1.7267020   1.4276058   2.0257982
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                1.8025313   1.6659660   1.9390965
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                1.9523504   1.9191354   1.9855654
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                1.9401541   1.8504221   2.0298861
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                2.0620015   1.9371941   2.1868090
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                1.8189040   1.7615144   1.8762937
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                1.7839415   1.6800556   1.8878274
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                1.9545476   1.8291182   2.0799770
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                1.9671091   1.9255500   2.0086682
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                1.9344731   1.8550521   2.0138942
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                1.9377124   1.8634145   2.0120103
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                2.0266868   1.9795479   2.0738257
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                1.9285869   1.8444349   2.0127388
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                1.9562892   1.8901616   2.0224168
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                1.7797498   1.7331897   1.8263100
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                1.6597981   1.5717268   1.7478694
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                1.8215529   1.7659394   1.8771664
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight         NA                2.0922281   2.0517069   2.1327494
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight           NA                2.0574932   1.9935305   2.1214559
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                2.0838323   2.0370995   2.1305651
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                1.9807872   1.9556174   2.0059570
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                2.0043591   1.9244589   2.0842594
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                1.9760988   1.9353119   2.0168856
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                1.1176019   1.0892038   1.1460000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                1.1031709   1.0333382   1.1730035
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                1.1591496   1.1042725   1.2140267
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                1.3160509   1.2450489   1.3870529
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                1.3081554   1.1199732   1.4963375
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                1.4326914   1.3715239   1.4938588
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                1.1345273   1.0971116   1.1719431
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                1.1156137   1.0503859   1.1808415
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                1.1151024   1.0654566   1.1647482
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                1.1591353   1.0886010   1.2296697
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                1.2991051   1.1592788   1.4389314
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                1.2011279   1.1496348   1.2526210
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                1.0069335   0.9663155   1.0475516
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                1.0821873   0.9424256   1.2219491
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.9695941   0.8910303   1.0481579
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                1.1027855   1.0900679   1.1155030
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                1.0967907   1.0660293   1.1275520
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                1.1261805   1.0124776   1.2398835
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                1.1682500   1.1404995   1.1960006
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                1.1385412   1.0932899   1.1837924
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                1.1997116   1.1458264   1.2535968
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                1.1698668   1.1489697   1.1907639
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                1.0894301   1.0495759   1.1292843
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                1.2512532   1.2190525   1.2834538
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                1.2144528   1.1930391   1.2358665
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                1.1907227   1.1519154   1.2295300
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                1.2574726   1.2238599   1.2910852
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                1.1928592   1.1629212   1.2227971
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                1.2248694   1.1478349   1.3019039
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                1.1982169   1.1671454   1.2292885
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                1.4698110   1.4332888   1.5063332
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                1.4515867   1.4116908   1.4914826
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                1.4753647   1.4270172   1.5237122
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                1.2023842   1.1889425   1.2158258
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                1.1355242   1.0915224   1.1795260
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                1.1700548   1.1481947   1.1919149
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight         NA                1.2865530   1.2565963   1.3165097
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight           NA                1.2383804   1.1890350   1.2877258
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                1.2500366   1.1971952   1.3028781
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.8453807   0.8261023   0.8646591
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.8520724   0.8135635   0.8905814
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.9018891   0.8743628   0.9294154
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                0.9920702   0.9383350   1.0458055
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                0.9533311   0.7516123   1.1550498
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                0.9801195   0.9429959   1.0172431
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.8772941   0.8554690   0.8991192
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.8752906   0.8400235   0.9105578
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.8892817   0.8509540   0.9276094
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                0.8731915   0.8389688   0.9074143
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                0.7031632   0.6202431   0.7860834
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                0.8826920   0.8524858   0.9128983
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.7565438   0.7301448   0.7829428
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.8076382   0.7288092   0.8864671
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.7946148   0.7522376   0.8369919
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.7546119   0.7369613   0.7722624
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.7129754   0.6825492   0.7434017
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.7889361   0.7520956   0.8257766
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.8481299   0.8336561   0.8626036
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.8308622   0.8083993   0.8533251
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.9101161   0.8881949   0.9320373
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.8615014   0.8467232   0.8762796
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.8417665   0.8161287   0.8674042
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.9131947   0.8924255   0.9339638
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.8660027   0.7984508   0.9335546
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                1.0132507   0.9548160   1.0716855
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.8489990   0.8056386   0.8923595
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.6900952   0.6581029   0.7220876
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.7196275   0.6223119   0.8169431
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.7211466   0.6657511   0.7765421
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         NA                0.8421575   0.8228865   0.8614285
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           NA                0.8374279   0.7980530   0.8768027
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                0.7946424   0.7366602   0.8526245


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.1423965   -0.3059516    0.0211586
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0666741   -0.0815977    0.2149460
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight      0.1945189   -0.2259999    0.6150377
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.1299261   -0.3482411    0.0883888
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight      0.0169378   -0.1426141    0.1764897
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.0972291   -0.3227796    0.1283215
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           Normal weight     -0.0961387   -0.6850759    0.4927985
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   Normal weight     -0.0855705   -0.2146076    0.0434667
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0780576   -0.3293604    0.4854755
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0192708   -0.1932589    0.1547172
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     -0.0245632   -0.0808617    0.0317353
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.0095917   -0.0872129    0.1063963
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0199871   -0.1473217    0.1073476
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     -0.0303920   -0.1994584    0.1386745
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight      0.0111814   -0.0719140    0.0942767
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.1095148    0.0223885    0.1966412
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0623365   -0.1784944    0.0538215
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     -0.0226827   -0.1071632    0.0617978
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.0743178    0.0003526    0.1482830
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0421812   -0.0804664   -0.0038960
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     -0.0326111   -0.1204097    0.0551876
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight      0.0134838   -0.0379844    0.0649520
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight      0.1692596    0.0246378    0.3138814
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0787714   -0.0178096    0.1753525
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.3985002   -0.6952101   -0.1017904
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0742239   -0.2404638    0.0920160
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0568043   -0.2043104    0.0907017
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.1202590   -0.2630995    0.0225815
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           Normal weight      0.0875216   -0.4007535    0.5757967
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   Normal weight      0.0457953   -0.0887899    0.1803805
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight     -0.1091289   -0.8415636    0.6233058
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight     -0.0293030   -0.1984127    0.1398066
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     -0.1210943   -0.4292371    0.1870484
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0452650   -0.2022720    0.1117419
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     -0.0121963   -0.0905788    0.0661862
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.1096511   -0.0064109    0.2257132
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0349625   -0.1533901    0.0834650
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.1356436   -0.0020655    0.2733527
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0326359   -0.1222237    0.0569518
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     -0.0293967   -0.1144737    0.0556803
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0980999   -0.1949128   -0.0012870
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     -0.0703976   -0.1518013    0.0110062
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     -0.1199517   -0.2193349   -0.0205686
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0418030   -0.0305853    0.1141914
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     -0.0347350   -0.0973916    0.0279217
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0083958   -0.0390600    0.0222683
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0235719   -0.0601434    0.1072873
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0046884   -0.0525447    0.0431679
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0144310   -0.0894671    0.0606051
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0415477   -0.0200748    0.1031702
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.0078956   -0.2090269    0.1932358
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight      0.1166405    0.0229242    0.2103567
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0189136   -0.0936528    0.0558255
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.0194250   -0.0811896    0.0423397
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight      0.1399697   -0.0166396    0.2965791
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight      0.0419926   -0.0453381    0.1293232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0752538   -0.0701225    0.2206301
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0373394   -0.1250990    0.0504202
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     -0.0059948   -0.0407526    0.0287630
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.0233951   -0.1002559    0.1470460
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0297089   -0.0825385    0.0231207
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0314616   -0.0291699    0.0920931
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0804367   -0.1254170   -0.0354563
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0813864    0.0430268    0.1197460
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0237301   -0.0679754    0.0205151
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0430198    0.0030620    0.0829775
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0320103   -0.0507037    0.1147242
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0053578   -0.0377197    0.0484352
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     -0.0182243   -0.0548903    0.0184417
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight      0.0055537   -0.0249285    0.0360359
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     -0.0668600   -0.1128304   -0.0208895
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0323294   -0.0579632   -0.0066956
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     -0.0481726   -0.1055610    0.0092158
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     -0.0365164   -0.0972399    0.0242072
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight      0.0066917   -0.0363033    0.0496868
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0565084    0.0227826    0.0902342
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.0387392   -0.2474925    0.1700141
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0119507   -0.0772626    0.0533611
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0020034   -0.0434743    0.0394674
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight      0.0119876   -0.0321203    0.0560955
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight     -0.1700283   -0.2597331   -0.0803235
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight      0.0095005   -0.0361461    0.0551471
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0510943   -0.0316961    0.1338848
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0380709   -0.0111036    0.0872455
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0416364   -0.0767345   -0.0065384
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0343242   -0.0064065    0.0750550
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0172677   -0.0437306    0.0091952
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0619862    0.0359354    0.0880371
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0197350   -0.0493255    0.0098555
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0516933    0.0262302    0.0771563
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.1472480    0.0785511    0.2159450
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0170036   -0.0715185    0.0375112
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0295323   -0.0729345    0.1319991
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight      0.0310514   -0.0330054    0.0951082
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     -0.0047296   -0.0485449    0.0390856
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     -0.0475151   -0.1086430    0.0136128
