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
![](/tmp/76bc1f7c-7b94-4225-9cc9-e0348dde3fc1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/76bc1f7c-7b94-4225-9cc9-e0348dde3fc1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/76bc1f7c-7b94-4225-9cc9-e0348dde3fc1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/76bc1f7c-7b94-4225-9cc9-e0348dde3fc1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2046830   0.1923772   0.2169888
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1326321   0.1204619   0.1448022
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1062925   0.0919861   0.1205988
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7451649   0.7004884   0.7898413
Birth       ki1135781-COHORTS          GUATEMALA                      2                    NA                0.3301573   0.2804832   0.3798315
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.2471660   0.2140414   0.2802906
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.2312685   0.2022603   0.2602767
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.1659280   0.1433703   0.1884858
Birth       ki1135781-COHORTS          INDIA                          3+                   NA                0.1569660   0.1417200   0.1722121
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2553844   0.2260910   0.2846779
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.1609695   0.1331393   0.1887997
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1185204   0.1027606   0.1342802
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1622532   0.1470902   0.1774162
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0841952   0.0743515   0.0940388
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0678450   0.0602005   0.0754895
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0826707   0.0609750   0.1043665
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1153086   0.0887313   0.1418859
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1170630   0.0915684   0.1425575
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.0694444   0.0106475   0.1282414
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1666667   0.0868626   0.2464708
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2165899   0.1617098   0.2714700
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0426540   0.0153646   0.0699435
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0330189   0.0089451   0.0570926
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0503145   0.0163082   0.0843208
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0331818   0.0212466   0.0451170
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0505948   0.0345844   0.0666052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0320621   0.0205956   0.0435285
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0410256   0.0131775   0.0688738
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.0548780   0.0200120   0.0897441
6 months    ki1101329-Keneba           GAMBIA                         3+                   NA                0.0625000   0.0491515   0.0758485
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0201828   0.0059401   0.0344255
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.0972864   0.0468163   0.1477564
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1208280   0.0791216   0.1625344
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0202420   0.0153646   0.0251195
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0384362   0.0310395   0.0458328
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0993697   0.0874775   0.1112618
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.0913433   0.0712868   0.1113998
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1131132   0.0948307   0.1313958
6 months    ki1135781-COHORTS          INDIA                          3+                   NA                0.1504890   0.1362475   0.1647306
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0355897   0.0215547   0.0496248
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0362842   0.0225827   0.0499858
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0711622   0.0575766   0.0847477
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0782047   0.0677435   0.0886659
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0749930   0.0661609   0.0838251
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0719423   0.0637927   0.0800920
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1411177   0.0971935   0.1850420
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0784088   0.0449554   0.1118622
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.1371668   0.0878471   0.1864866
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1600543   0.0957555   0.2243530
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0531173   0.0138419   0.0923927
24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0935782   0.0762268   0.1109296
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2321110   0.1846298   0.2795923
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1699558   0.1219733   0.2179383
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1393850   0.1041888   0.1745811
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0834699   0.0533744   0.1135655
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1157512   0.0777380   0.1537644
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.2561975   0.2106582   0.3017367
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0598802   0.0238784   0.0958821
24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.0397351   0.0085646   0.0709056
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.0448549   0.0301129   0.0595968
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0422363   0.0261249   0.0583477
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0623746   0.0456855   0.0790636
24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1146063   0.1005984   0.1286143
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1161502   0.0974200   0.1348804
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0707841   0.0530655   0.0885026
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1356256   0.1189472   0.1523039
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1822069   0.1653002   0.1991136
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2173580   0.2005224   0.2341936
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.1836440   0.1583693   0.2089188


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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.6479878   0.5806738    0.7231050
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.5193030   0.4481845    0.6017067
Birth       ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      2                    1                 0.4430661   0.3776739    0.5197807
Birth       ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.3316930   0.2867725    0.3836500
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.7174692   0.5963535    0.8631828
Birth       ki1135781-COHORTS          INDIA                          3+                   1                 0.6787178   0.5792348    0.7952869
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6303027   0.5122830    0.7755117
Birth       ki1135781-COHORTS          PHILIPPINES                    3+                   1                 0.4640863   0.3893671    0.5531440
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.5189122   0.4470157    0.6023722
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.4181426   0.3613438    0.4838695
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
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.5247758   0.9442256    2.4622728
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.9662545   0.5816102    1.6052807
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 1.3376523   0.5279118    3.3894177
6 months    ki1101329-Keneba           GAMBIA                         3+                   1                 1.5234373   0.7477881    3.1036350
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 4.8202646   2.0092644   11.5639087
6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 5.9866864   2.7371409   13.0941064
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.8988279   1.3953214    2.5840263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 4.9090726   3.7540562    6.4194547
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 1.2383309   0.9433413    1.6255658
6 months    ki1135781-COHORTS          INDIA                          3+                   1                 1.6475106   1.2975086    2.0919253
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.0195139   0.5909145    1.7589832
6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.9995133   1.2901799    3.0988340
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9589315   0.8016497    1.1470716
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9199231   0.7738034    1.0936350
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.5556269   0.3279794    0.9412826
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.9720031   0.6051169    1.5613348
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.3318707   0.1429591    0.7704176
24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.5846657   0.3757889    0.9096434
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7322176   0.5166161    1.0377970
24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 0.6005098   0.4339564    0.8309868
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.3867413   0.8608887    2.2337981
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 3.0693377   2.0776432    4.5343849
24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 0.6635762   0.2469743    1.7829113
24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 0.7490765   0.3775276    1.4862905
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.4768011   0.9275595    2.3512686
24 months   ki1135781-COHORTS          INDIA                          3+                   1                 2.7134577   1.8180198    4.0499297
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.6094185   0.4531714    0.8195372
24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1676739   0.9520007    1.4322073
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1929183   1.0582508    1.3447229
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0078872   0.8541743    1.1892615


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0451785   -0.0557268   -0.0346302
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4911966   -0.5380024   -0.4443908
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0623969   -0.0895006   -0.0352932
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0998135   -0.1265076   -0.0731195
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0662807   -0.0808625   -0.0516989
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0417670    0.0252469    0.0582872
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1074993    0.0472802    0.1677183
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0014169   -0.0230072    0.0201734
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0094461   -0.0011006    0.0199928
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0181241   -0.0087267    0.0449749
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0704034    0.0480353    0.0927714
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0118286    0.0072829    0.0163744
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.0398119    0.0202043    0.0594195
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0239077    0.0100076    0.0378077
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0064641   -0.0031590    0.0160873
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0286610   -0.0621958    0.0048739
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0604903   -0.1243802    0.0033996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0493801   -0.0948337   -0.0039265
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0966248    0.0652387    0.1280109
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0134118   -0.0458485    0.0190249
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0522777    0.0356992    0.0688563
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0479591   -0.0656450   -0.0302732
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0360766    0.0203427    0.0518106


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2832431   -0.3520776   -0.2179129
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.9340866   -2.3092207   -1.6014779
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3694931   -0.5435852   -0.2150359
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.6415953   -0.8341857   -0.4692270
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6906221   -0.8571252   -0.5390471
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3356460    0.2123723    0.4396258
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.6075337    0.1176744    0.8254275
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0343602   -0.7156685    0.3763941
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2215941   -0.0593871    0.4280507
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.3064102   -0.3277241    0.6376756
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.7771979    0.5735976    0.8835823
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.3688301    0.2195958    0.4895268
6 months    ki1135781-COHORTS          INDIA                          1                    NA                 0.3035480    0.1407267    0.4355168
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.4018271    0.1319531    0.5877978
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0763461   -0.0443612    0.1831021
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2548620   -0.5927230    0.0113292
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.6075522   -1.4209536   -0.0674406
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2702340   -0.5695058   -0.0280271
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.5365221    0.3773158    0.6550230
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.2886228   -1.2084474    0.2480923
24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.5531216    0.3540447    0.6908450
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.7033045   -1.0257484   -0.4321848
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1652742    0.0911479    0.2333548
