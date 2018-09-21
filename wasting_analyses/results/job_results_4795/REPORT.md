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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        parity    wasted   n_cell       n
----------  -------------------------  -----------------------------  -------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0       37     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              0       41     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2              1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+             0       77     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+             1        4     166
Birth       ki1101329-Keneba           GAMBIA                         1              0      139    1292
Birth       ki1101329-Keneba           GAMBIA                         1              1        3    1292
Birth       ki1101329-Keneba           GAMBIA                         2              0      131    1292
Birth       ki1101329-Keneba           GAMBIA                         2              1        2    1292
Birth       ki1101329-Keneba           GAMBIA                         3+             0      996    1292
Birth       ki1101329-Keneba           GAMBIA                         3+             1       21    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              0     4497   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1              1     1064   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              0     3358   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2              1      524   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+             0     3000   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+             1      472   12915
Birth       ki1135781-COHORTS          GUATEMALA                      1              0       66     756
Birth       ki1135781-COHORTS          GUATEMALA                      1              1       28     756
Birth       ki1135781-COHORTS          GUATEMALA                      2              0       87     756
Birth       ki1135781-COHORTS          GUATEMALA                      2              1       31     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+             0      411     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+             1      133     756
Birth       ki1135781-COHORTS          INDIA                          1              0      505    3855
Birth       ki1135781-COHORTS          INDIA                          1              1      136    3855
Birth       ki1135781-COHORTS          INDIA                          2              0      823    3855
Birth       ki1135781-COHORTS          INDIA                          2              1      159    3855
Birth       ki1135781-COHORTS          INDIA                          3+             0     1876    3855
Birth       ki1135781-COHORTS          INDIA                          3+             1      356    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1              0      497    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              1      143    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2              0      552    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2              1      105    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+             0     1399    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+             1      203    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0     8136   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1     1072   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              0    10118   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2              1      960   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+             0    10118   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+             1      980   31384
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0      352    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1       40    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              0      262    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2              1       40    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+             0      554    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+             1       86    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0       67     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1        5     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              0       70     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2              1       14     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+             0      170     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+             1       47     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      202     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1        9     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              0      205     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2              1        7     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+             0      151     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+             1        8     582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      652    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       27    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0      627    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       30    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             0      630    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1       28    1994
6 months    ki1101329-Keneba           GAMBIA                         1              0      187    1623
6 months    ki1101329-Keneba           GAMBIA                         1              1        8    1623
6 months    ki1101329-Keneba           GAMBIA                         2              0      155    1623
6 months    ki1101329-Keneba           GAMBIA                         2              1        9    1623
6 months    ki1101329-Keneba           GAMBIA                         3+             0     1185    1623
6 months    ki1101329-Keneba           GAMBIA                         3+             1       79    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0      290    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1       16    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2              0      266    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2              1       32    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+             0      468    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+             1       54    1126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              0     3204    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1              1       81    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              0     2425    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2              1       89    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+             0     2369    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+             1       95    8263
6 months    ki1135781-COHORTS          GUATEMALA                      1              0      128     963
6 months    ki1135781-COHORTS          GUATEMALA                      1              1        4     963
6 months    ki1135781-COHORTS          GUATEMALA                      2              0      136     963
6 months    ki1135781-COHORTS          GUATEMALA                      2              1        3     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+             0      667     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+             1       25     963
6 months    ki1135781-COHORTS          INDIA                          1              0      669    4285
6 months    ki1135781-COHORTS          INDIA                          1              1       72    4285
6 months    ki1135781-COHORTS          INDIA                          2              0      970    4285
6 months    ki1135781-COHORTS          INDIA                          2              1      123    4285
6 months    ki1135781-COHORTS          INDIA                          3+             0     2084    4285
6 months    ki1135781-COHORTS          INDIA                          3+             1      367    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1              0      548    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1              1       26    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2              0      580    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2              1       27    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+             0     1417    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+             1      108    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0    11672   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1     1077   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              0    10482   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2              1      878   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             0     8516   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+             1      882   33507
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      183     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       28     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              0      197     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2              1       16     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+             0      133     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+             1       21     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1              0      125    1376
24 months   ki1101329-Keneba           GAMBIA                         1              1       12    1376
24 months   ki1101329-Keneba           GAMBIA                         2              0      127    1376
24 months   ki1101329-Keneba           GAMBIA                         2              1       12    1376
24 months   ki1101329-Keneba           GAMBIA                         3+             0      987    1376
24 months   ki1101329-Keneba           GAMBIA                         3+             1      113    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0      218     996
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1       54     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2              0      214     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2              1       46     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3+             0      382     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3+             1       82     996
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              0      135     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1              1       25     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              0      100     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2              1       21     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+             0      111     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+             1       30     422
24 months   ki1135781-COHORTS          GUATEMALA                      1              0      157    1076
24 months   ki1135781-COHORTS          GUATEMALA                      1              1       10    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2              0      145    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2              1        6    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+             0      724    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+             1       34    1076
24 months   ki1135781-COHORTS          INDIA                          1              0      529    3354
24 months   ki1135781-COHORTS          INDIA                          1              1       32    3354
24 months   ki1135781-COHORTS          INDIA                          2              0      779    3354
24 months   ki1135781-COHORTS          INDIA                          2              1       58    3354
24 months   ki1135781-COHORTS          INDIA                          3+             0     1729    3354
24 months   ki1135781-COHORTS          INDIA                          3+             1      227    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1              0      491    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1              1       32    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2              0      512    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2              1       32    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+             0     1279    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+             1      103    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0     4928   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1     1366   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              0     4525   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2              1     1282   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             0     3955   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+             1     1096   17152


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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7dcaae20-0c3f-4152-b370-2254b54c8cb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7dcaae20-0c3f-4152-b370-2254b54c8cb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7dcaae20-0c3f-4152-b370-2254b54c8cb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7dcaae20-0c3f-4152-b370-2254b54c8cb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2047046   0.1923962   0.2170130
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1326318   0.1204605   0.1448030
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1062889   0.0919765   0.1206013
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7368540   0.6916013   0.7821068
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3321005   0.2820206   0.3821804
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2510024   0.2177893   0.2842156
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.2290218   0.2006378   0.2574057
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.1659592   0.1434861   0.1884323
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1573050   0.1420834   0.1725266
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2538663   0.2244978   0.2832348
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1613946   0.1334710   0.1893182
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1190418   0.1032418   0.1348418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1622538   0.1470906   0.1774170
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0841951   0.0743514   0.0940388
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0678445   0.0602000   0.0754891
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0826707   0.0609750   0.1043665
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1153086   0.0887313   0.1418859
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1170630   0.0915684   0.1425575
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.0694444   0.0106475   0.1282414
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1666667   0.0868626   0.2464708
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2165899   0.1617098   0.2714700
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0426540   0.0153646   0.0699435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0330189   0.0089451   0.0570926
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0503145   0.0163082   0.0843208
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0333352   0.0214059   0.0452645
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0504220   0.0344660   0.0663781
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0322578   0.0208092   0.0437064
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0410256   0.0131775   0.0688738
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0548780   0.0200120   0.0897441
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0625000   0.0491515   0.0758485
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0203998   0.0061137   0.0346858
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0965791   0.0460591   0.1470991
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1199655   0.0781941   0.1617369
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0202177   0.0153355   0.0250999
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0385189   0.0311117   0.0459261
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1031927   0.0910970   0.1152885
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0911785   0.0709183   0.1114388
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1130398   0.0946548   0.1314247
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1504801   0.1361588   0.1648015
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0347856   0.0208086   0.0487625
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0359186   0.0222352   0.0496020
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0727107   0.0593364   0.0860849
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0782048   0.0677436   0.0886659
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0749929   0.0661608   0.0838250
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0719422   0.0637926   0.0800918
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1420026   0.0982825   0.1857227
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0770672   0.0438219   0.1103125
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1361672   0.0875745   0.1847599
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1635916   0.0986391   0.2285440
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0529582   0.0135965   0.0923199
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0935151   0.0761486   0.1108816
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2195781   0.1721517   0.2670044
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1711450   0.1231426   0.2191474
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1400870   0.1049040   0.1752699
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0865093   0.0558024   0.1172163
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1210516   0.0821873   0.1599160
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2623502   0.2168566   0.3078437
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0598802   0.0238784   0.0958821
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0397351   0.0085646   0.0709056
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0448549   0.0301129   0.0595968
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0427627   0.0266535   0.0588720
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0620584   0.0452929   0.0788238
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1136412   0.0996169   0.1276655
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1172900   0.0984983   0.1360818
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0709295   0.0531711   0.0886879
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1368480   0.1200367   0.1536593
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1803026   0.1633325   0.1972727
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2164834   0.1996732   0.2332935
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1844705   0.1589679   0.2099732


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1595045   0.1531895   0.1658194
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1688716   0.1570438   0.1806994
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0959725   0.0907703   0.1011747
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1769437   0.1381636   0.2157238
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0426279   0.0337587   0.0514970
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0591497   0.0476693   0.0706302
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320707   0.0282716   0.0358698
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1311552   0.1210467   0.1412637
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0846689   0.0798658   0.0894720
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0995640   0.0837378   0.1153901
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800948   0.1433886   0.2168010
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0464684   0.0338852   0.0590516
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0945140   0.0846121   0.1044160
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2182836   0.2083649   0.2282022


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.6479179   0.5806050    0.7230348
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.5192307   0.4480957    0.6016584
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 0.4507006   0.3837976    0.5292660
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.3406406   0.2946317    0.3938342
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.7246438   0.6034274    0.8702102
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.6868561   0.5872466    0.8033616
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6357465   0.5163728    0.7827167
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.4689154   0.3932366    0.5591586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5189099   0.4470132    0.6023702
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.4181384   0.3613395    0.4838655
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.3947929   1.0690099    1.8198589
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.4160143   1.1475559    1.7472756
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.4000000   0.9073519    6.3481435
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 3.1188940   1.2887863    7.5477991
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7741090   0.2934517    2.0420557
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1795947   0.4651051    2.9916758
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.5125758   0.9379540    2.4392303
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9676786   0.5843547    1.6024546
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.3376523   0.5279118    3.3894177
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.5234373   0.7477881    3.1036350
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 4.7343260   1.9765115   11.3401021
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 5.8807316   2.6976835   12.8195190
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.9052058   1.3995591    2.5935375
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 5.1040777   3.9056009    6.6703203
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.2397630   0.9418631    1.6318850
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.6503899   1.2963567    2.1011092
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0325712   0.5939258    1.7951793
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.0902536   1.3436812    3.2516345
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9589303   0.8016490    1.1470697
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9199209   0.7738016    1.0936325
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5427171   0.3197246    0.9212360
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9589065   0.5996864    1.5333042
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.3237221   0.1392804    0.7524103
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.5716375   0.3689463    0.8856828
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7794268   0.5473537    1.1098968
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6379825   0.4582513    0.8882062
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3992897   0.8753271    2.2368915
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 3.0326221   2.0651295    4.4533753
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.6635762   0.2469743    1.7829113
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7490765   0.3775276    1.4862905
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.4512265   0.9132635    2.3060796
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.6574850   1.7878373    3.9501504
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6047357   0.4499122    0.8128370
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1667488   0.9519620    1.4299969
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.2006668   1.0641041    1.3547552
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0231161   0.8659459    1.2088129


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0452001   -0.0557514   -0.0346489
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4828858   -0.5301447   -0.4356268
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0601502   -0.0866117   -0.0336886
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0982954   -0.1250652   -0.0715256
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0662813   -0.0808633   -0.0516993
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0417670    0.0252469    0.0582872
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1074993    0.0472802    0.1677183
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0014169   -0.0230072    0.0201734
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0092927   -0.0012396    0.0198249
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0181241   -0.0087267    0.0449749
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0701864    0.0478197    0.0925531
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0118530    0.0073024    0.0164036
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0399767    0.0201672    0.0597862
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0247118    0.0108681    0.0385556
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0064641   -0.0031590    0.0160872
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0295458   -0.0629453    0.0038537
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0640276   -0.1285609    0.0005056
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0368471   -0.0822717    0.0085774
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0935854    0.0620375    0.1251334
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0134118   -0.0458485    0.0190249
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0517513    0.0351826    0.0683200
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0490989   -0.0668580   -0.0313399
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0379810    0.0221787    0.0537832


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2833784   -0.3522326   -0.2180302
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.9013628   -2.2734266   -1.5715884
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3561889   -0.5260324   -0.2052484
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.6318367   -0.8246676   -0.4593842
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6906285   -0.8571344   -0.5390511
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3356460    0.2123723    0.4396258
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6075337    0.1176744    0.8254275
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0343602   -0.7156685    0.3763941
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2179952   -0.0624286    0.4244022
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.3064102   -0.3277241    0.6376756
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.7748027    0.5712482    0.8817176
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3695890    0.2201353    0.4904014
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.3048043    0.1399959    0.4380293
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4153431    0.1458449    0.5998108
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0763458   -0.0443613    0.1831016
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2627307   -0.5994705    0.0031146
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.6430804   -1.4639988   -0.0956634
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2016470   -0.4953652    0.0343794
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.5196455    0.3576928    0.6407630
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2886228   -1.2084474    0.2480923
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5475517    0.3490294    0.6855319
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.7200199   -1.0448563   -0.4467855
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1739983    0.0995296    0.2423084
