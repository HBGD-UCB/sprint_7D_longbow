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

**Outcome Variable:** haz

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=155 cm            25     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     <151 cm            156     246
Birth       ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm        65     246
Birth       ki0047075b-MAL-ED          BRAZIL                         >=155 cm           107     184
Birth       ki0047075b-MAL-ED          BRAZIL                         <151 cm             49     184
Birth       ki0047075b-MAL-ED          BRAZIL                         [151-155) cm        28     184
Birth       ki0047075b-MAL-ED          INDIA                          >=155 cm            46     198
Birth       ki0047075b-MAL-ED          INDIA                          <151 cm             95     198
Birth       ki0047075b-MAL-ED          INDIA                          [151-155) cm        57     198
Birth       ki0047075b-MAL-ED          NEPAL                          >=155 cm            27     172
Birth       ki0047075b-MAL-ED          NEPAL                          <151 cm             96     172
Birth       ki0047075b-MAL-ED          NEPAL                          [151-155) cm        49     172
Birth       ki0047075b-MAL-ED          PERU                           >=155 cm            58     276
Birth       ki0047075b-MAL-ED          PERU                           <151 cm            161     276
Birth       ki0047075b-MAL-ED          PERU                           [151-155) cm        57     276
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm           173     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm             29     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm        26     228
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm            76     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm             21     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm        24     121
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=155 cm            59     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          <151 cm             33     130
Birth       ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm        38     130
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             7      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     <151 cm             15      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         6      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm             17      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         6      27
Birth       ki1101329-Keneba           GAMBIA                         >=155 cm          1186    1429
Birth       ki1101329-Keneba           GAMBIA                         <151 cm             51    1429
Birth       ki1101329-Keneba           GAMBIA                         [151-155) cm       192    1429
Birth       ki1119695-PROBIT           BELARUS                        >=155 cm         13206   13729
Birth       ki1119695-PROBIT           BELARUS                        <151 cm            125   13729
Birth       ki1119695-PROBIT           BELARUS                        [151-155) cm       398   13729
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          7704    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            558    9667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1405    9667
Birth       ki1135781-COHORTS          GUATEMALA                      >=155 cm           110     840
Birth       ki1135781-COHORTS          GUATEMALA                      <151 cm            545     840
Birth       ki1135781-COHORTS          GUATEMALA                      [151-155) cm       185     840
Birth       ki1135781-COHORTS          INDIA                          >=155 cm           530    1774
Birth       ki1135781-COHORTS          INDIA                          <151 cm            763    1774
Birth       ki1135781-COHORTS          INDIA                          [151-155) cm       481    1774
Birth       ki1135781-COHORTS          PHILIPPINES                    >=155 cm           630    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    <151 cm           1545    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       875    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2900   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <151 cm          11735   19536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4901   19536
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
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm           510    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm            421    1228
6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm       297    1228
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm            74     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm            202     379
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm       103     379
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            96     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm            311     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       130     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           126     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm            316     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           134     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            411     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm          1246    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm            309    1996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm       441    1996
6 months    ki1101329-Keneba           GAMBIA                         >=155 cm          1568    1877
6 months    ki1101329-Keneba           GAMBIA                         <151 cm             67    1877
6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm       242    1877
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm            36     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm            141     231
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm        54     231
6 months    ki1119695-PROBIT           BELARUS                        >=155 cm         12533   13033
6 months    ki1119695-PROBIT           BELARUS                        <151 cm            121   13033
6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm       379   13033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm          5672    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm            432    7126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm      1022    7126
6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm           117     943
6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm            629     943
6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm       197     943
6 months    ki1135781-COHORTS          INDIA                          >=155 cm           541    1819
6 months    ki1135781-COHORTS          INDIA                          <151 cm            790    1819
6 months    ki1135781-COHORTS          INDIA                          [151-155) cm       488    1819
6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm           561    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm           1368    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       779    2708
6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm           513     836
6 months    ki1148112-LCNI-5           MALAWI                         <151 cm            131     836
6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm       192     836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          2660   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           9797   16761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      4304   16761
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
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm            77     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm            252     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm       100     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm           122     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm            314     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm       140     576
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm           100     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm            287     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm       127     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         2       6
24 months   ki1101329-Keneba           GAMBIA                         >=155 cm          1338    1602
24 months   ki1101329-Keneba           GAMBIA                         <151 cm             60    1602
24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm       204    1602
24 months   ki1119695-PROBIT           BELARUS                        >=155 cm          3859    4005
24 months   ki1119695-PROBIT           BELARUS                        <151 cm             35    4005
24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm       111    4005
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm           278     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm             34     378
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm        66     378
24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm           127     997
24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm            661     997
24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm       209     997
24 months   ki1135781-COHORTS          INDIA                          >=155 cm           552    1819
24 months   ki1135781-COHORTS          INDIA                          <151 cm            785    1819
24 months   ki1135781-COHORTS          INDIA                          [151-155) cm       482    1819
24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm           510    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm           1234    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm       701    2445
24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm           355     577
24 months   ki1148112-LCNI-5           MALAWI                         <151 cm             95     577
24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm       127     577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm          1314    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm           5067    8599
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm      2218    8599


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
![](/tmp/e304088e-3456-4823-b4eb-234b71adb80c/94e277e7-8b55-4b32-8447-b3058a2762b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.9492636   -1.3467874   -0.5517397
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.6389173   -0.9122471   -0.3655875
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.7471663   -1.0284436   -0.4658889
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.2731602   -0.5974476    0.0511271
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.6255568   -0.8893699   -0.3617437
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.5944377   -0.7452155   -0.4436598
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.9185335   -1.3831264   -0.4539406
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.1853770   -1.4932405   -0.8775135
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.2119782   -1.0185572    0.5946009
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           0.1374911    0.0658077    0.2091745
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.2215232    1.0807388    1.3623076
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4384441   -0.4658604   -0.4110279
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.5100471    0.3070170    0.7130773
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.2702482   -0.3659683   -0.1745280
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed           0.0747869   -0.0034998    0.1530736
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1356163   -1.1814056   -1.0898271
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.0584036   -1.2978619   -0.8189453
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1210820   -0.1936650    0.4358289
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.9122007   -1.1276965   -0.6967050
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.0452310   -0.2577380    0.1672761
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -1.1151338   -1.3305268   -0.8997407
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.8969687   -1.0400388   -0.7538987
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -1.2321791   -1.4203763   -1.0439818
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -1.0720647   -1.1591389   -0.9849906
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.4128725   -1.6386708   -1.1870743
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.9145152   -1.1270004   -0.7020299
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.6615062   -0.8365717   -0.4864408
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.8788969   -1.0443244   -0.7134694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.3453175   -0.4072955   -0.2833395
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8401617   -0.8933655   -0.7869579
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -1.4569840   -1.8201975   -1.0937705
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1330437    0.0397224    0.2263650
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8079461   -0.8392420   -0.7766503
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.2311108   -1.4320959   -1.0301258
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4992660   -0.5926100   -0.4059221
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.7135132   -0.8031064   -0.6239200
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.4674102   -1.5551982   -1.3796222
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7383507   -0.7847799   -0.6919215
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -1.3899396   -1.7036245   -1.0762547
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed           0.1231804   -0.1109800    0.3573408
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -1.2958048   -1.5396739   -1.0519356
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.7134816   -0.9510902   -0.4758730
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -1.3060317   -1.5689844   -1.0430790
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -1.7520666   -1.9163456   -1.5877877
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -2.3319988   -2.4965349   -2.1674627
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -1.5745119   -1.8219769   -1.3270469
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.1482817   -1.3287180   -0.9678453
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.9131296   -1.0721427   -0.7541165
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -1.4877033   -1.5444619   -1.4309447
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1076242   -0.4146224    0.1993740
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.2829704   -2.4627925   -2.1031484
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -2.2629108   -2.4708688   -2.0549529
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -1.3229368   -1.4201403   -1.2257332
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -1.9199907   -2.0149955   -1.8249859
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -1.6584606   -1.7559491   -1.5609721
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.4437834   -1.5035573   -1.3840096


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.0455285   -1.1715695   -0.9194875
Birth       ki0047075b-MAL-ED          BRAZIL                         observed             observed          -0.7397283   -0.8996215   -0.5798350
Birth       ki0047075b-MAL-ED          INDIA                          observed             observed          -1.0200505   -1.1624932   -0.8776078
Birth       ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.7052907   -0.8627483   -0.5478331
Birth       ki0047075b-MAL-ED          PERU                           observed             observed          -0.9386232   -1.0507144   -0.8265319
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -0.6921930   -0.8218578   -0.5625282
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.9267769   -1.1425813   -0.7109724
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4803846   -1.6742160   -1.2865532
Birth       ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           0.0509377   -0.0152181    0.1170935
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3266356    1.1675034    1.4857678
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4773539   -0.5018158   -0.4528920
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed           0.1335238    0.0490187    0.2180289
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.5973224   -0.6502394   -0.5444055
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.5749898   -1.5947766   -1.5552029
6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.2056777   -1.3231497   -1.0882058
6 months    ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          observed             observed          -1.2148369   -1.3332371   -1.0964367
6 months    ki0047075b-MAL-ED          NEPAL                          observed             observed          -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           observed             observed          -1.3272488   -1.4359649   -1.2185326
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.0728012   -1.2026830   -0.9429194
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -1.3601215   -1.4821830   -1.2380600
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -1.4068893   -1.4981242   -1.3156543
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.8882058   -1.9998264   -1.7765852
6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0848568   -1.1613109   -1.0084028
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5424553   -0.5916933   -0.4932174
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.9159303   -0.9650776   -0.8667830
6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             observed          -1.5599206   -1.6885363   -1.4313049
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1157811    0.0226850    0.2088772
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.9009844   -0.9286528   -0.8733161
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.8116225   -1.8800533   -1.7431916
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.9254151   -0.9779952   -0.8728349
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         observed             observed          -1.6577751   -1.7275296   -1.5880207
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3139055   -1.3370256   -1.2907854
24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             observed          -1.9431132   -2.0691678   -1.8170586
24 months   ki0047075b-MAL-ED          BRAZIL                         observed             observed           0.0418343   -0.1253834    0.2090521
24 months   ki0047075b-MAL-ED          INDIA                          observed             observed          -1.8439159   -1.9704751   -1.7173568
24 months   ki0047075b-MAL-ED          NEPAL                          observed             observed          -1.2752193   -1.3954783   -1.1549603
24 months   ki0047075b-MAL-ED          PERU                           observed             observed          -1.7500995   -1.8705474   -1.6296516
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             observed          -1.6220299   -1.7590593   -1.4850005
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             observed          -2.6058879   -2.7403043   -2.4714714
24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             observed          -2.1807945   -2.2835902   -2.0779987
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5839236   -1.6672059   -1.5006413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.4295331   -1.5127726   -1.3462935
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -1.5677937   -1.6196515   -1.5159358
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1322181   -0.4300523    0.1656161
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.4107937   -2.5337436   -2.2878437
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -2.8678134   -2.9347113   -2.8009156
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -1.8566355   -1.9110340   -1.8022370
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -2.3898650   -2.4346888   -2.3450412
24 months   ki1148112-LCNI-5           MALAWI                         observed             observed          -1.8744367   -1.9556750   -1.7931984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0127573   -2.0405350   -1.9849796


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.0962649   -0.4591101    0.2665804
Birth       ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.1008110   -0.3228114    0.1211894
Birth       ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.2728842   -0.5234722   -0.0222963
Birth       ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.4321305   -0.7451274   -0.1191336
Birth       ki0047075b-MAL-ED          PERU                           optimal              observed          -0.3130664   -0.5430234   -0.0831094
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.0977553   -0.1712553   -0.0242554
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0082434   -0.4017989    0.3853121
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2950076   -0.5090893   -0.0809259
Birth       ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.3173075   -1.0343484    0.3997333
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0865534   -0.1229078   -0.0501989
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           0.1051124    0.0589580    0.1512667
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0389098   -0.0512439   -0.0265756
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.3765233   -0.5672272   -0.1858195
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.3270743   -0.4079373   -0.2462112
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.3238361   -0.3953350   -0.2523372
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.4393734   -0.4815970   -0.3971499
6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.1472741   -0.3867160    0.0921677
6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0700612   -0.3329407    0.1928182
6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.3026362   -0.5004008   -0.1048716
6 months    ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5158284   -0.7223858   -0.3092710
6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          -0.2121150   -0.4100741   -0.0141560
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          -0.1758325   -0.2748294   -0.0768356
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1279424   -0.2728991    0.0170143
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.3348245   -0.3814113   -0.2882377
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -0.4753333   -0.6848460   -0.2658205
6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.4928669   -0.6851801   -0.3005537
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4233506   -0.5783586   -0.2683426
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.3197814   -0.4696176   -0.1699453
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1971378   -0.2356017   -0.1586739
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0757686   -0.0985893   -0.0529479
6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          -0.1029366   -0.4315439    0.2256706
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0172626   -0.0212859   -0.0132394
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0930383   -0.1082431   -0.0778334
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.5805117   -0.7674780   -0.3935453
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.4261490   -0.5052345   -0.3470636
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4270592   -0.5075783   -0.3465400
6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.1903650   -0.2469549   -0.1337750
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5755548   -0.6167246   -0.5343850
24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          -0.5531736   -0.8636911   -0.2426561
24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          -0.0813461   -0.2318370    0.0691448
24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          -0.5481112   -0.7674218   -0.3288006
24 months   ki0047075b-MAL-ED          NEPAL                          optimal              observed          -0.5617377   -0.7921929   -0.3312825
24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          -0.4440678   -0.6743922   -0.2137434
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed           0.1300367   -0.0160345    0.2761079
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2738891   -0.4032724   -0.1445058
24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          -0.6062826   -0.8281390   -0.3844261
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.4356420   -0.5961627   -0.2751212
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.5164035   -0.6662476   -0.3665593
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0800904   -0.1034528   -0.0567280
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0245939   -0.0367763   -0.0124114
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1278232   -0.2470170   -0.0086294
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.6049026   -0.7971357   -0.4126695
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5336987   -0.6153898   -0.4520076
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.4698743   -0.5553021   -0.3844466
24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          -0.2159762   -0.2829879   -0.1489644
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5689739   -0.6231950   -0.5147527
