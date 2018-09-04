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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0       44     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                0       47     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                1        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               0       85     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               1        2     187
Birth       ki1101329-Keneba           GAMBIA                         1                0      153    1407
Birth       ki1101329-Keneba           GAMBIA                         1                1        3    1407
Birth       ki1101329-Keneba           GAMBIA                         2                0      144    1407
Birth       ki1101329-Keneba           GAMBIA                         2                1        2    1407
Birth       ki1101329-Keneba           GAMBIA                         3+               0     1084    1407
Birth       ki1101329-Keneba           GAMBIA                         3+               1       21    1407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     5777   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      195   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                0     4022   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                1      103   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     3589   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      143   13829
Birth       ki1135781-COHORTS          GUATEMALA                      1                0      109     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        3     852
Birth       ki1135781-COHORTS          GUATEMALA                      2                0      134     852
Birth       ki1135781-COHORTS          GUATEMALA                      2                1        3     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+               0      598     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+               1        5     852
Birth       ki1135781-COHORTS          INDIA                          1                0      674    4122
Birth       ki1135781-COHORTS          INDIA                          1                1       22    4122
Birth       ki1135781-COHORTS          INDIA                          2                0     1016    4122
Birth       ki1135781-COHORTS          INDIA                          2                1       21    4122
Birth       ki1135781-COHORTS          INDIA                          3+               0     2319    4122
Birth       ki1135781-COHORTS          INDIA                          3+               1       70    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0      661    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1       14    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2                0      677    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2                1       10    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+               0     1666    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+               1       22    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    10744   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     1798   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0    12254   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1     1166   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               0    12110   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               1     1116   39188
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      360    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       32    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0      279    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1       25    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               0      569    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               1       71    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       64     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        8     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       78     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1        6     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               0      180     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               1       37     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      206     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                0      207     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                1        5     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               0      156     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               1        4     583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      674    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        6    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      649    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        8    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0      654    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        4    1995
6 months    ki1101329-Keneba           GAMBIA                         1                0      190    1623
6 months    ki1101329-Keneba           GAMBIA                         1                1        4    1623
6 months    ki1101329-Keneba           GAMBIA                         2                0      159    1623
6 months    ki1101329-Keneba           GAMBIA                         2                1        5    1623
6 months    ki1101329-Keneba           GAMBIA                         3+               0     1218    1623
6 months    ki1101329-Keneba           GAMBIA                         3+               1       47    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      294    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       12    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0      286    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1       12    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               0      506    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               1       16    1126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     3160    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      142    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0     2430    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1       92    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     2358    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      112    8294
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      116     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       16     961
6 months    ki1135781-COHORTS          GUATEMALA                      2                0      122     961
6 months    ki1135781-COHORTS          GUATEMALA                      2                1       17     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+               0      599     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+               1       91     961
6 months    ki1135781-COHORTS          INDIA                          1                0      713    4291
6 months    ki1135781-COHORTS          INDIA                          1                1       27    4291
6 months    ki1135781-COHORTS          INDIA                          2                0     1056    4291
6 months    ki1135781-COHORTS          INDIA                          2                1       40    4291
6 months    ki1135781-COHORTS          INDIA                          3+               0     2314    4291
6 months    ki1135781-COHORTS          INDIA                          3+               1      141    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      553    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       21    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2                0      584    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2                1       22    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+               0     1439    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+               1       89    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    11777   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      968   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0    10860   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      530   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               0     8889   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               1      537   33561
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      193     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                0      195     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               0      140     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               1       13     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        1       6
24 months   ki1101329-Keneba           GAMBIA                         1                0      129    1376
24 months   ki1101329-Keneba           GAMBIA                         1                1        8    1376
24 months   ki1101329-Keneba           GAMBIA                         2                0      135    1376
24 months   ki1101329-Keneba           GAMBIA                         2                1        4    1376
24 months   ki1101329-Keneba           GAMBIA                         3+               0      997    1376
24 months   ki1101329-Keneba           GAMBIA                         3+               1      103    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      244     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       28     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0      232     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1       28     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               0      414     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               1       52     998
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      126     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       51     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0       97     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       37     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               0      102     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               1       43     456
24 months   ki1135781-COHORTS          GUATEMALA                      1                0      102    1067
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       65    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2                0       87    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2                1       64    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+               0      420    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+               1      329    1067
24 months   ki1135781-COHORTS          INDIA                          1                0      476    3383
24 months   ki1135781-COHORTS          INDIA                          1                1       89    3383
24 months   ki1135781-COHORTS          INDIA                          2                0      715    3383
24 months   ki1135781-COHORTS          INDIA                          2                1      135    3383
24 months   ki1135781-COHORTS          INDIA                          3+               0     1474    3383
24 months   ki1135781-COHORTS          INDIA                          3+               1      494    3383
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      431    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       93    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2                0      403    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2                1      141    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               0      922    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               1      455    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     5355   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      953   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     5016   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      819   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               0     4159   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               1      908   17210


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA

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
![](/tmp/7e8ad27b-9302-4d74-ab99-f6554a4d7e11/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e8ad27b-9302-4d74-ab99-f6554a4d7e11/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e8ad27b-9302-4d74-ab99-f6554a4d7e11/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e8ad27b-9302-4d74-ab99-f6554a4d7e11/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0403322   0.0341311   0.0465334
Birth       ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.0278220   0.0213377   0.0343064
Birth       ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.0671197   0.0574424   0.0767969
Birth       ki1135781-COHORTS          INDIA         1                    NA                0.0316632   0.0188217   0.0445047
Birth       ki1135781-COHORTS          INDIA         2                    NA                0.0202027   0.0117561   0.0286494
Birth       ki1135781-COHORTS          INDIA         3+                   NA                0.0296144   0.0228535   0.0363752
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0153882   0.0052675   0.0255089
Birth       ki1135781-COHORTS          PHILIPPINES   2                    NA                0.0161072   0.0028427   0.0293716
Birth       ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.0090965   0.0051760   0.0130170
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1308254   0.1157068   0.1459439
Birth       kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.0915125   0.0824236   0.1006013
Birth       kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.0982884   0.0874929   0.1090839
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.1189534   0.0983239   0.1395829
6 months    ki1000304b-SAS-CompFeed    INDIA         2                    NA                0.0829820   0.0554611   0.1105030
6 months    ki1000304b-SAS-CompFeed    INDIA         3+                   NA                0.0889956   0.0583707   0.1196206
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.1111111   0.0384223   0.1837999
6 months    ki1000304b-SAS-FoodSuppl   INDIA         2                    NA                0.0714286   0.0162799   0.1265772
6 months    ki1000304b-SAS-FoodSuppl   INDIA         3+                   NA                0.1705069   0.1204022   0.2206116
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                0.0413169   0.0035832   0.0790505
6 months    ki1113344-GMS-Nepal        NEPAL         2                    NA                0.0812070   0.0241783   0.1382356
6 months    ki1113344-GMS-Nepal        NEPAL         3+                   NA                0.0176811   0.0049829   0.0303794
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0396590   0.0325059   0.0468120
6 months    ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.0356162   0.0282030   0.0430295
6 months    ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.0381948   0.0309329   0.0454566
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                0.1103807   0.0370314   0.1837300
6 months    ki1135781-COHORTS          GUATEMALA     2                    NA                0.0859194   0.0364092   0.1354296
6 months    ki1135781-COHORTS          GUATEMALA     3+                   NA                0.1086065   0.0867276   0.1304854
6 months    ki1135781-COHORTS          INDIA         1                    NA                0.0276995   0.0164386   0.0389604
6 months    ki1135781-COHORTS          INDIA         2                    NA                0.0280708   0.0195213   0.0366202
6 months    ki1135781-COHORTS          INDIA         3+                   NA                0.0571398   0.0477115   0.0665680
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0173936   0.0077999   0.0269873
6 months    ki1135781-COHORTS          PHILIPPINES   2                    NA                0.0240196   0.0140952   0.0339440
6 months    ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.0514057   0.0397537   0.0630576
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.0695052   0.0569068   0.0821036
6 months    kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.0510695   0.0446344   0.0575046
6 months    kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.0603805   0.0512146   0.0695465
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.1329500   0.0693616   0.1965385
24 months   ki1017093b-PROVIDE         BANGLADESH    2                    NA                0.1258231   0.0711635   0.1804827
24 months   ki1017093b-PROVIDE         BANGLADESH    3+                   NA                0.1845245   0.1401639   0.2288851
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                0.0511473   0.0180221   0.0842725
24 months   ki1113344-GMS-Nepal        NEPAL         2                    NA                0.0646475   0.0301126   0.0991823
24 months   ki1113344-GMS-Nepal        NEPAL         3+                   NA                0.0870526   0.0565235   0.1175816
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.1621340   0.1233480   0.2009200
24 months   ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.1965230   0.1433715   0.2496746
24 months   ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.1789720   0.1374740   0.2204700
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                0.1752254   0.1381400   0.2123108
24 months   ki1135781-COHORTS          GUATEMALA     2                    NA                0.2995735   0.2549440   0.3442029
24 months   ki1135781-COHORTS          GUATEMALA     3+                   NA                0.4188098   0.3862386   0.4513811
24 months   ki1135781-COHORTS          INDIA         1                    NA                0.1114841   0.0887058   0.1342625
24 months   ki1135781-COHORTS          INDIA         2                    NA                0.1466090   0.1252459   0.1679722
24 months   ki1135781-COHORTS          INDIA         3+                   NA                0.2469955   0.2281407   0.2658502
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1372951   0.1100804   0.1645097
24 months   ki1135781-COHORTS          PHILIPPINES   2                    NA                0.2053423   0.1765761   0.2341085
24 months   ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.3165406   0.2927016   0.3403796
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1169024   0.1051133   0.1286914
24 months   kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.1387891   0.1253351   0.1522430
24 months   kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.1566966   0.1410589   0.1723344


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318895   0.0289609   0.0348181
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0274139   0.0224285   0.0323992
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1041135   0.0994385   0.1087885
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1367292   0.1018167   0.1716417
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0417169   0.0374137   0.0460201
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0484735   0.0420469   0.0549002
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606359   0.0567797   0.0644920
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2872807   0.2457035   0.3288579
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4292409   0.3995279   0.4589539
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2122377   0.1984570   0.2260183
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1557234   0.1469876   0.1644592


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 0.6898209   0.5218654   0.9118306
Birth       ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 1.6641685   1.3481684   2.0542367
Birth       ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         2                    1                 0.6380512   0.3564261   1.1421986
Birth       ki1135781-COHORTS          INDIA         3+                   1                 0.9352925   0.5873636   1.4893196
Birth       ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   2                    1                 1.0467218   0.3648860   3.0026540
Birth       ki1135781-COHORTS          PHILIPPINES   3+                   1                 0.5911344   0.2690899   1.2985989
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    2                    1                 0.6995009   0.6008014   0.8144147
Birth       kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 0.7512949   0.6429184   0.8779404
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         2                    1                 0.6976011   0.4669091   1.0422742
6 months    ki1000304b-SAS-CompFeed    INDIA         3+                   1                 0.7481554   0.5384472   1.0395384
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         2                    1                 0.6428571   0.2336797   1.7685119
6 months    ki1000304b-SAS-FoodSuppl   INDIA         3+                   1                 1.5345622   0.7490708   3.1437363
6 months    ki1113344-GMS-Nepal        NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL         2                    1                 1.9654677   0.6244388   6.1864560
6 months    ki1113344-GMS-Nepal        NEPAL         3+                   1                 0.4279402   0.1344348   1.3622424
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 0.8980621   0.6823121   1.1820331
6 months    ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 0.9630803   0.7414145   1.2510191
6 months    ki1135781-COHORTS          GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     2                    1                 0.7783918   0.3232271   1.8745142
6 months    ki1135781-COHORTS          GUATEMALA     3+                   1                 0.9839269   0.4911726   1.9710222
6 months    ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         2                    1                 1.0134031   0.6102952   1.6827692
6 months    ki1135781-COHORTS          INDIA         3+                   1                 2.0628451   1.3306104   3.1980285
6 months    ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   2                    1                 1.3809494   0.6954776   2.7420312
6 months    ki1135781-COHORTS          PHILIPPINES   3+                   1                 2.9554427   1.6301212   5.3582776
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    2                    1                 0.7347577   0.5914907   0.9127259
6 months    kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 0.8687195   0.6837876   1.1036665
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    2                    1                 0.9463938   0.4964092   1.8042801
24 months   ki1017093b-PROVIDE         BANGLADESH    3+                   1                 1.3879237   0.8112526   2.3745157
24 months   ki1113344-GMS-Nepal        NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         2                    1                 1.2639474   0.5443135   2.9350052
24 months   ki1113344-GMS-Nepal        NEPAL         3+                   1                 1.7019975   0.8122923   3.5661982
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 1.2121026   0.8461184   1.7363915
24 months   ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 1.1038523   0.7854949   1.5512385
24 months   ki1135781-COHORTS          GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     2                    1                 1.7096461   1.3298291   2.1979440
24 months   ki1135781-COHORTS          GUATEMALA     3+                   1                 2.3901203   1.9093739   2.9919101
24 months   ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         2                    1                 1.3150663   1.0264721   1.6847991
24 months   ki1135781-COHORTS          INDIA         3+                   1                 2.2155208   1.7846924   2.7503520
24 months   ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   2                    1                 1.4956277   1.1769161   1.9006471
24 months   ki1135781-COHORTS          PHILIPPINES   3+                   1                 2.3055498   1.8678462   2.8458230
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    2                    1                 1.1872219   1.0373454   1.3587525
24 months   kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 1.3404060   1.1644669   1.5429277


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0084427   -0.0140430   -0.0028425
Birth       ki1135781-COHORTS          INDIA         1                    NA                -0.0042493   -0.0157955    0.0072968
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                -0.0003062   -0.0094845    0.0088720
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.0267119   -0.0409505   -0.0124732
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                -0.0231450   -0.0441582   -0.0021319
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                 0.0256181   -0.0411856    0.0924218
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                -0.0057929   -0.0411697    0.0295839
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                 0.0020579   -0.0041522    0.0082680
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                 0.0186516   -0.0534758    0.0907790
6 months    ki1135781-COHORTS          INDIA         1                    NA                 0.0207740    0.0096534    0.0318947
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.0313509    0.0208505    0.0418513
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.0088694   -0.0204563    0.0027176
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                -0.0480280   -0.1071511    0.0110951
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                 0.0570691    0.0233848    0.0907534
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                 0.1251467    0.0888046    0.1614888
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                 0.2540154    0.2140206    0.2940103
24 months   ki1135781-COHORTS          INDIA         1                    NA                 0.1007535    0.0779688    0.1235382
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.1445045    0.1169086    0.1721005
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                 0.0388210    0.0281477    0.0494944


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.2647498   -0.4563172   -0.0983815
Birth       ki1135781-COHORTS          INDIA         1                    NA                -0.1550066   -0.6622129    0.1974312
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                -0.0203047   -0.8526454    0.4380891
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.2565648   -0.4012025   -0.1268572
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                -0.2415763   -0.5110729   -0.0201438
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                 0.1873638   -0.4793715    0.5536094
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                -0.1630696   -1.7534621    0.5087164
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                 0.0493304   -0.1112634    0.1867161
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                 0.1445498   -0.6412096    0.5541123
6 months    ki1135781-COHORTS          INDIA         1                    NA                 0.4285646    0.1585458    0.6119356
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.6431686    0.3966922    0.7889491
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.1462727   -0.3533014    0.0290846
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                -0.5655546   -1.4653144    0.0058221
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                 0.5273611    0.1421993    0.7395811
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                 0.4356252    0.3157123    0.5345247
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                 0.5917783    0.5003684    0.6664644
24 months   ki1135781-COHORTS          INDIA         1                    NA                 0.4747202    0.3617471    0.5676967
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.5127918    0.4115975    0.5965827
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                 0.2492948    0.1802201    0.3125493
