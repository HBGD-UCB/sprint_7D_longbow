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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    stunted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       34     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1       13     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       37     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1       16     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0       70     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1       17     187
Birth       ki1101329-Keneba           GAMBIA                         1               0      140    1407
Birth       ki1101329-Keneba           GAMBIA                         1               1       16    1407
Birth       ki1101329-Keneba           GAMBIA                         2               0      138    1407
Birth       ki1101329-Keneba           GAMBIA                         2               1        8    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              0     1054    1407
Birth       ki1101329-Keneba           GAMBIA                         3+              1       51    1407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5332   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      640   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3718   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      407   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3347   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      385   13829
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
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      629    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       46    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      645    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       42    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1589    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       99    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     3777   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     2494   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     4711   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1     1999   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4772   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1841   19594
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      288    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1      104    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      222    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1       82    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      446    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1      194    1336
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      625    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       55    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      584    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1       73    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      593    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1       65    1995
6 months    ki1101329-Keneba           GAMBIA                         1               0      175    1623
6 months    ki1101329-Keneba           GAMBIA                         1               1       19    1623
6 months    ki1101329-Keneba           GAMBIA                         2               0      150    1623
6 months    ki1101329-Keneba           GAMBIA                         2               1       14    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1071    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              1      194    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      118     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1       35     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      120     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       29     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      206     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1       55     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     2761    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      541    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2133    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1      389    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2021    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      449    8294
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       78     961
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       54     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               0       88     961
6 months    ki1135781-COHORTS          GUATEMALA                      2               1       51     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      401     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1      289     961
6 months    ki1135781-COHORTS          INDIA                          1               0      616    4291
6 months    ki1135781-COHORTS          INDIA                          1               1      124    4291
6 months    ki1135781-COHORTS          INDIA                          2               0      925    4291
6 months    ki1135781-COHORTS          INDIA                          2               1      171    4291
6 months    ki1135781-COHORTS          INDIA                          3+              0     1910    4291
6 months    ki1135781-COHORTS          INDIA                          3+              1      545    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      474    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1      100    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      497    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1      109    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1165    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1      363    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     4612   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     1776   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     4463   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1     1237   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     3504   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1     1211   16803
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      149     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       62     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      138     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1       75     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      100     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1       53     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        1       6
24 months   ki1101329-Keneba           GAMBIA                         1               0       95    1376
24 months   ki1101329-Keneba           GAMBIA                         1               1       42    1376
24 months   ki1101329-Keneba           GAMBIA                         2               0      104    1376
24 months   ki1101329-Keneba           GAMBIA                         2               1       35    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              0      711    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              1      389    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0       82     499
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1       54     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0       68     499
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       62     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      126     499
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1      107     499
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
24 months   ki1135781-COHORTS          INDIA                          1               0      347    3383
24 months   ki1135781-COHORTS          INDIA                          1               1      218    3383
24 months   ki1135781-COHORTS          INDIA                          2               0      492    3383
24 months   ki1135781-COHORTS          INDIA                          2               1      358    3383
24 months   ki1135781-COHORTS          INDIA                          3+              0      852    3383
24 months   ki1135781-COHORTS          INDIA                          3+              1     1116    3383
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      258    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1      266    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      227    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1      317    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0      452    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1      925    2445
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
```




# Results Detail

## Results Plots
![](/tmp/b2385d4a-0e80-44df-9778-b34175fe2ca5/2d1ab8ea-cb94-4b14-b6a8-345d59e53ca4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b2385d4a-0e80-44df-9778-b34175fe2ca5/2d1ab8ea-cb94-4b14-b6a8-345d59e53ca4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b2385d4a-0e80-44df-9778-b34175fe2ca5/2d1ab8ea-cb94-4b14-b6a8-345d59e53ca4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2385d4a-0e80-44df-9778-b34175fe2ca5/2d1ab8ea-cb94-4b14-b6a8-345d59e53ca4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2765957   0.2049471   0.3482444
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.3018868   0.1608686   0.4429049
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1954023   0.0747346   0.3160700
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.1025641   0.0549386   0.1501896
Birth       ki1101329-Keneba           GAMBIA                         2                    NA                0.0547945   0.0178664   0.0917227
Birth       ki1101329-Keneba           GAMBIA                         3+                   NA                0.0461538   0.0337783   0.0585294
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1071668   0.0993213   0.1150123
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0986667   0.0895659   0.1077675
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1031618   0.0934027   0.1129209
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0803571   0.0299820   0.1307322
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0948905   0.0457879   0.1439931
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0464345   0.0296294   0.0632396
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1637931   0.1362951   0.1912911
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.0945034   0.0766969   0.1123099
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1100879   0.0975352   0.1226406
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0681481   0.0491344   0.0871619
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0611354   0.0432174   0.0790533
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0586493   0.0474384   0.0698602
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3977037   0.3846150   0.4107924
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2979136   0.2852440   0.3105831
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2783910   0.2667455   0.2900366
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2653061   0.2173742   0.3132380
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.2697368   0.2160109   0.3234628
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.3031250   0.2636267   0.3426233
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3888889   0.2761334   0.5016444
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.3690476   0.2657166   0.4723787
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.4562212   0.3898622   0.5225802
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1943128   0.1408793   0.2477463
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.1556604   0.1068176   0.2045032
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1250000   0.0737115   0.1762885
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0808824   0.0603842   0.1013805
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1111111   0.0870743   0.1351479
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0987842   0.0759807   0.1215877
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0979381   0.0560997   0.1397766
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0853659   0.0425874   0.1281444
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.1533597   0.1334968   0.1732225
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2287582   0.1621432   0.2953732
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1946309   0.1310034   0.2582583
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2107280   0.1612071   0.2602488
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1638401   0.1512148   0.1764654
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1542427   0.1401457   0.1683397
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1817814   0.1665712   0.1969916
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4090909   0.3251725   0.4930094
6 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3669065   0.2867427   0.4470703
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.4188406   0.3820089   0.4556723
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1675676   0.1406552   0.1944800
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1560219   0.1345361   0.1775077
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.2219959   0.2055546   0.2384372
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1742160   0.1431812   0.2052509
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1798680   0.1492828   0.2104531
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.2375654   0.2162222   0.2589086
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2780213   0.2653903   0.2906522
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2170175   0.2056051   0.2284300
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2568399   0.2427110   0.2709688
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2938389   0.2323226   0.3553551
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3521127   0.2879141   0.4163113
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.3464052   0.2709437   0.4218667
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3065693   0.2293348   0.3838039
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2517986   0.1796156   0.3239815
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.3536364   0.3253728   0.3818999
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3970588   0.3147438   0.4793739
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4769231   0.3909784   0.5628678
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.4592275   0.3951763   0.5232786
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6384181   0.5675592   0.7092769
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.6268657   0.5448886   0.7088427
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.6965517   0.6216383   0.7714652
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8083832   0.7486634   0.8681031
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.7814570   0.7155116   0.8474023
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7903872   0.7612237   0.8195507
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3858407   0.3456956   0.4259858
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.4211765   0.3879788   0.4543742
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.5670732   0.5451791   0.5889672
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5076336   0.4648191   0.5504481
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.5827206   0.5412747   0.6241664
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6717502   0.6469431   0.6965573
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4884676   0.4676955   0.5092397
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4686965   0.4481625   0.4892306
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5193218   0.4978075   0.5408360


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0533049   0.0415629   0.0650470
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035505   0.0984723   0.1086287
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1152353   0.1054865   0.1249842
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232622   0.3156056   0.3309189
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4235925   0.3733796   0.4738054
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0967419   0.0837671   0.1097166
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1398645   0.1229849   0.1567440
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


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0914369   0.6496948   1.8335292
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 0.7064545   0.3846998   1.2973177
Birth       ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         2                    1                 0.5342466   0.2356709   1.2110933
Birth       ki1101329-Keneba           GAMBIA                         3+                   1                 0.4500000   0.2632335   0.7692791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9206833   0.8184046   1.0357442
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9626290   0.8541012   1.0849470
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 1.1808597   0.5238079   2.6621012
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.5778515   0.2801877   1.1917454
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.5769680   0.4482824   0.7425945
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.6721156   0.5486645   0.8233437
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.8970951   0.5985491   1.3445507
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.8606146   0.6136598   1.2069511
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7490842   0.7106662   0.7895790
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.6999961   0.6643907   0.7375096
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.0167004   0.8134162   1.2707882
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.1425481   0.8761040   1.4900241
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 0.9489796   0.6341718   1.4200604
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.1731402   0.8481501   1.6226585
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8010815   0.5278121   1.2158333
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.6432927   0.3925509   1.0541958
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3737374   0.9844502   1.9169628
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2213319   0.8668722   1.7207282
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8716305   0.4511824   1.6838859
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.5658831   1.0020575   2.4469551
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8508150   0.5491611   1.3181671
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.9211823   0.6336271   1.3392368
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9414220   0.8353462   1.0609676
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.1095048   0.9902115   1.2431698
6 months    ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8968825   0.6646308   1.2102932
6 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 1.0238325   0.8190296   1.2798476
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.9310984   0.7535558   1.1504713
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.3248144   1.1100582   1.5811182
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0324422   0.8070727   1.3207447
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3636257   1.1169864   1.6647248
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7805789   0.7323798   0.8319500
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9238137   0.8627556   0.9891929
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 1.1983189   0.9078310   1.5817573
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1788952   0.8714866   1.5947392
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8213429   0.5607645   1.2030081
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1535281   0.8856088   1.5024999
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.2011396   0.9126383   1.5808414
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1565729   0.9008628   1.4848662
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9819046   0.8271365   1.1656319
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.0910589   0.9348195   1.2734111
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.9666912   0.8641301   1.0814249
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.9777382   0.9002427   1.0619048
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0915812   0.9580037   1.2437839
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.4697080   1.3153272   1.6422085
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.1479157   1.0280052   1.2818131
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.3232974   1.2068997   1.4509208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9595243   0.9050263   1.0173040
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0631652   1.0043253   1.1254524


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0306064   -0.1179593    0.0567464
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.0492592   -0.0928837   -0.0056347
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0036163   -0.0094624    0.0022299
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0216717   -0.0677134    0.0243700
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0485578   -0.0729674   -0.0241481
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0068367   -0.0233901    0.0097167
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0744415   -0.0849705   -0.0639124
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0191250   -0.0225940    0.0608440
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0347036   -0.0669176    0.1363248
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0330778   -0.0740790    0.0079234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0158595   -0.0015211    0.0332401
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0419263    0.0017156    0.0821370
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0173905   -0.0736494    0.0388684
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0024247   -0.0074085    0.0122578
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0008987   -0.0770478    0.0788451
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0281910    0.0033828    0.0529991
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0370100    0.0088802    0.0651397
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0266376   -0.0356357   -0.0176395
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0354506   -0.0144444    0.0853456
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0320934   -0.0414121    0.1055990
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0498350   -0.0207982    0.1204682
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0150907   -0.0399988    0.0701802
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0164432   -0.0716142    0.0387277
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.1143071    0.0774659    0.1511483
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1091353    0.0714673    0.1468034
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0023719   -0.0131514    0.0178952


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.1244218   -0.5841781    0.2019051
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -0.9241025   -1.9135260   -0.2706839
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0349227   -0.0929274    0.0200035
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3692857   -1.4191803    0.2249675
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.4213793   -0.6476006   -0.2262190
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.1115072   -0.4166265    0.1278941
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2302821   -0.2636914   -0.1977560
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0672395   -0.0924640    0.2035965
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0819269   -0.1923285    0.2930989
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2051528   -0.4863799    0.0228654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1639363   -0.0351138    0.3247095
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.2997638   -0.0530775    0.5343831
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0822760   -0.3838537    0.1535800
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0145832   -0.0463663    0.0719825
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0021920   -0.2072456    0.1752955
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.1440090    0.0076228    0.2616511
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1752150    0.0310883    0.2979027
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1059640   -0.1422107   -0.0708674
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.1076578   -0.0574140    0.2469604
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0947652   -0.1505017    0.2877455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1115141   -0.0616652    0.2564443
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0230918   -0.0649916    0.1038900
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0207632   -0.0928823    0.0465968
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2285466    0.1510143    0.2989985
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1769469    0.1131073    0.2361912
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0048323   -0.0273077    0.0359668
