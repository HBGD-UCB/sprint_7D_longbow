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

unadjusted

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







# Results Detail

## Results Plots
![](/tmp/e00de27a-6c83-4d81-8f6c-df7261a03567/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e00de27a-6c83-4d81-8f6c-df7261a03567/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0000866   -0.0731697    0.0729965
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.0489305   -0.0895361   -0.0083250
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.0128165   -0.0855787    0.0599458
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.1881912    0.1273251    0.2490573
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.2025529    0.0620767    0.3430292
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.2008769    0.0690467    0.3327071
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0432111   -0.1620291    0.0756070
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.0100102   -0.0543194    0.0342991
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.0329944   -0.1240828    0.0580940
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0967623    0.0391193    0.1544053
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                 0.0788659    0.0118890    0.1458428
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                 0.0508804   -0.0065737    0.1083345
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.1656879   -0.2197078   -0.1116681
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.1246279   -0.1722364   -0.0770194
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.1945065   -0.2664750   -0.1225380
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0864739   -0.1389951   -0.0339528
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.1314290   -0.2752773    0.0124194
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.1324910   -0.2369547   -0.0280274
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0597763   -0.1167032   -0.0028495
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0293111   -0.0939321    0.0353098
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0505800   -0.1362070    0.0350471
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0269939   -0.0338410    0.0878289
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                 0.0039898   -0.0163736    0.0243532
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                 0.0485021    0.0280200    0.0689841
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.1142046   -0.2035171   -0.0248921
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.1180101   -0.1479658   -0.0880544
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.1286903   -0.2034045   -0.0539761
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.0437468   -0.0877066    0.0002130
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.0521089   -0.0733792   -0.0308387
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                 0.0050599   -0.0450635    0.0551834
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.1054935   -0.1389802   -0.0720068
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.1335398   -0.1597008   -0.1073788
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.1125254   -0.1496303   -0.0754204
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.4429740   -0.5054053   -0.3805428
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.4238997   -0.4868740   -0.3609254
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.4163388   -0.4687973   -0.3638803
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.1287073   -0.1432163   -0.1141983
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.1831686   -0.2059412   -0.1603960
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.1437806   -0.1645960   -0.1229652
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0414644   -0.0800225   -0.0029064
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.0225253   -0.0537600    0.0087094
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.0021412   -0.0538243    0.0495419
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0520488    0.0043790    0.0997186
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.0473596   -0.0385960    0.1333153
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.1037387    0.0369976    0.1704797
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0553770   -0.1403940    0.0296399
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.0304116   -0.0649039    0.0040807
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.0648129   -0.1214134   -0.0082123
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                 0.0044277   -0.0411860    0.0500414
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.0140473   -0.0599024    0.0318079
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.0526674   -0.0982957   -0.0070390
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0223764   -0.0333580    0.0781107
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg               NA                 0.0159945   -0.0269755    0.0589646
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                 0.0531034   -0.0142041    0.1204109
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0191185   -0.0645572    0.0263203
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                 0.0486702   -0.0627477    0.1600880
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                 0.0214577   -0.0692440    0.1121595
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0719145   -0.1240247   -0.0198042
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0753924   -0.1271723   -0.0236125
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0602083   -0.1268395    0.0064229
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                 0.0297690   -0.0084204    0.0679584
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.0206435   -0.0480643    0.0067772
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.0163044   -0.0455559    0.0129471
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0022188   -0.0669493    0.0625117
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0619093   -0.0867628   -0.0370559
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0414006   -0.1063411    0.0235399
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.0413910   -0.0819400   -0.0008420
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.0288937   -0.0488053   -0.0089822
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0081067   -0.0491656    0.0329521
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0063485   -0.0252252    0.0379221
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                 0.0318827    0.0088915    0.0548738
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                 0.0385200   -0.0000886    0.0771287
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0838655   -0.1051523   -0.0625787
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0767045   -0.1204895   -0.0329194
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0897404   -0.1245565   -0.0549242
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0442018    0.0245816    0.0638220
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.0550943    0.0257788    0.0844099
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0515840    0.0284256    0.0747424
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0028217   -0.0158265    0.0101832
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                 0.0152749   -0.0050726    0.0356224
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0096912   -0.0276213    0.0082389
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0787977   -0.1066725   -0.0509228
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.0796721   -0.0918597   -0.0674846
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.0864381   -0.1116647   -0.0612115
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                 0.0120607   -0.0117618    0.0358831
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                -0.0247948   -0.0761279    0.0265383
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0093826   -0.0295772    0.0483423
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                -0.0830542   -0.1087162   -0.0573922
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.0802163   -0.0971228   -0.0633098
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.0695642   -0.0896622   -0.0494662
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0533031   -0.0715766   -0.0350295
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.0552341   -0.0727629   -0.0377054
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.0384451   -0.0575686   -0.0193216
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                -0.0431199   -0.0663398   -0.0199000
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0236248   -0.0439379   -0.0033118
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.0476095   -0.0795165   -0.0157025
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0487419   -0.0682891   -0.0291948
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.0753429   -0.1288137   -0.0218721
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.0645341   -0.1123391   -0.0167291
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.1421278   -0.1688406   -0.1154150
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.1104295   -0.1339151   -0.0869438
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.1158626   -0.1476429   -0.0840822
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                -0.0774826   -0.1073580   -0.0476072
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                -0.0893550   -0.0963110   -0.0823991
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                -0.0732978   -0.0933399   -0.0532557
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0433234   -0.0672160   -0.0194308
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0579967   -0.0694300   -0.0465634
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0385785   -0.0585148   -0.0186421
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                -0.0459987   -0.0613868   -0.0306105
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.0733935   -0.0820491   -0.0647379
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0416417   -0.0577950   -0.0254883
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                -0.0125662   -0.0276351    0.0025026
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.0410581   -0.0508159   -0.0313003
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.0305069   -0.0458333   -0.0151805
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0580003   -0.0693482   -0.0466524
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0798565   -0.1050967   -0.0546162
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0459127   -0.0658660   -0.0259594
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                 0.0438062    0.0268810    0.0607314
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                 0.0409548    0.0239783    0.0579314
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                 0.0402440    0.0212800    0.0592080
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0516267   -0.0581102   -0.0451432
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0504548   -0.0610499   -0.0398597
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0444745   -0.0531022   -0.0358468
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.0118839   -0.0350377    0.0112700
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.0064145   -0.0215153    0.0086863
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -0.0046365   -0.0238695    0.0145966
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                -0.0142326   -0.0258025   -0.0026628
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                -0.0212976   -0.0279690   -0.0146261
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                -0.0090746   -0.0230957    0.0049464
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                -0.0080079   -0.0197198    0.0037041
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                 0.0102538   -0.0195115    0.0400191
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                 0.0150360   -0.0125147    0.0425866
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                 0.0001984   -0.0123574    0.0127541
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                -0.0128736   -0.0193837   -0.0063635
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                -0.0090435   -0.0200710    0.0019840
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                -0.0232455   -0.0317654   -0.0147255
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                -0.0289786   -0.0389993   -0.0189579
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                -0.0362008   -0.0436430   -0.0287586
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                 0.0020631   -0.0094813    0.0136075
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                -0.0242780   -0.0357576   -0.0127985
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                -0.0052646   -0.0172798    0.0067505
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                -0.0133729   -0.0227311   -0.0040148
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                -0.0197652   -0.0371950   -0.0023353
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                -0.0123648   -0.0296342    0.0049046
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                -0.0263001   -0.0395471   -0.0130531
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                -0.0433223   -0.0556007   -0.0310438
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                -0.0546979   -0.0686539   -0.0407419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                -0.0374407   -0.0498125   -0.0250689
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                -0.0406149   -0.0461398   -0.0350899
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                -0.0422119   -0.0543613   -0.0300624
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                 0.0000709   -0.0088517    0.0089934
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                -0.0108346   -0.0154642   -0.0062051
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                -0.0076650   -0.0176480    0.0023180
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                 0.0033748   -0.0040320    0.0107815
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                -0.0111593   -0.0165542   -0.0057644
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                -0.0034820   -0.0127807    0.0058167
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                -0.0462973   -0.0627235   -0.0298711
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                -0.0313604   -0.0618629   -0.0008579
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                -0.0349755   -0.0690908   -0.0008601
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                -0.0440119   -0.0583748   -0.0296490
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                -0.0582120   -0.0758224   -0.0406016
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                -0.0558288   -0.0714683   -0.0401893
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                -0.0230933   -0.0372249   -0.0089618
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                -0.0161569   -0.0233637   -0.0089502
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                -0.0119773   -0.0244284    0.0004738


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0488439   -0.1324498    0.0347620
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0127298   -0.1158583    0.0903986
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg            0.0143617   -0.1387339    0.1674573
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0126857   -0.1325172    0.1578886
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.0332009   -0.0936101    0.1600120
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg            0.0102167   -0.1394992    0.1599325
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0178964   -0.1062628    0.0704700
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.0458819   -0.1272679    0.0355042
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.0410600   -0.0309450    0.1130649
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0288186   -0.1188053    0.0611681
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0449550   -0.1980916    0.1081816
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0460171   -0.1629407    0.0709065
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0304652   -0.0556541    0.1165845
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0091964   -0.0936270    0.1120198
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0230041   -0.0868097    0.0408014
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg            0.0215081   -0.0488671    0.0918833
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0038056   -0.0980078    0.0903967
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0144857   -0.1309286    0.1019571
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0083621   -0.0571974    0.0404732
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0488068   -0.0178627    0.1154763
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0280463   -0.0705405    0.0144479
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0070319   -0.0570132    0.0429495
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0190744   -0.0156334    0.0537822
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0266352   -0.0025534    0.0558238
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0544612   -0.0814631   -0.0274593
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0150733   -0.0404463    0.0102998
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg            0.0189392   -0.0306827    0.0685610
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0393232   -0.0251582    0.1038047
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0046892   -0.1029784    0.0936001
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0516899   -0.0303270    0.1337068
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.0249655   -0.0667820    0.1167129
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0094358   -0.1115705    0.0926989
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0184750   -0.0831534    0.0462035
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.0570950   -0.1216129    0.0074228
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.0063818   -0.0767575    0.0639939
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg            0.0307270   -0.0566607    0.1181148
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg            0.0677886   -0.0525385    0.1881157
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0405762   -0.0608708    0.1420232
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0034780   -0.0769398    0.0699838
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0117061   -0.0728823    0.0962945
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0504126   -0.0906700   -0.0101551
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.0460734   -0.1027433    0.0105965
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0596905   -0.1290283    0.0096473
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0391818   -0.1308732    0.0525096
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg            0.0124972   -0.0326768    0.0576712
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0332842   -0.0244223    0.0909908
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg            0.0255342   -0.0135233    0.0645917
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg            0.0321716   -0.0177035    0.0820467
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0071610   -0.0415243    0.0558464
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0058749   -0.0466828    0.0349331
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0108925   -0.0167843    0.0385693
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0073822   -0.0081912    0.0229556
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0180966   -0.0060518    0.0422450
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0068695   -0.0290193    0.0152803
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0008745   -0.0312972    0.0295482
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0076404   -0.0452355    0.0299546
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0368555   -0.0934470    0.0197360
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.0026781   -0.0483440    0.0429877
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.0028379   -0.0278926    0.0335685
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg            0.0134901   -0.0191054    0.0460856
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0019311   -0.0272526    0.0233905
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.0148579   -0.0115926    0.0413085
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.0194951   -0.0113559    0.0503461
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0044896   -0.0439512    0.0349721
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0266010   -0.0835327    0.0303307
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0157922   -0.0674392    0.0358548
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0316983   -0.0038706    0.0672673
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0262652   -0.0152506    0.0677811
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0118724   -0.0448867    0.0211419
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg            0.0041848   -0.0298125    0.0381821
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0146733   -0.0411606    0.0118140
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0047449   -0.0263728    0.0358627
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0273948   -0.0450503   -0.0097394
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0043570   -0.0179528    0.0266668
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0284919   -0.0464442   -0.0105396
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0179406   -0.0394341    0.0035528
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0218562   -0.0495301    0.0058177
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0120876   -0.0108669    0.0350421
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0028514   -0.0137665    0.0080637
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0035622   -0.0145422    0.0074178
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0011719   -0.0112495    0.0135933
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0071522   -0.0036400    0.0179445
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0054694   -0.0221736    0.0331124
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0072474   -0.0228526    0.0373474
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0070649   -0.0204205    0.0062906
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0051580   -0.0130203    0.0233363
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg            0.0182616   -0.0137250    0.0502483
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0230438   -0.0068929    0.0529806
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.0130719   -0.0272150    0.0010712
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0092418   -0.0259527    0.0074690
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0057332   -0.0188863    0.0074199
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.0129553   -0.0242680   -0.0016427
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.0263411   -0.0426216   -0.0100607
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0073277   -0.0239902    0.0093347
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0063922   -0.0261755    0.0133910
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0010082   -0.0186338    0.0206502
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0170222   -0.0350844    0.0010400
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0283978   -0.0476398   -0.0091559
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0031741   -0.0167236    0.0103753
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0047711   -0.0221110    0.0125687
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0109055   -0.0209575   -0.0008534
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0077358   -0.0211251    0.0056534
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0145340   -0.0236972   -0.0053708
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0068567   -0.0187448    0.0050313
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0149369   -0.0098741    0.0397480
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0113218   -0.0205657    0.0432094
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0142001   -0.0369250    0.0085247
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0118169   -0.0330510    0.0094172
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg            0.0069364   -0.0089267    0.0227995
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0111160   -0.0077183    0.0299504
