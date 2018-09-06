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
![](/tmp/06c46c29-dbd1-4222-9a35-1c1e317056bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/06c46c29-dbd1-4222-9a35-1c1e317056bc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                3.6296905   3.4813302   3.7780507
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                3.5287851   3.4495619   3.6080083
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                3.6244305   3.4866208   3.7622402
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                4.0528274   3.9334567   4.1721980
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                4.0173566   3.7419869   4.2927263
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                4.0795271   3.8234973   4.3355568
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                3.5587068   3.3218252   3.7955884
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg               NA                3.5943895   3.5064837   3.6822953
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                3.5369090   3.3471230   3.7266949
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                3.8911293   3.7664464   4.0158121
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                3.7865357   3.6419470   3.9311245
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                3.7862306   3.6613886   3.9110727
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg              NA                3.2974265   3.1921422   3.4027107
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg               NA                3.3979649   3.3056042   3.4903257
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                3.2224762   3.0839096   3.3610428
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                3.4866519   3.3803807   3.5929232
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                3.2993954   3.0182492   3.5805415
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                3.4046493   3.1846653   3.6246332
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                3.4739773   3.3546130   3.5933416
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                3.4976312   3.3735540   3.6217084
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                3.4690154   3.2976190   3.6404117
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                3.6698962   3.5646174   3.7751749
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                3.5752440   3.5380266   3.6124613
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                3.7081239   3.6676313   3.7486165
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                3.3538105   3.1671653   3.5404557
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                3.3079398   3.2475122   3.3683674
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                3.3012039   3.1497750   3.4526329
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                3.5092080   3.4143131   3.6041029
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                3.4430680   3.3969593   3.4891766
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                3.6133481   3.5091476   3.7175485
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                3.3330684   3.2624405   3.4036964
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                3.2790480   3.2240383   3.3340576
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                3.3278624   3.2507966   3.4049283
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg              NA                2.8313602   2.7112890   2.9514313
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg               NA                2.8408172   2.7194456   2.9621887
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                2.8610390   2.7627384   2.9593396
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                3.4096457   3.3805565   3.4387350
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                3.2693779   3.2235966   3.3151593
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                3.3616738   3.3199228   3.4034248
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                1.8872239   1.8025087   1.9719390
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                1.9237426   1.8574796   1.9900057
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                1.9878532   1.8778062   2.0979002
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                2.1333327   2.0307919   2.2358736
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                2.1059272   1.9158882   2.2959661
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                2.2437203   2.0951923   2.3922483
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                1.8553184   1.6766940   2.0339427
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg               NA                1.9045622   1.8290729   1.9800515
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                1.8280986   1.7071291   1.9490682
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                2.0352324   1.9380863   2.1323785
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                1.9656903   1.8695681   2.0618124
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                1.9063861   1.8108055   2.0019667
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg              NA                2.0111460   1.8954277   2.1268643
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg               NA                1.9990313   1.9072109   2.0908517
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                2.0589737   1.9127311   2.2052163
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                1.9488853   1.8525309   2.0452396
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                2.0433538   1.8038412   2.2828663
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                2.0205753   1.8272697   2.2138810
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.8324408   1.7224612   1.9424205
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.8120183   1.7028815   1.9211551
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.8560162   1.7158511   1.9961813
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                2.0686213   1.9833441   2.1538986
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                1.9252034   1.8645838   1.9858229
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                1.9628623   1.9039064   2.0218181
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                1.9547762   1.8151574   2.0943949
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                1.8029046   1.7487893   1.8570198
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                1.8671585   1.7275790   2.0067380
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                1.9530165   1.8674626   2.0385704
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                1.9519671   1.9096557   1.9942785
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                2.0256529   1.9367114   2.1145944
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                1.9673880   1.8979639   2.0368122
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                2.0123019   1.9627792   2.0618245
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                2.0357886   1.9522575   2.1193197
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.8029601   1.7569589   1.8489612
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.7987410   1.7046580   1.8928241
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.7768049   1.7023650   1.8512448
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg              NA                2.0890524   2.0473559   2.1307488
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg               NA                2.0944934   2.0308959   2.1580908
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                2.0950813   2.0449341   2.1452285
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                1.9789460   1.9511867   2.0067052
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                1.9932211   1.9496649   2.0367774
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                1.9525047   1.9140835   1.9909259
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                1.1311903   1.0629679   1.1994127
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                1.1078612   1.0786459   1.1370766
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                1.1198725   1.0621084   1.1776367
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                1.4012995   1.3450733   1.4575257
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                1.3072349   1.1865524   1.4279173
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                1.3891382   1.2928801   1.4853962
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                1.1191816   1.0586129   1.1797503
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                1.1122735   1.0730833   1.1514637
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                1.1406641   1.0919323   1.1893958
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                1.2209554   1.1764939   1.2654169
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                1.1936706   1.1497878   1.2375534
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                1.2505060   1.2058556   1.2951564
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg              NA                1.2021158   1.1497860   1.2544455
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg               NA                1.2368530   1.1885779   1.2851282
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                1.1862688   1.1102177   1.2623199
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                1.2071377   1.1606383   1.2536372
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                1.1144391   0.9908888   1.2379893
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                1.1546168   1.0429991   1.2662345
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.9657337   0.9030572   1.0284101
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.0249347   0.9690733   1.0807961
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.0254433   0.9482499   1.1026367
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                1.1491421   1.0832276   1.2150566
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                1.0852217   1.0695280   1.1009153
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                1.1438287   1.0971911   1.1904662
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                1.2090028   1.1521827   1.2658228
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                1.1497349   1.1222601   1.1772097
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                1.2178197   1.1695126   1.2661268
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                1.2309329   1.1932667   1.2685991
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                1.1385590   1.1168499   1.1602681
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                1.2359222   1.1981361   1.2737083
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                1.2846997   1.2487383   1.3206611
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                1.1991202   1.1759911   1.2222493
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                1.2332068   1.1963759   1.2700378
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                1.2067122   1.1801385   1.2332860
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                1.1318929   1.0732043   1.1905816
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                1.2232668   1.1760312   1.2705023
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                1.4770853   1.4375512   1.5166194
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                1.4507821   1.4119269   1.4896373
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                1.4631621   1.4193565   1.5069676
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                1.2000521   1.1848970   1.2152072
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                1.1819330   1.1569519   1.2069141
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                1.2062697   1.1860623   1.2264771
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                1.2873256   1.2309002   1.3437510
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg               NA                1.2736763   1.2377133   1.3096393
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                1.2882710   1.2428265   1.3337154
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.8727124   0.8425880   0.9028368
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.8248326   0.8050146   0.8446505
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.8945593   0.8539207   0.9351979
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              NA                0.9672807   0.9330652   1.0014961
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               NA                0.9993071   0.9103250   1.0882892
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           NA                1.0249918   0.9469440   1.1030396
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.9292761   0.8838966   0.9746556
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.8659482   0.8446079   0.8872886
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.8843489   0.8478485   0.9208493
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.8900409   0.8653759   0.9147058
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.8441454   0.8134466   0.8748441
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.8503943   0.8273468   0.8734418
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.8885976   0.8553583   0.9218368
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.7942219   0.7613219   0.8271218
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.8554431   0.8185442   0.8923419
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.8801949   0.8531328   0.9072570
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.8387227   0.7863313   0.8911142
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.8688938   0.8116766   0.9261109
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.8115548   0.7718349   0.8512747
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.7465998   0.7099850   0.7832147
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.7228518   0.6814538   0.7642498
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.7874420   0.7469567   0.8279274
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.7418305   0.7249536   0.7587074
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.7649425   0.7252088   0.8046762
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.9039770   0.8777777   0.9301762
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.8370148   0.8227270   0.8513026
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.8798601   0.8486028   0.9111175
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.9176327   0.8957563   0.9395092
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.8508267   0.8353330   0.8663205
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.8851365   0.8576696   0.9126033
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.8548143   0.8062451   0.9033835
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.8762754   0.7706924   0.9818583
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.8748206   0.7726607   0.9769805
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.7377793   0.6968545   0.7787040
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.6815317   0.6316899   0.7313734
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.7003053   0.6578257   0.7427848
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.8444314   0.8012926   0.8875703
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.8338101   0.8123368   0.8552834
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.8558229   0.8219489   0.8896968


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.1009054   -0.2690930    0.0672823
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0052600   -0.2077501    0.1972302
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0354708   -0.3356004    0.2646589
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0266997   -0.2557903    0.3091897
0-3 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.0356827   -0.2169837    0.2883492
0-3 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0217978   -0.3253297    0.2817340
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.1045935   -0.2955168    0.0863298
0-3 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1048987   -0.2813394    0.0715421
0-3 months     ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.1005385   -0.0395161    0.2405931
0-3 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0749502   -0.2489775    0.0990770
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.1872566   -0.4878173    0.1133041
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0820027   -0.3263110    0.1623056
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0236539   -0.1485175    0.1958253
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0049619   -0.2138268    0.2039030
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0946522   -0.2185737    0.0292692
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg            0.0382277   -0.0806239    0.1570793
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0458707   -0.2420541    0.1503127
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0526066   -0.2929546    0.1877415
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0661400   -0.1716439    0.0393638
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.1041401   -0.0367953    0.2450754
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0540204   -0.1435435    0.0355026
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0052060   -0.1097405    0.0993285
0-3 months     ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0094570   -0.0568229    0.0757369
0-3 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0296789   -0.0260170    0.0853747
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.1402678   -0.1945091   -0.0860265
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0479719   -0.0988574    0.0029135
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg            0.0365188   -0.0710333    0.1440709
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.1006293   -0.0382483    0.2395070
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0274055   -0.2433440    0.1885329
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.1103876   -0.0700984    0.2908736
3-6 months     ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg            0.0492438   -0.1446770    0.2431646
3-6 months     ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0272197   -0.2429517    0.1885122
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0695422   -0.2062054    0.0671211
3-6 months     ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.1288463   -0.2651291    0.0074366
3-6 months     ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.0121147   -0.1598365    0.1356070
3-6 months     ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg            0.0478277   -0.1386599    0.2343153
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg            0.0944685   -0.1636989    0.3526359
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg            0.0716901   -0.1442989    0.2876791
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0204226   -0.1753624    0.1345173
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0235753   -0.1545869    0.2017376
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.1434180   -0.2357256   -0.0511103
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.1057591   -0.2294896    0.0179715
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.1518716   -0.3016109   -0.0021323
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0876176   -0.2850406    0.1098053
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0010494   -0.0964943    0.0943955
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0726364   -0.0507737    0.1960465
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg            0.0449138   -0.0403634    0.1301911
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg            0.0684006   -0.0402142    0.1770153
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0042190   -0.1089459    0.1005078
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0261552   -0.1136617    0.0613514
3-6 months     ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0054410   -0.0545686    0.0654506
3-6 months     ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0060289   -0.0277403    0.0397981
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg            0.0142752   -0.0373748    0.0659251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0264413   -0.0738413    0.0209587
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0233290   -0.0975438    0.0508858
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           -0.0113177   -0.1007101    0.0780746
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg           -0.0940646   -0.2272023    0.0390731
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg           -0.0121613   -0.1236377    0.0993151
6-12 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.0069082   -0.0790500    0.0652337
6-12 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg            0.0214824   -0.0562566    0.0992214
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0272848   -0.0897550    0.0351854
6-12 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg            0.0295506   -0.0334612    0.0925624
6-12 months    ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg            0.0347372   -0.0364589    0.1059334
6-12 months    ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0158470   -0.1081626    0.0764686
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0926987   -0.2247095    0.0393122
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0525210   -0.1734371    0.0683952
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg            0.0592010   -0.0247564    0.1431583
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0597096   -0.0397246    0.1591438
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           -0.0639204   -0.1364527    0.0086119
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           -0.0053134   -0.0812790    0.0706521
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0592678   -0.1223819    0.0038462
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg            0.0088169   -0.0657625    0.0833964
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0923739   -0.1358483   -0.0488994
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg            0.0049893   -0.0483636    0.0583422
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0855795   -0.1283367   -0.0428224
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0514929   -0.1029685   -0.0000173
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0748193   -0.1392438   -0.0103948
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg            0.0165545   -0.0376429    0.0707519
6-12 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           -0.0263032   -0.0518944   -0.0007119
6-12 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           -0.0139232   -0.0401115    0.0122650
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0181191   -0.0473378    0.0110996
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg            0.0062176   -0.0190414    0.0314766
6-12 months    ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0136493   -0.0805609    0.0532623
6-12 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0009454   -0.0715048    0.0733955
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           -0.0478799   -0.0839386   -0.0118212
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg            0.0218469   -0.0287395    0.0724332
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg               >=58 kg            0.0320264   -0.0633072    0.1273601
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg           >=58 kg            0.0577111   -0.0275071    0.1429294
12-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           -0.0633279   -0.1134747   -0.0131811
12-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           -0.0449272   -0.1031644    0.0133100
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           -0.0458955   -0.0852753   -0.0065156
12-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           -0.0396466   -0.0734038   -0.0058894
12-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           -0.0943757   -0.1411437   -0.0476076
12-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           -0.0331545   -0.0828171    0.0165081
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           -0.0414721   -0.1004401    0.0174958
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           -0.0113011   -0.0745954    0.0519931
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           -0.0649550   -0.1189764   -0.0109335
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           -0.0887030   -0.1460743   -0.0313317
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           -0.0456116   -0.0894737   -0.0017494
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           -0.0224995   -0.0792254    0.0342264
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           -0.0669621   -0.0968041   -0.0371202
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           -0.0241168   -0.0649019    0.0166683
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           -0.0668060   -0.0936134   -0.0399986
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           -0.0324962   -0.0676105    0.0026180
12-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg            0.0214611   -0.0607018    0.1036239
12-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg            0.0200063   -0.0715104    0.1115231
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           -0.0562476   -0.1207382    0.0082430
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           -0.0374740   -0.0964600    0.0215120
12-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg            0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           -0.0106213   -0.0588091    0.0375664
12-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg            0.0113914   -0.0434575    0.0662403
