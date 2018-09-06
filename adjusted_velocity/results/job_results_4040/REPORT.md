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

**Intervention Variable:** mwtkg

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

agecat         studyid                    country                        mwtkg         n_cell       n
-------------  -------------------------  -----------------------------  -----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           44     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg           158     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        42     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg          118     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg            32     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        30     180
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg           35     201
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg           125     201
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg        41     201
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg           57     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg            55     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg        63     175
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg           97     270
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg           104     270
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg        69     270
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          162     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            22     223
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        39     223
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           89     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            86     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        54     229
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           83    1166
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg           901    1166
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       182    1166
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           74     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg           407     566
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        85     566
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          116     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg           409     633
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       108     633
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          181     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           388     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       151     720
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg         9437   12629
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg          1039   12629
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg      2153   12629
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         4025    7588
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1561    7588
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      2002    7588
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           43     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg           148     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        40     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg          136     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg            37     207
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        34     207
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg           37     228
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg           143     228
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg        48     228
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg           78     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg            73     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg        82     233
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg           98     266
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg           104     266
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg        64     266
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          169     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            28     237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        40     237
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           93     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            91     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        55     239
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           80    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg           861    1121
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       180    1121
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           70     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg           376     523
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        77     523
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          106     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg           364     573
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg       103     573
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          177     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           372     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       146     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg         1044    1628
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           248    1628
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       336    1628
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg         8288   11090
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg           927   11090
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg      1875   11090
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         3105    5849
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1174    5849
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      1570    5849
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           41     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg           139     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        40     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg          125     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg            35     193
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        33     193
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg           39     223
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg           138     223
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg        46     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg           78     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg            73     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg        79     230
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg           89     236
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg            90     236
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg        57     236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          161     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            27     228
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        40     228
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           87     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            86     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        50     223
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg           82    1132
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg           869    1132
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg       181    1132
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           63     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg           345     482
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        74     482
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg          102     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg           346     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg        97     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          173     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           362     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       141     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg          676    1060
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg           178    1060
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg       206    1060
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg         8088   10834
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg           915   10834
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg      1831   10834
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg         2317    4547
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg          1005    4547
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg      1225    4547
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg           55     434
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg           266     434
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg       113     434
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg           40     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg           131     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg        35     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg          105     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg            28     164
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg        31     164
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg           38     224
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg           139     224
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg        47     224
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg           76     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg            73     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg        77     226
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg           75     191
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg            69     191
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg        47     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg          162     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg            27     226
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg        37     226
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg           80     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg            80     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg        47     207
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg           56     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg           303     421
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg        62     421
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg           88     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg           288     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg        82     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg          132     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg           263     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg       100     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg            1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg             0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg         1       2
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg         1884    2523
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg           220    2523
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg       419    2523
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg          125     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg            96     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg        81     302
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg           39     310
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg           194     310
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg        77     310


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
![](/tmp/717bab53-ee08-4c52-8980-802fb49cbf86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/717bab53-ee08-4c52-8980-802fb49cbf86/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                 0.0944109    0.0505028    0.1383189
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.0318822   -0.0682725    0.0045081
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.0470202    0.0064562    0.0875842
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.1935181    0.1375294    0.2495068
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.1850917    0.0827210    0.2874624
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1696577    0.0801721    0.2591433
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0577439   -0.1651863    0.0496985
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.0142388   -0.0579003    0.0294227
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.0461588   -0.1252427    0.0329250
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.1181762    0.0652482    0.1711042
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                 0.0859744    0.0247668    0.1471820
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.0625324    0.0090268    0.1160380
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1529752   -0.1981120   -0.1078383
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1203032   -0.1615483   -0.0790581
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.2094698   -0.2771492   -0.1417903
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0875724   -0.1400628   -0.0350821
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.1366715   -0.2809616    0.0076185
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.1366263   -0.2407067   -0.0325459
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0535941   -0.1064908   -0.0006974
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0106828   -0.0690934    0.0477279
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0411905   -0.1132365    0.0308554
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0262599   -0.0262266    0.0787463
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                 0.0030941   -0.0177873    0.0239756
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                 0.0465992    0.0266897    0.0665087
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1036033   -0.1810371   -0.0261695
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.1199224   -0.1495216   -0.0903233
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.1101050   -0.1782170   -0.0419930
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.0181475   -0.0528795    0.0165846
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.0510297   -0.0718430   -0.0302163
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                 0.0277093   -0.0143005    0.0697191
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1026209   -0.1347097   -0.0705322
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.1316892   -0.1570531   -0.1063252
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.1070121   -0.1436790   -0.0703452
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.4418313   -0.5039988   -0.3796638
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4164536   -0.4753657   -0.3575416
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.4156304   -0.4658770   -0.3653838
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1254630   -0.1398793   -0.1110467
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.1870703   -0.2091841   -0.1649564
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.1497784   -0.1699599   -0.1295969
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0362130   -0.0615888   -0.0108372
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.0203945   -0.0499849    0.0091959
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                 0.0048933   -0.0366503    0.0464369
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0488194    0.0023111    0.0953276
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.0122246   -0.0586788    0.0831280
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0855553    0.0240144    0.1470961
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0807161   -0.1415231   -0.0199092
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.0355232   -0.0676324   -0.0034140
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.0752368   -0.1182243   -0.0322493
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0083381   -0.0361790    0.0528552
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.0108647   -0.0557635    0.0340340
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.0512038   -0.0965384   -0.0058692
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0277726   -0.0170036    0.0725488
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.0271208   -0.0083189    0.0625605
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.0782763    0.0185986    0.1379539
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0125701   -0.0566472    0.0315071
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.0184766   -0.1003837    0.0634306
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.0279617   -0.0453779    0.1013013
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0736532   -0.1227437   -0.0245626
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0717182   -0.1208776   -0.0225588
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0641942   -0.1248471   -0.0035413
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0303037   -0.0104722    0.0710796
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.0208934   -0.0474178    0.0056310
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.0165054   -0.0412226    0.0082117
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0027374   -0.0581245    0.0526497
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0614902   -0.0862096   -0.0367707
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0481813   -0.1087722    0.0124096
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.0562002   -0.0924765   -0.0199239
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.0321314   -0.0517186   -0.0125441
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0209637   -0.0565758    0.0146484
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.0036605   -0.0351467    0.0278257
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                 0.0280543    0.0047141    0.0513945
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.0390100    0.0015561    0.0764640
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0834724   -0.1045386   -0.0624061
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0912770   -0.1287932   -0.0537607
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0898273   -0.1217985   -0.0578560
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0450225    0.0255306    0.0645144
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.0451758    0.0199900    0.0703616
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0482564    0.0258763    0.0706365
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0028690   -0.0159039    0.0101660
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0145086   -0.0046086    0.0336258
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0093496   -0.0266641    0.0079650
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.1205178   -0.1425735   -0.0984622
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.0845600   -0.0958455   -0.0732745
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.1303551   -0.1465731   -0.1141370
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0085409   -0.0132231    0.0303050
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0401857   -0.0740283   -0.0063431
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                -0.0255470   -0.0493466   -0.0017474
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0770358   -0.0996052   -0.0544664
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.0785402   -0.0951791   -0.0619013
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.0618013   -0.0802193   -0.0433834
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0533266   -0.0715731   -0.0350802
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.0552176   -0.0727164   -0.0377188
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.0384530   -0.0575449   -0.0193611
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0473938   -0.0663955   -0.0283921
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0299562   -0.0461514   -0.0137611
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.0490575   -0.0733243   -0.0247907
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0475004   -0.0668060   -0.0281947
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.0625441   -0.1058443   -0.0192439
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.0639732   -0.1010833   -0.0268631
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1455929   -0.1702702   -0.1209156
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1135543   -0.1347702   -0.0923384
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.1211394   -0.1480955   -0.0941833
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.0811119   -0.1092000   -0.0530238
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.0885385   -0.0954780   -0.0815989
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.0743925   -0.0939191   -0.0548660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0525585   -0.0741721   -0.0309449
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0583406   -0.0696550   -0.0470261
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0430425   -0.0617017   -0.0243833
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.0460216   -0.0591299   -0.0329133
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.0751140   -0.0835243   -0.0667037
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0425938   -0.0570946   -0.0280929
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.0131305   -0.0278225    0.0015616
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.0422536   -0.0517286   -0.0327786
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.0320528   -0.0466242   -0.0174813
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0583579   -0.0695586   -0.0471572
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0811934   -0.1039445   -0.0584424
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0448749   -0.0628858   -0.0268640
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0441169    0.0271092    0.0611246
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.0399193    0.0241975    0.0556411
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0390942    0.0211625    0.0570259
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0528341   -0.0592770   -0.0463912
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0551096   -0.0650656   -0.0451537
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0467233   -0.0549654   -0.0384812
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.0196286   -0.0368519   -0.0024054
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.0070417   -0.0212729    0.0071895
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -0.0048050   -0.0207981    0.0111880
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0198993   -0.0278459   -0.0119528
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.0228443   -0.0290884   -0.0166001
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.0112924   -0.0214620   -0.0011228
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0084501   -0.0195618    0.0026616
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.0019667   -0.0175782    0.0215115
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0113043   -0.0101369    0.0327454
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0011076   -0.0110066    0.0087913
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.0135106   -0.0195092   -0.0075119
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.0103832   -0.0192653   -0.0015011
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0229635   -0.0306940   -0.0152330
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.0301257   -0.0391875   -0.0210638
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.0351885   -0.0418964   -0.0284805
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0042617   -0.0136965    0.0051731
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0379699   -0.0468075   -0.0291323
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.0151296   -0.0235987   -0.0066605
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0130414   -0.0221395   -0.0039433
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.0195715   -0.0355166   -0.0036263
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.0135766   -0.0276675    0.0005142
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0200449   -0.0318708   -0.0082191
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0364155   -0.0466509   -0.0261802
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0458075   -0.0565755   -0.0350394
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0384021   -0.0501219   -0.0266823
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0407679   -0.0462379   -0.0352979
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0438515   -0.0549927   -0.0327102
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.0041568   -0.0040820    0.0123956
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.0101477   -0.0147148   -0.0055806
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0037532   -0.0124938    0.0049873
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0084365    0.0014368    0.0154362
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.0113866   -0.0166606   -0.0061127
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.0005281   -0.0092437    0.0081875
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0464255   -0.0626642   -0.0301868
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.0244764   -0.0516101    0.0026572
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.0306454   -0.0602123   -0.0010784
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0527770   -0.0658599   -0.0396940
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0753299   -0.0899965   -0.0606633
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0679823   -0.0807485   -0.0552160
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.0222040   -0.0357948   -0.0086132
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.0156979   -0.0228492   -0.0085467
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -0.0079754   -0.0194894    0.0035386


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1572370   -0.1898325   -0.1246414
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0989568   -0.1436567   -0.0542569
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0125752   -0.0032139    0.0283642
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0408226   -0.0589776   -0.0226676
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4368640   -0.4962138   -0.3775142
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1438880   -0.1544502   -0.1333257
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0597008    0.0230362    0.0963653
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0417054   -0.0700621   -0.0133486
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0272742   -0.0038596    0.0584080
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0042614   -0.0425659    0.0340432
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0163491   -0.0355574    0.0028592
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0274690   -0.0439444   -0.0109937
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0839871   -0.1007948   -0.0671794
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0463604    0.0273666    0.0653543
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0010333   -0.0103903    0.0083238
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0049191   -0.0143947    0.0242329
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0785153   -0.0906466   -0.0663840
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0367697   -0.0508361   -0.0227032
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0546626   -0.0720558   -0.0372694
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0859276   -0.0907202   -0.0811349
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0593214   -0.0685822   -0.0500606
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0429634    0.0263738    0.0595529
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0494408   -0.0541109   -0.0447708
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0066447   -0.0175712    0.0042818
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0005342   -0.0110966    0.0100282
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098524   -0.0150104   -0.0046944
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0139716   -0.0215484   -0.0063947
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0431146   -0.0603710   -0.0258582
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0516953   -0.0609049   -0.0424856
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0159914   -0.0217529   -0.0102299


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.1262931   -0.1816656   -0.0709206
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0473907   -0.1060269    0.0112456
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0084263   -0.1209306    0.1040779
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.0238603   -0.1263684    0.0786477
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.0435051   -0.0725688    0.1595790
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg            0.0115851   -0.1215579    0.1447280
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0322018   -0.1130149    0.0486112
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.0556438   -0.1306136    0.0193260
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.0326720   -0.0285567    0.0939007
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0564946   -0.1378468    0.0248576
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0490991   -0.2026854    0.1044872
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0490538   -0.1657074    0.0675997
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0429113   -0.0357843    0.1216069
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0124035   -0.0766522    0.1014593
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0231657   -0.0809258    0.0345943
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg            0.0203394   -0.0410422    0.0817209
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0163192   -0.0991350    0.0664967
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0065017   -0.1096688    0.0966654
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0328822   -0.0731242    0.0073598
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0458568   -0.0083745    0.1000881
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0290682   -0.0700798    0.0119433
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0043912   -0.0531119    0.0443296
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0253777   -0.0085524    0.0593078
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0262009   -0.0013914    0.0537932
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0616073   -0.0879725   -0.0352420
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0243154   -0.0490800    0.0004492
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg            0.0158185   -0.0228300    0.0544670
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0411063   -0.0073359    0.0895485
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0365947   -0.1211707    0.0479813
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0367359   -0.0402771    0.1137489
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.0451930   -0.0225541    0.1129400
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg            0.0054793   -0.0662124    0.0771710
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0192028   -0.0823659    0.0439602
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.0595419   -0.1230328    0.0039490
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.0006518   -0.0570300    0.0557264
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg            0.0505036   -0.0236630    0.1246703
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0059065   -0.0973574    0.0855444
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0405317   -0.0443482    0.1254117
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0019350   -0.0673784    0.0712484
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0094590   -0.0684572    0.0873752
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0511971   -0.0931647   -0.0092295
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.0468092   -0.1038653    0.0102470
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0587527   -0.1195430    0.0020375
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0454439   -0.1275134    0.0366256
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg            0.0240688   -0.0171730    0.0653106
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0352365   -0.0155126    0.0859856
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg            0.0317148   -0.0074965    0.0709260
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg            0.0426705   -0.0062436    0.0915847
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0078046   -0.0507892    0.0351799
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0063549   -0.0445606    0.0318508
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0001533   -0.0244354    0.0247420
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0032339   -0.0125726    0.0190404
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0173776   -0.0057485    0.0405037
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0064806   -0.0281332    0.0151721
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg            0.0359578    0.0110712    0.0608444
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0098372   -0.0374406    0.0177662
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0487266   -0.0879222   -0.0095311
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.0340879   -0.0652645   -0.0029114
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.0015044   -0.0294614    0.0264527
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg            0.0152345   -0.0138959    0.0443650
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0018910   -0.0271599    0.0233779
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.0148736   -0.0115276    0.0412749
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.0174376   -0.0068959    0.0417710
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0016637   -0.0318246    0.0284972
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0150438   -0.0624736    0.0323860
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0164729   -0.0582343    0.0252886
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0320386    0.0000429    0.0640343
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0244535   -0.0118254    0.0607323
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0074265   -0.0387228    0.0238697
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg            0.0067194   -0.0250169    0.0384557
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0057821   -0.0301949    0.0186308
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0095160   -0.0189202    0.0379522
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0290924   -0.0446026   -0.0135822
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0034279   -0.0160914    0.0229471
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0291231   -0.0466257   -0.0116205
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0189223   -0.0396152    0.0017706
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0228356   -0.0480949    0.0024238
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0134830   -0.0076366    0.0346025
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0041976   -0.0153763    0.0069811
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0050227   -0.0160177    0.0059724
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0022755   -0.0141184    0.0095673
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0061108   -0.0043395    0.0165611
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0125869   -0.0096229    0.0347968
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0148236   -0.0085037    0.0381509
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0029449   -0.0130404    0.0071506
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0086070   -0.0042934    0.0215073
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg            0.0104168   -0.0119707    0.0328043
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0197544   -0.0041026    0.0436115
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.0124029   -0.0235888   -0.0012171
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0092756   -0.0222131    0.0036620
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0071621   -0.0187418    0.0044175
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.0122250   -0.0222143   -0.0022356
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.0337082   -0.0467783   -0.0206381
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0108679   -0.0236030    0.0018672
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0065301   -0.0245073    0.0114472
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0005352   -0.0164656    0.0153951
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0163706   -0.0317684   -0.0009727
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0257625   -0.0415927   -0.0099323
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0023658   -0.0152797    0.0105480
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0054494   -0.0215667    0.0106679
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0143045   -0.0237141   -0.0048949
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0079101   -0.0198912    0.0040711
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0198231   -0.0285637   -0.0110826
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0089646   -0.0200731    0.0021439
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0219491    0.0000424    0.0438558
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0157802   -0.0123581    0.0439184
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0225529   -0.0422090   -0.0028969
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0152053   -0.0334664    0.0030558
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0065061   -0.0088352    0.0218474
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0142286   -0.0035524    0.0320096
