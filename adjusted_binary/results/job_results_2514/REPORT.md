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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* vagbrth
* W_nrooms
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_vagbrth
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      288    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      104    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      222    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       82    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      446    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1      194    1336
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       37     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0       70     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1       17     187
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       44     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1       28     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       53     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1       31     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      118     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       99     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      170     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       41     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      179     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1       33     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      140     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1       20     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      149     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       62     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      138     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       75     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      100     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       53     577
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      644    2000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       56    2000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      586    2000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       73    2000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      577    2000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       64    2000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        1       6
Birth       ki1101329-Keneba           GAMBIA                         1               0      140    1407
Birth       ki1101329-Keneba           GAMBIA                         1               1       16    1407
Birth       ki1101329-Keneba           GAMBIA                         2               0      138    1407
Birth       ki1101329-Keneba           GAMBIA                         2               1        8    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              0     1054    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              1       51    1407
6 months    ki1101329-Keneba           GAMBIA                         1               0      175    1623
6 months    ki1101329-Keneba           GAMBIA                         1               1       19    1623
6 months    ki1101329-Keneba           GAMBIA                         2               0      150    1623
6 months    ki1101329-Keneba           GAMBIA                         2               1       14    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1071    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              1      194    1623
24 months   ki1101329-Keneba           GAMBIA                         1               0       95    1376
24 months   ki1101329-Keneba           GAMBIA                         1               1       42    1376
24 months   ki1101329-Keneba           GAMBIA                         2               0      104    1376
24 months   ki1101329-Keneba           GAMBIA                         2               1       35    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              0      711    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              1      389    1376
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      118     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       35     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      120     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       29     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      206     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1       55     563
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       82     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       54     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       68     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       62     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      126     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      107     499
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5332   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      640   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3718   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      407   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3347   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      385   13829
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2761    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      541    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2133    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1      389    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2021    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      449    8294
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       64     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1      113     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0       50     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1       84     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0       44     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      101     456
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       32    1067
24 months   ki1135781-COHORTS          GUATEMALA                      1               1      135    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2               0       33    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2               1      118    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      157    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+              1      592    1067
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       78     961
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       54     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               0       88     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               1       51     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      401     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1      289     961
Birth       ki1135781-COHORTS          GUATEMALA                      1               0      103     852
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        9     852
Birth       ki1135781-COHORTS          GUATEMALA                      2               0      124     852
Birth       ki1135781-COHORTS          GUATEMALA                      2               1       13     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+              0      575     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+              1       28     852
Birth       ki1135781-COHORTS          INDIA                          1               0      582    4122
Birth       ki1135781-COHORTS          INDIA                          1               1      114    4122
Birth       ki1135781-COHORTS          INDIA                          2               0      939    4122
Birth       ki1135781-COHORTS          INDIA                          2               1       98    4122
Birth       ki1135781-COHORTS          INDIA                          3+              0     2126    4122
Birth       ki1135781-COHORTS          INDIA                          3+              1      263    4122
6 months    ki1135781-COHORTS          INDIA                          1               0      616    4291
6 months    ki1135781-COHORTS          INDIA                          1               1      124    4291
6 months    ki1135781-COHORTS          INDIA                          2               0      925    4291
6 months    ki1135781-COHORTS          INDIA                          2               1      171    4291
6 months    ki1135781-COHORTS          INDIA                          3+              0     1910    4291
6 months    ki1135781-COHORTS          INDIA                          3+              1      545    4291
24 months   ki1135781-COHORTS          INDIA                          1               0      347    3383
24 months   ki1135781-COHORTS          INDIA                          1               1      218    3383
24 months   ki1135781-COHORTS          INDIA                          2               0      492    3383
24 months   ki1135781-COHORTS          INDIA                          2               1      358    3383
24 months   ki1135781-COHORTS          INDIA                          3+              0      852    3383
24 months   ki1135781-COHORTS          INDIA                          3+              1     1116    3383
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      629    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       46    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      645    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       42    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1589    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       99    3050
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      474    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1      100    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      497    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1      109    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1165    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1      363    2708
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      258    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      266    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      227    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      317    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0      452    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      925    2445
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     3777   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     2494   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     4711   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     1999   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4772   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1841   19594
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     4612   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     1776   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     4463   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1     1237   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     3504   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1211   16803
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     1619    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     1546    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     1553    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1     1370    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     1219    8624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1317    8624


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

* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
```




# Results Detail

## Results Plots
![](/tmp/bb90ed72-63cf-43fa-9795-1c97e7394008/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bb90ed72-63cf-43fa-9795-1c97e7394008/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bb90ed72-63cf-43fa-9795-1c97e7394008/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bb90ed72-63cf-43fa-9795-1c97e7394008/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3395080   0.2831392   0.3958768
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3014785   0.2122903   0.3906667
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2594987   0.1678167   0.3511808
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.2131847   0.1956294   0.2307401
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                0.0455831   0.0290074   0.0621588
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                0.0442302   0.0319824   0.0564779
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1210004   0.1110111   0.1309897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1059291   0.0949627   0.1168956
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1147885   0.1025187   0.1270583
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0280375   0.0087664   0.0473087
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0392726   0.0178537   0.0606916
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0347932   0.0217608   0.0478255
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1580446   0.1326078   0.1834813
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.0995419   0.0803894   0.1186945
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1121472   0.0992782   0.1250162
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1089796   0.0868537   0.1311054
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0562455   0.0411506   0.0713404
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0493531   0.0397709   0.0589353
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3989361   0.3784590   0.4194131
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3013506   0.2867141   0.3159871
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3141654   0.2968105   0.3315203
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3021017   0.2623015   0.3419019
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2664873   0.2334367   0.2995379
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3155956   0.2852178   0.3459735
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1397408   0.0905787   0.1889029
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1933983   0.1412673   0.2455294
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.3793236   0.3263769   0.4322704
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2570373   0.2211945   0.2928800
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1185280   0.0883082   0.1487478
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0681687   0.0443000   0.0920374
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0681586   0.0523697   0.0839476
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1151796   0.0945595   0.1357997
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1129281   0.0925904   0.1332659
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0210562   0.0112772   0.0308351
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1355045   0.1016927   0.1693163
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1486106   0.1293986   0.1678226
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4259383   0.3649838   0.4868928
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1416566   0.0968996   0.1864135
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1877095   0.1486542   0.2267648
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1567765   0.1429592   0.1705938
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1619729   0.1469905   0.1769553
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2017107   0.1855393   0.2178822
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2840245   0.2450204   0.3230285
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2288442   0.1883656   0.2693227
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4077112   0.3746808   0.4407416
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1256866   0.1040141   0.1473590
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1450672   0.1245619   0.1655724
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2095625   0.1934785   0.2256465
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1095340   0.0862435   0.1328245
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1483444   0.1232980   0.1733907
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2192465   0.1989938   0.2394992
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2517013   0.2341111   0.2692915
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2223571   0.2093245   0.2353896
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2317066   0.2136007   0.2498126
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2254438   0.1836287   0.2672588
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3149591   0.2723679   0.3575502
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.2266816   0.1892708   0.2640923
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2906759   0.2493935   0.3319583
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2527227   0.2070729   0.2983726
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3454241   0.3177363   0.3731119
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3266971   0.2640188   0.3893753
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4324880   0.3647944   0.5001815
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4699419   0.4198596   0.5200242
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5987364   0.5544163   0.6430565
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5890573   0.5384120   0.6397025
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7771914   0.7369029   0.8174799
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5451080   0.5088711   0.5813448
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7595651   0.7173581   0.8017720
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7973213   0.7713991   0.8232435
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3237253   0.2890831   0.3583675
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.4088855   0.3788677   0.4389033
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.5625145   0.5411394   0.5838896
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4046473   0.3678945   0.4414000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.4848485   0.4498904   0.5198067
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6665921   0.6436584   0.6895258
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4632724   0.4422683   0.4842765
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4844049   0.4631224   0.5056873
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5413216   0.5169540   0.5656892


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0533049   0.0415628   0.0650470
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035505   0.0984723   0.1086287
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1152353   0.1054865   0.1249842
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232622   0.3156056   0.3309189
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4235925   0.3733796   0.4738054
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965000   0.0835560   0.1094440
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1398644   0.1229849   0.1567440
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662648   0.1582516   0.1742780
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1957586   0.1838852   0.2076319
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3386628   0.3136483   0.3636773
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6535088   0.6097853   0.6972322
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7919400   0.7675726   0.8163075
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5001478   0.4832966   0.5169990
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4908395   0.4777071   0.5039719


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8879865   0.6615175    1.1919866
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.7643377   0.5356938    1.0905708
Birth       ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                 0.2138196   0.1471443    0.3107073
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                 0.2074734   0.1555839    0.2766687
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8754447   0.7670655    0.9991370
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9486624   0.8289394    1.0856769
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 1.4007158   0.5943790    3.3009321
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.2409491   0.5647561    2.7267604
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.6298346   0.4902329    0.8091900
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.7095921   0.5824937    0.8644230
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.5161106   0.3690640    0.7217453
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.4528656   0.3430438    0.5978456
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7553857   0.7044720    0.8099790
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7875081   0.7313658    0.8479600
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 0.8821110   0.7740195    1.0052975
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.0446668   0.8748745    1.2474117
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.3839792   0.8966376    2.1362014
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.7144804   1.8547803    3.9726559
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.4611316   0.3477027    0.6115637
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.2652095   0.1836213    0.3830497
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.6898756   1.2625209    2.2618870
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.6568430   1.2372671    2.2187034
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 6.4353853   3.7974245   10.9058610
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 7.0578192   4.3631056   11.4168247
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.3325753   0.2344481    0.4717732
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.4406964   0.3431147    0.5660305
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0331452   0.9098006    1.1732122
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2866135   1.1427852    1.4485436
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8057199   0.6486817    1.0007752
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.4354791   1.2286452    1.6771320
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.1541979   0.9245511    1.4408860
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.6673418   1.3812707    2.0126602
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.3543224   1.0342864    1.7733861
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.0016296   1.5878716    2.5232022
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8834163   0.8063738    0.9678197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9205619   0.8336537    1.0165303
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.3970626   1.1163236    1.7484033
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.0054905   0.7863479    1.2857045
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8694314   0.6920810    1.0922290
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1883482   1.0115444    1.3960548
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.3238194   1.0358986    1.6917659
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.4384636   1.1568825    1.7885807
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9838340   0.8824859    1.0968214
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2980527   1.1902017    1.4156766
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 1.3934213   1.2805390    1.5162544
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.4626851   1.3616889    1.5711722
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2630633   1.1115226    1.4352645
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.7376291   1.5528844    1.9443528
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1982005   1.0702567    1.3414393
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6473412   1.4965474    1.8133291
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0456157   0.9841699    1.1108977
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1684737   1.0987639    1.2426061


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0935187   -0.1677853   -0.0192520
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.1598798   -0.1778194   -0.1419402
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0174499   -0.0263013   -0.0085984
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0306479    0.0105072    0.0507886
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0428092   -0.0663159   -0.0193025
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0476681   -0.0683457   -0.0269905
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0756738   -0.0948153   -0.0565324
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0176706   -0.0460696    0.0107283
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.2838517    0.2283472    0.3393562
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0958023   -0.1259806   -0.0656240
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0283414    0.0138370    0.0428458
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.1188083    0.1017408    0.1358757
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2145706   -0.2717329   -0.1574084
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0094883   -0.0027598    0.0217363
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.1259651    0.0847912    0.1671391
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0700720    0.0489957    0.0911483
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1016920    0.0783944    0.1249896
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0003176   -0.0164670    0.0158317
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1038457    0.0638055    0.1438858
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0479869    0.0044562    0.0915177
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1201967    0.0594038    0.1809896
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0547724    0.0171243    0.0924204
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.2468320    0.2107452    0.2829189
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1764225    0.1431566    0.2096884
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2121217    0.1775516    0.2466918
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0275671    0.0081289    0.0470054


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.3801736   -0.8620809   -0.0229842
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -2.9993454   -3.9370971   -2.2397101
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1685155   -0.2580559   -0.0853481
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.5222403    0.0907487    0.7489646
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3714941   -0.5942747   -0.1798445
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.7774743   -1.1730713   -0.4538938
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2340943   -0.2951357   -0.1759299
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0621261   -0.1649336    0.0316084
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6701056    0.5428434    0.7619408
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.5941779   -0.8565809   -0.3688620
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2936932    0.1367459    0.4221061
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.8494531    0.7645659    0.9037337
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.0151535   -1.3847038   -0.7028713
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0570673   -0.0192544    0.1276740
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.3072398    0.2083689    0.3937622
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.3579511    0.2441060    0.4546501
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4814369    0.3661401    0.5757617
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0012636   -0.0676139    0.0609632
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.3153629    0.1951014    0.4176558
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1416953    0.0071453    0.2580114
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2689603    0.1264932    0.3881913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0838128    0.0265766    0.1376835
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.3116802    0.2669426    0.3536876
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3527407    0.2837593    0.4150786
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3439240    0.2861880    0.3969902
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0561633    0.0160249    0.0946642
