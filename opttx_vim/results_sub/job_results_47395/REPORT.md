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

agecat      studyid                    country                        mhtcm           n_cell       n
----------  -------------------------  -----------------------------  -------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            145     233
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        64     233
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm           105     176
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             46     176
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        25     176
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            45     195
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             94     195
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        56     195
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     167
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             93     167
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm        47     167
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            56     269
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            156     269
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        57     269
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           172     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             28     226
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     226
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            74     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             19     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        23     116
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm            52     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm             28     110
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        30     110
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm             15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         6      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             4      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm             15      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         4      23
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1098    1323
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51    1323
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       174    1323
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13149   13670
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            124   13670
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       397   13670
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7256    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            498    9059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1305    9059
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           103     748
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            484     748
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       161     748
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           508    1676
Birth       ki1135781-COHORTS          INDIA                          <151 cm            712    1676
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       456    1676
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           616    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1445    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       838    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2589   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           8947   15648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4112   15648
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            24     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        61     241
6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm           121     209
6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm             51     209
6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        37     209
6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm            55     235
6 months    ki0047075b-MAL-ED          INDIA                          <151 cm            112     235
6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm        68     235
6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm            41     236
6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm            132     236
6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm        63     236
6 months    ki0047075b-MAL-ED          PERU                           >=155 cm            58     272
6 months    ki0047075b-MAL-ED          PERU                           <151 cm            157     272
6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm        57     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           187     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             31     249
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        31     249
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           147     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             48     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        52     247
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           509    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            421    1226
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       296    1226
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            75     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            202     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm       102     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            310     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           126     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     581
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1245    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1995
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm         12531   13030
6 months    ki1119695-PROBIT           BELARUS                        <151 cm            121   13030
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       378   13030
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5650    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            432    7103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1021    7103
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     946
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            632     946
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       197     946
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm            791    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       487    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           560    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       778    2706
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2651   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9787   16734
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4296   16734
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            22     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm            137     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        53     212
24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm            95     169
24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm             43     169
24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        31     169
24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm            53     226
24 months   ki0047075b-MAL-ED          INDIA                          <151 cm            110     226
24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm        63     226
24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm            38     228
24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm            129     228
24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm        61     228
24 months   ki0047075b-MAL-ED          PERU                           >=155 cm            46     201
24 months   ki0047075b-MAL-ED          PERU                           <151 cm            115     201
24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm        40     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           180     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             27     234
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        27     234
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm           126     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             40     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        48     214
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            76     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            315     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1339    1603
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1603
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1603
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3797    3941
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             34    3941
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       110    3941
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           261     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34     360
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        65     360
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           128    1006
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            668    1006
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       210    1006
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           549    1803
24 months   ki1135781-COHORTS          INDIA                          <151 cm            776    1803
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       478    1803
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           507    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1239    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       703    2449
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           345     561
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             92     561
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       124     561
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1305    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5052    8570
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2213    8570


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
![](/tmp/e1acf9a5-0257-4bae-b727-4429dff70503/3f9188a0-7625-4d99-bc03-07b06da077a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8597346   -1.1204485   -0.5990206
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.8391110    0.4576324    1.2205895
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2137654   -1.5198955   -0.9076352
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4651659   -0.7643153   -0.1660165
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.0889083   -0.3100031    0.1321865
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.2274565   -0.6356834    0.1807704
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           1.1424127    0.6266027    1.6582227
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2544143   -0.6351417    0.1263132
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.0017190   -1.9684087   -0.0350293
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.7191881    1.5717467    1.8666295
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.2497968   -1.4236081   -1.0759856
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4447684   -0.4798743   -0.4096625
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.0478848   -1.2468013   -0.8489682
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8706916   -0.9803148   -0.7610683
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7906018   -0.8777040   -0.7034996
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.6740699   -0.7128347   -0.6353052
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0757202   -0.2090385    0.3604790
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           1.0417042    0.6887052    1.3947031
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.4026203   -0.6017422   -0.2034984
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed           0.3683507    0.0614838    0.6752176
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed           1.2357515    0.9461230    1.5253801
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.4392638   -0.1080585    0.9865861
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.4734667    0.2240505    0.7228829
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.5954130   -0.7181948   -0.4726313
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.1618209   -1.3443478   -0.9792939
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2691414   -0.4432637   -0.0950190
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.2095491   -0.4113495   -0.0077488
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.0605565   -0.1217758    0.2428888
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3308750    0.2095288    0.4522212
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0293041   -0.1744716    0.1158634
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed           0.3206270    0.0263638    0.6148902
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.6077294    0.4835303    0.7319286
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3286355    0.2480069    0.4092642
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1840259    0.0730694    0.2949824
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6272830   -0.7303340   -0.5242320
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2201368   -0.3007960   -0.1394776
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed           0.5691642    0.3793594    0.7589690
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5003956   -0.5443467   -0.4564444
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.8373783   -1.1496921   -0.5250646
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.6326645    0.2228581    1.0424709
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.6806743   -0.9060009   -0.4553476
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1885616   -0.4697244    0.0926011
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0453011   -0.1988020    0.2894042
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1367062   -0.1292685    0.4026810
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0122567   -0.2979479    0.2734346
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9457190   -1.1529900   -0.7384480
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.7144299   -0.9291903   -0.4996696
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3790118   -0.5925004   -0.1655232
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.6775271   -0.8201162   -0.5349381
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.5398006    0.3167148    0.7628864
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9272482   -1.1618758   -0.6926207
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.2842595   -0.4074767   -0.1610423
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.4014942   -0.4903445   -0.3126439
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5209086   -0.6001648   -0.4416523
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2257079   -0.3872207   -0.0641951
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1785459   -1.2355127   -1.1215791


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.1601818   -0.3763991    0.0560355
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4239286   -1.7688028   -1.0790544
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7101663    1.6251406    1.7951919
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1440966   -1.3546950   -0.9334981
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4901203   -0.5209592   -0.4592815
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.0617914   -1.1634113   -0.9601716
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9773926   -1.0345102   -0.9202750
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7243418   -0.7441385   -0.7045450
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -0.1397960   -0.2688682   -0.0107238
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -0.6987943   -0.8241325   -0.5734561
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed           0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           observed             observed           1.0563787    0.9342938    1.1784635
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed           0.5290428    0.3750394    0.6830463
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed           0.5170513    0.3872178    0.6468847
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.6426305   -0.7702214   -0.5150396
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0053826   -1.1208084   -0.8899568
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.4389101   -0.5279432   -0.3498771
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2079891   -0.2925599   -0.1234183
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0787757    0.0256721    0.1318793
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.2054148   -0.2588995   -0.1519302
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -0.0255916   -0.1507513    0.0995680
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5827947    0.5245418    0.6410476
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.2928354    0.2648888    0.3207820
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1926004    0.1207018    0.2644990
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.6768114   -0.7301317   -0.6234912
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed           0.4515431    0.3802415    0.5228446
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5932195   -0.6127714   -0.5736676
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
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.6869754    0.5725638    0.8013869
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1803611   -1.2905182   -1.0702040
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.2844036   -0.3405555   -0.2282517
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.5719523   -0.6185009   -0.5254037
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -0.0469519   -0.1290932    0.0351895
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2970642   -1.3203662   -1.2737621


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1127118   -0.3554605    0.1300369
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.4558723   -0.8006083   -0.1111363
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed           0.1438679   -0.1243739    0.4121098
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4475287   -0.7185645   -0.1764929
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed           0.0228117   -0.1741758    0.2197991
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1928547   -0.1858516    0.5715611
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3474127   -0.8173100    0.1224846
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed           0.0942325   -0.1581561    0.3466210
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4222095   -1.2961705    0.4517515
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0090218   -0.1277854    0.1097418
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.1057003    0.0115574    0.1998431
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0453519   -0.0632376   -0.0274663
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0139067   -0.1823748    0.1545615
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.1067010   -0.2004594   -0.0129427
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0478767   -0.0257009    0.1214543
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0502718   -0.0836653   -0.0168784
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.2155162   -0.4781920    0.0471596
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0699817   -0.3748293    0.2348660
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2961740   -0.4750743   -0.1172738
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2573055   -0.5399041    0.0252930
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.1793729   -0.4328568    0.0741110
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.0897791   -0.4159664    0.5955245
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0435846   -0.1878193    0.2749884
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0472175   -0.1596486    0.0652136
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.1564383    0.0076121    0.3052644
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.1697688   -0.3210161   -0.0185215
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0015600   -0.1745026    0.1776226
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0307943   -0.1896925    0.1281040
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2520993   -0.3621768   -0.1420219
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1761107   -0.3122362   -0.0399852
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.3462186   -0.6218696   -0.0705677
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0249347   -0.1336822    0.0838127
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0358001   -0.1109487    0.0393485
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.0085745   -0.0792684    0.0964174
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0495284   -0.1354312    0.0363743
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0737065   -0.1425107   -0.0049023
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1176211   -0.2918963    0.0566540
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0928239   -0.1317751   -0.0538727
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed           0.0165528   -0.2776460    0.3107517
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1860373   -0.4955820    0.1235075
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2718921   -0.4758736   -0.0679106
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.1878857   -0.4424164    0.0666449
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed           0.0745994   -0.1470780    0.2962768
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.2729092    0.0384245    0.5073938
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.0623501   -0.1611020    0.2858023
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed           0.0341399   -0.1480789    0.2163588
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1720692   -0.3568168    0.0126783
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2313384   -0.4249983   -0.0376785
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1326446   -0.2655486    0.0002595
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.1471748   -0.0488271    0.3431767
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2531129   -0.4728844   -0.0333414
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.0001440   -0.1141602    0.1138721
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1704581   -0.2438927   -0.0970235
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0890506   -0.1595545   -0.0185467
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed           0.1787560    0.0462361    0.3112759
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1185183   -0.1714359   -0.0656006
