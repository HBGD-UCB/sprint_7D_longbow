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
![](/tmp/c4edc9dd-a00a-4806-a695-e74446686b2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c4edc9dd-a00a-4806-a695-e74446686b2b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                3.9716726   3.8694368   4.0739083
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                3.5763987   3.5027960   3.6500014
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                3.8794920   3.7904631   3.9685209
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                4.0659500   3.9517170   4.1801830
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                4.0232167   3.8013679   4.2450654
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                4.1670091   3.9823114   4.3517067
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                3.5706080   3.3438567   3.7973593
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg               NA                3.5911937   3.5047380   3.6776493
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                3.5423522   3.3653720   3.7193323
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                3.9468720   3.8346374   4.0591067
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                3.8098415   3.6806501   3.9390330
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                3.8226181   3.7072951   3.9379412
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg              NA                3.3288510   3.2403993   3.4173028
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg               NA                3.4207601   3.3410727   3.5004475
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                3.2011699   3.0730347   3.3293052
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                3.4810268   3.3765226   3.5855310
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                3.3010546   3.0531511   3.5489581
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                3.4074106   3.2185011   3.5963202
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                3.4791912   3.3715045   3.5868779
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                3.5260108   3.4170299   3.6349917
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                3.4761051   3.3365232   3.6156869
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                3.6728711   3.5802754   3.7654669
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                3.5725828   3.5346343   3.6105312
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                3.7060261   3.6612197   3.7508325
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                3.3723733   3.2035415   3.5412050
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                3.3055925   3.2454377   3.3657472
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                3.3392102   3.1903984   3.4880220
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                3.5596894   3.4763641   3.6430148
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                3.4440382   3.3984190   3.4896573
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                3.6528160   3.5577357   3.7478963
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                3.3340337   3.2668550   3.4012125
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                3.2849160   3.2313908   3.3384411
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                3.3323218   3.2559002   3.4087435
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg              NA                2.8332568   2.7136196   2.9528940
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg               NA                2.8540339   2.7421910   2.9658767
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                2.8619098   2.7676504   2.9561692
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                3.4156140   3.3867318   3.4444962
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                3.2588262   3.2144578   3.3031946
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                3.3490359   3.3085687   3.3895030
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                1.9447911   1.8980663   1.9915159
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                1.9333998   1.8735341   1.9932656
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                2.0307639   1.9583368   2.1031910
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                2.1192496   2.0202731   2.2182261
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                1.9747835   1.8296958   2.1198712
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                2.2146153   2.0857321   2.3434984
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                1.7455768   1.6142204   1.8769333
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg               NA                1.8934808   1.8207161   1.9662455
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                1.7721042   1.6704113   1.8737971
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                2.0359566   1.9393092   2.1326041
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                1.9641629   1.8687777   2.0595480
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                1.9070551   1.8114416   2.0026685
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg              NA                2.0287754   1.9357406   2.1218102
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg               NA                2.0288245   1.9517796   2.1058695
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                2.1130837   1.9813814   2.2447860
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                1.9601002   1.8650767   2.0551237
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                2.0618980   1.8359667   2.2878292
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                2.0711033   1.8937754   2.2484312
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.8294395   1.7244609   1.9344180
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.8214950   1.7168164   1.9261736
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.8524954   1.7225663   1.9824245
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                2.0709470   1.9806246   2.1612695
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                1.9245285   1.8661024   1.9829545
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                1.9635139   1.9136628   2.0133649
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                1.9512271   1.8376432   2.0648110
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                1.8026189   1.7488230   1.8564149
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                1.8410243   1.7163676   1.9656810
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                1.9255728   1.8493230   2.0018226
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                1.9443908   1.9027325   1.9860491
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                1.9985076   1.9208268   2.0761884
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                1.9448757   1.8767521   2.0129993
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                2.0052809   1.9553635   2.0551982
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                2.0337508   1.9529192   2.1145824
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.8051849   1.7596468   1.8507231
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.7660766   1.6866695   1.8454838
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.7770509   1.7090897   1.8450121
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg              NA                2.0905965   2.0491610   2.1320319
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg               NA                2.0733960   2.0186477   2.1281442
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                2.0876082   2.0388925   2.1363240
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                1.9789316   1.9511307   2.0067325
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                1.9909628   1.9500099   2.0319157
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                1.9536117   1.9165609   1.9906624
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                1.0373286   0.9814586   1.0931986
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                1.0935888   1.0659261   1.1212515
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                1.0224139   0.9817052   1.0631227
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                1.3900049   1.3365365   1.4434732
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                1.2410106   1.1447193   1.3373018
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                1.2840073   1.2178607   1.3501539
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                1.1271661   1.0742376   1.1800946
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                1.1136019   1.0750676   1.1521361
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                1.1546597   1.1111886   1.1981308
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                1.2203326   1.1761429   1.2645223
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                1.1935498   1.1507003   1.2363993
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                1.2512340   1.2068443   1.2956237
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                1.1950355   1.1525387   1.2375323
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                1.2268713   1.1891868   1.2645559
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                1.1894294   1.1335904   1.2452684
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                1.2116555   1.1668825   1.2564285
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                1.1426011   1.0569771   1.2282250
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                1.1568519   1.0844043   1.2292994
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.9539459   0.8943431   1.0135487
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.0194099   0.9677176   1.0711023
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.0137676   0.9481411   1.0793942
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                1.1404971   1.0777164   1.2032777
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                1.0872169   1.0716404   1.1027935
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                1.1407702   1.0958496   1.1856908
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                1.1839022   1.1331274   1.2346769
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                1.1483635   1.1212235   1.1755036
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                1.2055678   1.1618903   1.2492453
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                1.2329489   1.2000432   1.2658546
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                1.1352841   1.1141049   1.1564633
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                1.2365586   1.2023411   1.2707761
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                1.2820907   1.2471029   1.3170785
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                1.1964126   1.1739256   1.2188996
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                1.2292009   1.1940442   1.2643575
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.2054249   1.1791538   1.2316960
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.1281209   1.0762145   1.1800273
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.2254310   1.1832337   1.2676282
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                1.4776497   1.4379903   1.5173092
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                1.4487756   1.4133020   1.4842492
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                1.4604158   1.4190696   1.5017621
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                1.1975378   1.1824731   1.2126025
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                1.1702670   1.1467411   1.1937928
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                1.2008407   1.1814959   1.2201854
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                1.2854498   1.2412686   1.3296311
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                1.2738590   1.2397010   1.3080169
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                1.2957434   1.2579881   1.3334987
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.8448991   0.8261288   0.8636693
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.8154973   0.7970361   0.8339586
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.8851135   0.8551424   0.9150846
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.9659246   0.9335656   0.9982837
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.9528441   0.8978457   1.0078424
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                1.0437724   0.9837084   1.1038364
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.9402157   0.9005665   0.9798648
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.8650248   0.8441310   0.8859187
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.8830194   0.8497274   0.9163114
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.8908204   0.8666284   0.9150123
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.8429109   0.8129875   0.8728342
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.8507374   0.8281422   0.8733326
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.8812310   0.8523974   0.9100647
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.7603291   0.7356841   0.7849740
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.8361666   0.8084648   0.8638683
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.8797760   0.8535545   0.9059975
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.8160621   0.7744915   0.8576327
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.8515006   0.8107312   0.8922700
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8295005   0.7952445   0.8637566
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7613592   0.7319107   0.7908077
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7540177   0.7245955   0.7834399
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.7816435   0.7443119   0.8189751
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.7411693   0.7244865   0.7578522
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7617660   0.7253845   0.7981475
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.9179316   0.8934094   0.9424538
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.8387243   0.8246451   0.8528034
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.8938474   0.8667619   0.9209329
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.9309550   0.9100691   0.9518410
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.8509067   0.8352577   0.8665556
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.8907990   0.8636998   0.9178983
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.8547512   0.8067828   0.9027196
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.9000711   0.8018959   0.9982463
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.8862215   0.7926970   0.9797459
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.7165044   0.6791577   0.7538510
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.6332555   0.5914735   0.6750374
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.6692538   0.6336889   0.7048187
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.8589607   0.8268969   0.8910246
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.8361396   0.8152061   0.8570731
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.8644555   0.8383806   0.8905304


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5764512   3.4977133   3.6551891
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3169985   3.2535876   3.3804093
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4538369   3.3628913   3.5447825
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6027228   3.5754164   3.6300291
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3129255   3.2581305   3.3677204
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4842409   3.4451170   3.5233649
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8371979   2.7235359   2.9508598
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3681331   3.3469290   3.3893373
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1465654   2.0670402   2.2260907
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8804733   1.8192508   1.9416958
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0179168   1.9519428   2.0838909
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9721457   1.8908533   2.0534381
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9414853   1.8982034   1.9847672
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8326915   1.7846731   1.8807099
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654067   1.9302800   2.0005334
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7969193   1.7606988   1.8331397
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0905265   2.0499813   2.1310716
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9747138   1.9547117   1.9947160
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3821617   1.3363222   1.4280012
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1193380   1.0909904   1.1476855
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2115356   1.1787814   1.2442898
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1869461   1.1457857   1.2281065
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0992229   1.0870848   1.1113609
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1679344   1.1454934   1.1903754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1973654   1.1756426   1.2190883
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4725107   1.4339287   1.5110927
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1977224   1.1867758   1.2086690
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2792060   1.2531790   1.3052331
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9836574   0.9529821   1.0143327
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8805522   0.8631583   0.8979461
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8733901   0.8508889   0.8958912
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7513013   0.7366996   0.7659029
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8600081   0.8068247   0.9131916
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7098483   0.6838588   0.7358377
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8406140   0.8238233   0.8574047


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.3952739   -0.5229607   -0.2675871
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0921806   -0.2294903    0.0451292
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0427333   -0.2921666    0.2066999
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1010591   -0.1163952    0.3185133
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.0205857   -0.2206100    0.2617815
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0282558   -0.3135097    0.2569981
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.1370305   -0.3081737    0.0341127
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1242539   -0.2844820    0.0359742
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.0919091   -0.0274022    0.2112204
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.1276811   -0.2835022    0.0281400
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.1799722   -0.4488416    0.0888971
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0736162   -0.2889354    0.1417029
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0468196   -0.1038798    0.1975190
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0030861   -0.1769426    0.1707704
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.1002884   -0.2141694    0.0135927
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg            0.0331550   -0.0710566    0.1373666
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0667808   -0.2458375    0.1122759
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0331631   -0.2581911    0.1918650
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.1156513   -0.2104646   -0.0208379
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0931266   -0.0330593    0.2193125
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0491178   -0.1351712    0.0369356
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0017119   -0.1033876    0.0999638
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0207771   -0.0423823    0.0839365
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0286530   -0.0239981    0.0813041
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.1567878   -0.2096406   -0.1039351
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0665781   -0.1162151   -0.0169412
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0113913   -0.0837598    0.0609773
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0859728    0.0045685    0.1673771
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1444661   -0.3207268    0.0317945
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0953657   -0.0670826    0.2578140
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.1479039   -0.0017290    0.2975368
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg            0.0265273   -0.1385584    0.1916131
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0717938   -0.2071667    0.0635792
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1289016   -0.2646887    0.0068855
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.0000491   -0.1196023    0.1197006
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg            0.0843083   -0.0765096    0.2451262
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg            0.1017977   -0.1424302    0.3460257
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg            0.1110031   -0.0891686    0.3111747
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0079445   -0.1556865    0.1397976
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0230559   -0.1436700    0.1897818
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.1464186   -0.2413232   -0.0515139
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.1074332   -0.2346640    0.0197977
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.1486081   -0.2744631   -0.0227532
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.1102028   -0.2789375    0.0585319
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg            0.0188180   -0.0680859    0.1057219
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0729348   -0.0357663    0.1816360
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg            0.0604052   -0.0240311    0.1448415
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg            0.0888751   -0.0167528    0.1945031
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0391083   -0.1305298    0.0523132
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0281341   -0.1098031    0.0535350
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0172005   -0.0705884    0.0361874
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0029883   -0.0370721    0.0310956
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0120312   -0.0374301    0.0614925
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0253200   -0.0715969    0.0209570
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg            0.0562602   -0.0064583    0.1189787
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0149147   -0.0847824    0.0549530
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.1489943   -0.2588869   -0.0391017
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.1059976   -0.1916812   -0.0203139
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.0135642   -0.0790228    0.0518943
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg            0.0274936   -0.0410036    0.0959909
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0267828   -0.0878983    0.0343326
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.0309014   -0.0315400    0.0933427
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.0318358   -0.0232232    0.0868949
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0056061   -0.0741566    0.0629443
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0690544   -0.1640576    0.0259487
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0548036   -0.1352404    0.0256332
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0654640   -0.0133650    0.1442930
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0598217   -0.0289417    0.1485851
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0532802   -0.1228740    0.0163137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg            0.0002731   -0.0714787    0.0720249
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0355386   -0.0932811    0.0222039
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0216656   -0.0449307    0.0882619
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0976648   -0.1366971   -0.0586326
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0036097   -0.0438095    0.0510289
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0856781   -0.1273215   -0.0440347
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0528898   -0.1025086   -0.0032711
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0773039   -0.1352621   -0.0193458
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0200061   -0.0294435    0.0694557
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0288742   -0.0544316   -0.0033168
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0172339   -0.0431577    0.0086899
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0272709   -0.0551715    0.0006298
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0033028   -0.0211791    0.0277847
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0115909   -0.0669496    0.0437678
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0102936   -0.0472542    0.0678413
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0294017   -0.0557471   -0.0030563
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0402144    0.0048070    0.0756218
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0130806   -0.0766655    0.0505044
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0778478    0.0100280    0.1456676
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.0751908   -0.1200052   -0.0303765
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0571963   -0.1089931   -0.0053994
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0479095   -0.0863121   -0.0095069
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.0400829   -0.0730907   -0.0070751
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.1209020   -0.1590924   -0.0827116
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0450644   -0.0850326   -0.0050963
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0637139   -0.1121874   -0.0152405
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0282754   -0.0738332    0.0172823
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0681413   -0.1116556   -0.0246270
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0754828   -0.1196071   -0.0313586
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0404742   -0.0813408    0.0003924
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0198775   -0.0718142    0.0320592
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0792074   -0.1074962   -0.0509185
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0240842   -0.0605170    0.0123486
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0800483   -0.1061219   -0.0539748
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0401560   -0.0742541   -0.0060578
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0453199   -0.0293665    0.1200064
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0314703   -0.0534774    0.1164179
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0832489   -0.1391180   -0.0273798
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0472506   -0.0987497    0.0042486
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0228212   -0.0608984    0.0152561
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0054947   -0.0354684    0.0464579
