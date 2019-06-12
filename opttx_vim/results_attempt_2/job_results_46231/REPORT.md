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
      Y: ['haz']
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
        value: FALSE        
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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        mhtcm           n_cell      n
----------  -------------------------  -----------------------------  -------------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24    233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145    233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        64    233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm           105    176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             46    176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        25    176
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            45    195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             94    195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        56    195
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm            27    167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             93    167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm        47    167
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            56    269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            156    269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        57    269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           172    226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28    226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26    226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            74    116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             19    116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        23    116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm            14     33
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm              9     33
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        10     33
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             7     28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm             15     28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         6     28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm             15     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         4     23
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1098   1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51   1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       174   1323
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm          6403   6654
Birth       ki1119695-PROBIT           BELARUS                        <151 cm             59   6654
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       192   6654
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7256   9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            498   9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1305   9059
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm            45    368
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            250    368
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm        73    368
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           508   1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm            712   1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       456   1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           616   2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1445   2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       838   2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1285   7652
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           4376   7652
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      1991   7652
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        61    241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121    209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             51    209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37    209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            55    235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm            112    235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        68    235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            41    236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            132    236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63    236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm            58    272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm            157    272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        57    272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           187    249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31    249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        31    249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           147    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             48    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52    247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           164    362
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            115    362
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        83    362
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            17     96
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm             51     96
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm        28     96
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            310    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130    536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           126    581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315    581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140    581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1245   1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309   1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441   1995
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568   1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67   1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242   1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36    231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141    231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54    231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm          6194   6433
6 months    ki1119695-PROBIT           BELARUS                        <151 cm             56   6433
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       183   6433
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5650   7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            432   7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1021   7103
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm            55    455
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            311    455
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm        89    455
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541   1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm            791   1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       487   1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           560   2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368   2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       778   2706
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513    836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131    836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192    836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1320   8283
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           4843   8283
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2120   8283
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            137    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        53    212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            95    169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43    169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31    169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53    226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            110    226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63    226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38    228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129    228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61    228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            46    201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm            115    201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        40    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180    234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27    234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27    234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           126    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             40    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            76    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2      6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1339   1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60   1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204   1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          1533   1580
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             12   1580
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm        35   1580
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           261    360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34    360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        65    360
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm            60    482
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            326    482
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm        96    482
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           549   1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm            776   1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       478   1803
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           507   2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1239   2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       703   2449
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           345    561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             92    561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       124    561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm           673   4262
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           2484   4262
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      1105   4262


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/593d850e-33dc-4214-b4ab-9dc26729ed93/e8efe711-51f1-453a-b1ae-f3c42d1ff9b6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.7943952   -1.0498169   -0.5389734
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6792995    0.2242145    1.1343844
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.1508350   -1.4227478   -0.8789221
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.6022366   -0.9657775   -0.2386957
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0746759   -0.3209702    0.1716183
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.4362815   -0.8408455   -0.0317174
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1278085    0.6209934    1.6346236
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1376907   -0.5243980    0.2490167
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0059989   -1.8914509   -0.1205469
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7435616    1.6519263    1.8351970
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2118495   -1.4459547   -0.9777442
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4478310   -0.4829447   -0.4127174
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0716822   -1.3854572   -0.7579071
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8660873   -0.9754925   -0.7566822
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7749795   -0.8628623   -0.6870967
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6959967   -0.7503140   -0.6416795
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0061565   -0.2742701    0.2865830
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0286897    0.6794949    1.3778846
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4048198   -0.6002814   -0.2093581
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3540998    0.0502875    0.6579121
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.3491929    1.0536254    1.6447604
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4838983    0.1359819    0.8318148
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.6081566    0.3135057    0.9028075
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.6052588   -0.8336720   -0.3768456
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.7427309   -1.3417172   -0.1437447
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2978573   -0.4809718   -0.1147428
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2010856   -0.3981961   -0.0039751
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0927824   -0.0810941    0.2666589
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3100892    0.1919695    0.4282088
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0388765   -0.1863828    0.1086298
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.3125528    0.0159133    0.6091923
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.8493836    0.7183144    0.9804528
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.2738189    0.1878610    0.3597767
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1335668    0.0011154    0.2660182
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6105419   -0.7120400   -0.5090438
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2506455   -0.3319340   -0.1693570
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5768710    0.3862308    0.7675112
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5106867   -0.5733383   -0.4480350
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0619960   -1.3222643   -0.8017276
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.5597248    0.1610791    0.9583704
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6946344   -0.9259026   -0.4633661
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3449427   -0.5892070   -0.1006784
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.1441747   -0.1040331    0.3923825
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2613434   -0.0378218    0.5605086
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0324406   -0.2859149    0.2210336
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.7836938   -0.9882511   -0.5791366
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7211707   -0.9359687   -0.5063727
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.4262369   -0.6309686   -0.2215051
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6776661   -0.8198802   -0.5354520
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.7205502    0.2374295    1.2036710
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8681063   -1.0901202   -0.6460924
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.6137418   -0.7449672   -0.4825165
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4149349   -0.5029821   -0.3268876
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4977497   -0.5768435   -0.4186559
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.0768456   -0.2148843    0.0611931
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1780965   -1.2529367   -1.1032562


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.9724464   -1.1091046   -0.8357881
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.3832386    0.2044597    0.5620175
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0698974   -1.2115847   -0.9282102
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.9126946   -1.0520834   -0.7733058
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.0660967   -0.1789362    0.0467429
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.0346018   -0.1831486    0.1139451
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.7950000    0.5947353    0.9952647
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.1627273   -0.3719320    0.0464775
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7101663    1.6251406    1.7951919
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1836519   -1.5174268   -0.8498771
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4901203   -0.5209592   -0.4592815
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2657337   -1.4050782   -1.1263892
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9773926   -1.0345102   -0.9202750
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7661866   -0.7931615   -0.7392117
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7684530   -0.9589959   -0.5779101
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.1045833   -1.3327472   -0.8764195
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0787757    0.0256721    0.1318793
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.2054148   -0.2588995   -0.1519302
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0255916   -0.1507513    0.0995680
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5803622    0.5051894    0.6555350
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2928354    0.2648888    0.3207820
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0531648   -0.0564716    0.1628012
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6768114   -0.7301317   -0.6234912
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4515431    0.3802415    0.5228446
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5889448   -0.6164744   -0.5614153
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.8208255   -0.9429246   -0.6987264
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.4466272    0.2416144    0.6516401
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -0.9525664   -1.0684455   -0.8366872
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           observed             observed           0.1199005   -0.0000331    0.2398341
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.4096154    0.2902946    0.5289362
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0500935   -0.0748234    0.1750103
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8864991   -0.9695215   -0.8034768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.8101717   -0.8592463   -0.7610970
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8069040    0.6553606    0.9584474
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1803611   -1.2905182   -1.0702040
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5761618   -0.6548073   -0.4975163
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5719523   -0.6185009   -0.5254037
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0469519   -0.1290932    0.0351895
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2923557   -1.3250399   -1.2596715


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1780512   -0.4209305    0.0648281
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.2960608   -0.7045553    0.1124336
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.0809375   -0.1490210    0.3108960
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.3104580   -0.6418079    0.0208919
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0085793   -0.2010551    0.2182137
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4016797    0.0267005    0.7766589
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3328085   -0.7993133    0.1336963
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0250366   -0.4054516    0.3553784
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4179297   -1.2133269    0.3774676
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0333953   -0.0748235    0.0080328
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.0281975   -0.1070389    0.1634340
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0422893   -0.0599179   -0.0246606
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1940515   -0.4734471    0.0853440
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1113053   -0.2045634   -0.0180472
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0322544   -0.0418337    0.1063426
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0701899   -0.1178043   -0.0225754
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1459525   -0.4058890    0.1139841
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0569673   -0.3580852    0.2441507
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2939746   -0.4684921   -0.1194570
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2430546   -0.5233613    0.0372522
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2928142   -0.5531165   -0.0325119
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0451445   -0.2945095    0.3847985
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0911053   -0.3572843    0.1750737
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1631943   -0.2723568   -0.0540317
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.3618524   -0.9068892    0.1831844
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1410528   -0.2979075    0.0158018
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0069035   -0.1782552    0.1644482
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0630201   -0.2158721    0.0898319
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2313135   -0.3396705   -0.1229565
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1665383   -0.3048500   -0.0282267
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3381444   -0.6161363   -0.0601525
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.2690215   -0.3935950   -0.1444479
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.0190165   -0.0614034    0.0994365
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0804020   -0.1562427   -0.0045612
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0662695   -0.1507180    0.0181789
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0431978   -0.1126693    0.0262737
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1253279   -0.3002823    0.0496264
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0782581   -0.1347577   -0.0217586
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.2411705   -0.0050784    0.4874194
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1130975   -0.4306515    0.2044564
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2579320   -0.4679014   -0.0479626
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0315047   -0.2629328    0.1999235
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0242742   -0.2492322    0.2006838
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1482720   -0.1063915    0.4029355
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0825341   -0.1317976    0.2968658
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1278852   -0.3090951    0.0533247
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1653285   -0.3500029    0.0193460
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1841133   -0.3691350    0.0009083
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1325056   -0.2650717    0.0000606
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.0863538   -0.3751282    0.5478358
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3122548   -0.5205303   -0.1039794
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0375800   -0.0609109    0.1360710
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1570174   -0.2300344   -0.0840004
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1122095   -0.1827408   -0.0416781
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.0298937   -0.0759865    0.1357740
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1142592   -0.1853782   -0.0431403
