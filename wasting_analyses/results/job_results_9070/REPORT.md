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

unadjusted

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
![](/tmp/aeca56f2-ebe2-4b20-8141-1317f8b6d567/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aeca56f2-ebe2-4b20-8141-1317f8b6d567/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aeca56f2-ebe2-4b20-8141-1317f8b6d567/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aeca56f2-ebe2-4b20-8141-1317f8b6d567/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1913325   0.1809937   0.2016712
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1349820   0.1242325   0.1457315
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1359447   0.1245441   0.1473453
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.2978723   0.2053611   0.3903836
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.2627119   0.1832511   0.3421727
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2444853   0.2083456   0.2806249
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.2121685   0.1805142   0.2438228
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.1619145   0.1388716   0.1849573
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1594982   0.1443066   0.1746898
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2234375   0.1911600   0.2557150
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1598174   0.1317928   0.1878419
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1267166   0.1104242   0.1430090
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1164205   0.1063211   0.1265199
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0866582   0.0782912   0.0950253
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0883042   0.0802453   0.0963631
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1020408   0.0710963   0.1329853
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1324503   0.1003673   0.1645334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1343750   0.1025712   0.1661788
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.0694444   0.0106475   0.1282414
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1666667   0.0868626   0.2464708
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2165899   0.1617098   0.2714700
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0426540   0.0153646   0.0699435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0330189   0.0089451   0.0570926
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0503145   0.0163082   0.0843208
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0397644   0.0250630   0.0544657
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0456621   0.0296958   0.0616284
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0425532   0.0271267   0.0579797
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0410256   0.0131775   0.0688738
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0548780   0.0200120   0.0897441
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0625000   0.0491515   0.0758485
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0522876   0.0169834   0.0875917
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1073826   0.0576271   0.1571380
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1034483   0.0664686   0.1404280
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0246575   0.0193541   0.0299610
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0354018   0.0281778   0.0426257
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0385552   0.0309527   0.0461577
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0971660   0.0758380   0.1184940
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1125343   0.0937970   0.1312716
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1497348   0.1356073   0.1638623
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0452962   0.0282810   0.0623114
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0444811   0.0280774   0.0608847
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0708197   0.0579425   0.0836968
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0844772   0.0768210   0.0921334
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0772887   0.0692682   0.0853093
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0938498   0.0855041   0.1021954
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1327014   0.0868867   0.1785161
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0751174   0.0396893   0.1105455
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1363636   0.0821163   0.1906110
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0875912   0.0402357   0.1349468
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0863309   0.0396246   0.1330373
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.1027273   0.0847793   0.1206752
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1985294   0.1314219   0.2656370
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1769231   0.1112594   0.2425868
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1767241   0.1275925   0.2258558
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1562500   0.0999225   0.2125775
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1735537   0.1059929   0.2411145
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2127660   0.1451333   0.2803987
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0598802   0.0238784   0.0958821
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0397351   0.0085646   0.0709056
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0448549   0.0301129   0.0595968
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0570410   0.0378467   0.0762353
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0692951   0.0520880   0.0865022
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1160532   0.1018570   0.1302493
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0611855   0.0406408   0.0817302
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0588235   0.0390471   0.0786000
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0745297   0.0606803   0.0883790
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2170321   0.2007882   0.2332760
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2207680   0.2035587   0.2379774
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2169867   0.1995975   0.2343760


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


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.7054838   0.6407539   0.7767527
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.7105155   0.6430534   0.7850550
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 0.8819613   0.5717074   1.3605835
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.8207721   0.5818940   1.1577139
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.7631409   0.6209543   0.9378857
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.7517526   0.6298000   0.8973197
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7152665   0.5699000   0.8977121
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.5671233   0.4674008   0.6881220
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7443555   0.6539697   0.8472336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7584935   0.6706097   0.8578945
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.2980132   0.9174974   1.8363413
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3168750   0.9548190   1.8162182
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 2.4000000   0.9073519   6.3481435
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 3.1188940   1.2887863   7.5477991
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.7741090   0.2934517   2.0420557
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.1795947   0.4651051   2.9916758
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1483173   0.6903380   1.9101259
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0701340   0.6376220   1.7960275
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.3376523   0.5279118   3.3894177
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.5234373   0.7477881   3.1036350
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 2.0536913   0.9055182   4.6577174
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.9784483   0.9215762   4.2473510
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.4357376   1.0673699   1.9312355
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.5636273   1.1679083   2.0934267
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.1581656   0.8792647   1.5255332
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.5410206   1.2135200   1.9569061
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9820048   0.5800925   1.6623787
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.5634804   1.0300188   2.3732294
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9149063   0.7991683   1.0474057
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.1109476   0.9836184   1.2547595
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5660630   0.3155158   1.0155666
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 1.0275974   0.6068262   1.7401298
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9856115   0.4587083   2.1177511
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.1728030   0.6644635   2.0700412
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8911681   0.5394394   1.4722330
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.8901660   0.5746393   1.3789441
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1107438   0.6534224   1.8881381
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.3617021   0.8420718   2.2019889
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.6635762   0.2469743   1.7829113
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7490765   0.3775276   1.4862905
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.2148297   0.7996367   1.8456023
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.0345571   1.4222424   2.9104904
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9613971   0.5977829   1.5461872
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.2180942   0.8298760   1.7879221
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0172138   0.9125327   1.1339034
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9997910   0.8968192   1.1145860


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0318280   -0.0392252   -0.0244308
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0439041   -0.1298930    0.0420848
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0432969   -0.0717341   -0.0148597
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0678666   -0.0953615   -0.0403717
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0204480   -0.0286057   -0.0122904
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0223970   -0.0025603    0.0473543
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1074993    0.0472802    0.1677183
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0014169   -0.0230072    0.0201734
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0028635   -0.0092855    0.0150125
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0181241   -0.0087267    0.0449749
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0382986    0.0046526    0.0719445
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0074131    0.0029191    0.0119071
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0339892    0.0139957    0.0539827
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0142012   -0.0014882    0.0298907
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001917   -0.0055182    0.0059015
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0202447   -0.0553304    0.0148411
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0119727   -0.0332651    0.0572105
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0157985   -0.0723495    0.0407525
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0238448   -0.0221359    0.0698255
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0134118   -0.0458485    0.0190249
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0374730    0.0189468    0.0559993
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0070056   -0.0114746    0.0254858
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0012515   -0.0116909    0.0141939


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1995433   -0.2464451   -0.1544063
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1728723   -0.5652092    0.1211210
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.2563894   -0.4360548   -0.0992020
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4362424   -0.6222398   -0.2715705
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.2130615   -0.3007268   -0.1313045
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1799852   -0.0403159    0.3536346
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6075337    0.1176744    0.8254275
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0343602   -0.7156685    0.3763941
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0671749   -0.2657313    0.3125218
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.3064102   -0.3277241    0.6376756
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.4227861   -0.0704734    0.6887584
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2311502    0.0805095    0.3571113
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.2591525    0.0911448    0.3961029
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2386868   -0.0733386    0.4600047
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0022637   -0.0675128    0.0674793
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.1800219   -0.5346511    0.0926591
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1202515   -0.4739966    0.4749259
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0864577   -0.4442273    0.1826839
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1324013   -0.1632660    0.3529189
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2886228   -1.2084474    0.2480923
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3964810    0.1702468    0.5610320
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1027353   -0.2131577    0.3363732
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0057333   -0.0553602    0.0632902
