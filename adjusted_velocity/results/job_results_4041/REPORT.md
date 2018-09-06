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
![](/tmp/d03583c6-ebcd-491c-95f2-4928b466f56c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/d03583c6-ebcd-491c-95f2-4928b466f56c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level    baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  --------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                -0.0309067   -0.0712209    0.0094074
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                -0.0919124   -0.1622755   -0.0215493
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                 0.0137984   -0.0477423    0.0753392
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                 0.2201664    0.1343810    0.3059519
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                 0.3585008    0.1357292    0.5812724
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                 0.1603567    0.0932028    0.2275106
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight         NA                -0.0096743   -0.0554339    0.0360854
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight           NA                 0.0085475   -0.0690447    0.0861397
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                -0.0750520   -0.1783003    0.0281964
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight         NA                -0.1432917   -0.1837315   -0.1028519
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           NA                -0.1683951   -0.4989930    0.1622028
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   NA                -0.1738774   -0.2267740   -0.1209809
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0425325   -0.0893595    0.0042946
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.0097887   -0.2032183    0.1836410
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0640297   -0.1343647    0.0063053
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                 0.0177273    0.0064726    0.0289820
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                 0.0236508   -0.0053257    0.0526273
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                -0.0112436   -0.0605204    0.0380331
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                -0.1162474   -0.1484322   -0.0840625
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                -0.1091067   -0.1654648   -0.0527485
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                -0.1354666   -0.2100986   -0.0608346
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                -0.0476694   -0.0695517   -0.0257871
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                -0.0267765   -0.0620233    0.0084702
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                -0.0162934   -0.0541574    0.0215705
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                -0.1235895   -0.1468208   -0.1003583
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                -0.1692006   -0.2183987   -0.1200025
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                -0.1183943   -0.1511492   -0.0856394
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight         NA                -0.4283474   -0.4851142   -0.3715805
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight           NA                -0.3817484   -0.4418000   -0.3216969
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                -0.4529539   -0.5171487   -0.3887591
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                -0.1511204   -0.1645577   -0.1376831
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                -0.1590489   -0.2008827   -0.1172152
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                -0.1499639   -0.1720222   -0.1279055
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                -0.0078443   -0.0363046    0.0206160
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                 0.0809665    0.0239127    0.1380203
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                 0.0291570   -0.0050725    0.0633865
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                 0.0844449    0.0252676    0.1436221
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                -0.0847461   -0.2034780    0.0339859
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                 0.0536815    0.0049182    0.1024449
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight         NA                -0.0590912   -0.0926134   -0.0255690
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight           NA                -0.0636268   -0.1192121   -0.0080415
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                -0.0888312   -0.1434741   -0.0341882
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight         NA                 0.0159385   -0.0249830    0.0568601
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           NA                 0.0610216   -0.1589844    0.2810276
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   NA                 0.0399891   -0.0087775    0.0887557
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                 0.0098812   -0.0542303    0.0739926
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                -0.0275228   -0.3769600    0.3219143
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                -0.0127808   -0.0599351    0.0343734
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0614275   -0.0978423   -0.0250127
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.1089441   -0.2439096    0.0260214
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0873958   -0.1522701   -0.0225214
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                -0.0117563   -0.0259972    0.0024845
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                -0.0117050   -0.0529590    0.0295490
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                 0.0306866   -0.0271640    0.0885372
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                -0.0584672   -0.0849401   -0.0319942
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                -0.0663052   -0.1135892   -0.0190212
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                 0.0002638   -0.0573610    0.0578886
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                -0.0261298   -0.0456238   -0.0066358
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                -0.0384637   -0.0758078   -0.0011196
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                -0.0523742   -0.0871528   -0.0175956
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                 0.0345367    0.0125859    0.0564876
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                -0.0081611   -0.0456076    0.0292855
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                 0.0065097   -0.0245845    0.0376039
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0926842   -0.1143484   -0.0710201
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.1481198   -0.1917894   -0.1044502
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0731441   -0.0989191   -0.0473691
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight         NA                 0.0472454    0.0281368    0.0663539
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight           NA                 0.0388734    0.0101437    0.0676031
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                 0.0424490    0.0205889    0.0643090
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                 0.0025746   -0.0092024    0.0143515
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                 0.0167564   -0.0206321    0.0541449
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                -0.0037471   -0.0228690    0.0153747
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                -0.0797571   -0.0918411   -0.0676730
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                -0.0832672   -0.1103465   -0.0561879
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                -0.0693202   -0.0907603   -0.0478801
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                -0.0245913   -0.0549503    0.0057677
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                -0.0202116   -0.0933952    0.0529720
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                 0.0268277    0.0012126    0.0524428
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                -0.0732866   -0.0890459   -0.0575272
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                -0.0842038   -0.1124324   -0.0559753
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                -0.0858358   -0.1064489   -0.0652227
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                -0.0627096   -0.0926394   -0.0327798
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                 0.0100999   -0.0500907    0.0702905
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                -0.0520390   -0.0737035   -0.0303744
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.1221776   -0.1393629   -0.1049924
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.0902632   -0.1537104   -0.0268160
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.1321221   -0.1649076   -0.0993366
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                -0.0856835   -0.0901201   -0.0812469
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                -0.0822717   -0.0965384   -0.0680050
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                -0.0848460   -0.1311580   -0.0385339
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                -0.0535564   -0.0650090   -0.0421038
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                -0.0587482   -0.0781607   -0.0393357
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                -0.0463147   -0.0691313   -0.0234980
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                -0.0637027   -0.0721785   -0.0552269
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                -0.0917659   -0.1071064   -0.0764254
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                -0.0367087   -0.0502397   -0.0231777
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                -0.0375433   -0.0465365   -0.0285501
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                -0.0373084   -0.0540828   -0.0205340
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                -0.0208504   -0.0348972   -0.0068036
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0599654   -0.0726777   -0.0472531
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.0435076   -0.0737626   -0.0132526
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0604609   -0.0737855   -0.0471364
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                 0.0420636    0.0262114    0.0579159
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                 0.0376758    0.0195536    0.0557981
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                 0.0433923    0.0233048    0.0634798
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                -0.0467402   -0.0524706   -0.0410099
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                -0.0731190   -0.0919041   -0.0543339
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                -0.0640803   -0.0734695   -0.0546911
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight         NA                -0.0039206   -0.0166658    0.0088247
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight           NA                -0.0068023   -0.0298974    0.0162927
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                 0.0026140   -0.0230464    0.0282743
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                -0.0182955   -0.0244817   -0.0121092
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                -0.0173210   -0.0316310   -0.0030110
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                -0.0098374   -0.0210555    0.0013806
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         NA                 0.0034762   -0.0150092    0.0219615
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           NA                 0.0031939   -0.0532002    0.0595881
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   NA                -0.0033572   -0.0163905    0.0096761
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                -0.0103202   -0.0168001   -0.0038404
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                -0.0081367   -0.0180689    0.0017955
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                -0.0032047   -0.0134361    0.0070268
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         NA                -0.0125598   -0.0243508   -0.0007688
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           NA                -0.0568653   -0.0838330   -0.0298976
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   NA                -0.0126284   -0.0227870   -0.0024698
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                -0.0429971   -0.0521025   -0.0338918
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           NA                -0.0356942   -0.0582348   -0.0131536
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                -0.0323128   -0.0477352   -0.0168904
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                -0.0395439   -0.0452583   -0.0338295
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                -0.0462058   -0.0563243   -0.0360873
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                -0.0354640   -0.0465852   -0.0243428
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                -0.0111940   -0.0160103   -0.0063777
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                -0.0055061   -0.0127172    0.0017051
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                 0.0071481   -0.0011672    0.0154635
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                -0.0096486   -0.0147437   -0.0045535
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                -0.0063192   -0.0143738    0.0017354
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                 0.0044059   -0.0023436    0.0111554
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                -0.0405845   -0.0633068   -0.0178622
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                 0.0042170   -0.0144367    0.0228706
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                -0.0487332   -0.0628781   -0.0345882
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                -0.0575358   -0.0689691   -0.0461025
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                -0.0418559   -0.0732390   -0.0104729
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                -0.0486577   -0.0651550   -0.0321604
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         NA                -0.0156471   -0.0222006   -0.0090936
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           NA                -0.0125568   -0.0265579    0.0014443
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   NA                -0.0355767   -0.0549355   -0.0162179


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0610057   -0.1420842    0.0200728
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0447052   -0.0288976    0.1183079
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight      0.1383344   -0.1003837    0.3770525
0-3 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0598098   -0.1687538    0.0491342
0-3 months     ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight      0.0182217   -0.0714374    0.1078809
0-3 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.0653777   -0.1779386    0.0471831
0-3 months     ki0047075b-MAL-ED          PERU                           Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           Underweight           Normal weight     -0.0251034   -0.3581655    0.3079587
0-3 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   Normal weight     -0.0305857   -0.0971697    0.0359982
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0327438   -0.1661316    0.2316191
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0214973   -0.1058835    0.0628890
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight      0.0059235   -0.0205638    0.0324108
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     -0.0289709   -0.0776968    0.0197549
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight      0.0071407   -0.0575890    0.0718703
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     -0.0192192   -0.1002410    0.0618025
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight      0.0208929   -0.0205471    0.0623328
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0313760   -0.0123024    0.0750543
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0456110   -0.1000178    0.0087958
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0051952   -0.0350124    0.0454028
0-3 months     ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.0465989    0.0072706    0.0859273
0-3 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0246065   -0.0437460   -0.0054670
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     -0.0079285   -0.0518353    0.0359783
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight      0.0011565   -0.0246403    0.0269533
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight      0.0888107    0.0256292    0.1519923
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0370013   -0.0073083    0.0813109
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.1691909   -0.3018530   -0.0365288
3-6 months     ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0307633   -0.1074433    0.0459166
3-6 months     ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0045356   -0.0690573    0.0599861
3-6 months     ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.0297400   -0.0933332    0.0338532
3-6 months     ki0047075b-MAL-ED          PERU                           Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           Underweight           Normal weight      0.0450831   -0.1786963    0.2688625
3-6 months     ki0047075b-MAL-ED          PERU                           Overweight or Obese   Normal weight      0.0240506   -0.0396106    0.0877118
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight     -0.0374040   -0.3926737    0.3178657
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight     -0.0226620   -0.1022472    0.0569232
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     -0.0475166   -0.1869841    0.0919508
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0259683   -0.1005828    0.0486462
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight      0.0000514   -0.0370750    0.0371778
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.0424429   -0.0121090    0.0969949
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0078380   -0.0618587    0.0461827
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0587309   -0.0045682    0.1220301
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0123339   -0.0544421    0.0297743
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     -0.0262444   -0.0660951    0.0136064
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     -0.0426978   -0.0862447    0.0008490
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     -0.0280271   -0.0661921    0.0101380
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     -0.0554356   -0.1040764   -0.0067947
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0195401   -0.0140548    0.0531351
3-6 months     ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     -0.0083720   -0.0374218    0.0206778
3-6 months     ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0047964   -0.0191484    0.0095556
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0141818   -0.0249932    0.0533568
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0063217   -0.0287442    0.0161008
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     -0.0035101   -0.0328607    0.0258404
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0104368   -0.0139530    0.0348267
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight      0.0043797   -0.0748510    0.0836104
6-12 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight      0.0514191    0.0116975    0.0911406
6-12 months    ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     -0.0109173   -0.0429413    0.0211068
6-12 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     -0.0125492   -0.0381257    0.0130273
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight      0.0728095    0.0055882    0.1400307
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight      0.0106706   -0.0262772    0.0476185
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0319144   -0.0337257    0.0975546
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0099444   -0.0472516    0.0273627
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight      0.0034118   -0.0122269    0.0190504
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight      0.0008375   -0.0488990    0.0505740
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0051918   -0.0276287    0.0172451
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0072417   -0.0182852    0.0327687
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     -0.0280632   -0.0455809   -0.0105455
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0269940    0.0110361    0.0429520
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight      0.0002349   -0.0187558    0.0192255
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0166929   -0.0000295    0.0334153
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0164578   -0.0164117    0.0493272
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     -0.0004955   -0.0188880    0.0178969
6-12 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     -0.0043878   -0.0205563    0.0117807
6-12 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight      0.0013287   -0.0107085    0.0133659
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     -0.0263787   -0.0459993   -0.0067582
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     -0.0173401   -0.0283289   -0.0063512
6-12 months    ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight     -0.0028817   -0.0293075    0.0235440
6-12 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight      0.0065345   -0.0221608    0.0352298
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight      0.0009745   -0.0144782    0.0164271
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight      0.0084580   -0.0043083    0.0212244
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight           Normal weight     -0.0002822   -0.0596288    0.0590643
12-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese   Normal weight     -0.0068334   -0.0294514    0.0157847
12-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight      0.0021835   -0.0094815    0.0138486
12-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight      0.0071156   -0.0048422    0.0190733
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight           Normal weight     -0.0443055   -0.0737382   -0.0148728
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese   Normal weight     -0.0000686   -0.0156321    0.0154949
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight      0.0073030   -0.0170129    0.0316188
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight      0.0106843   -0.0071259    0.0284946
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     -0.0066619   -0.0182556    0.0049318
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight      0.0040799   -0.0083962    0.0165561
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight      0.0056879   -0.0029824    0.0143582
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight      0.0183421    0.0087350    0.0279492
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight      0.0033294   -0.0061907    0.0128495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight      0.0140545    0.0056289    0.0224800
12-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight      0.0448015    0.0221503    0.0674527
12-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     -0.0081486   -0.0285778    0.0122806
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight      0.0156798   -0.0175855    0.0489452
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight      0.0088781   -0.0110086    0.0287648
12-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight         Normal weight      0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         Underweight           Normal weight      0.0030903   -0.0123412    0.0185219
12-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese   Normal weight     -0.0199295   -0.0403860    0.0005270
