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

agecat         studyid                    country                        parity    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            313    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2            280    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           575    1168
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            240     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            225     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           169     634
0-3 months     ki1101329-Keneba           GAMBIA                         1            130    1145
0-3 months     ki1101329-Keneba           GAMBIA                         2            113    1145
0-3 months     ki1101329-Keneba           GAMBIA                         3+           902    1145
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3052    7863
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2438    7863
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2373    7863
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             93     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      2            111     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           524     728
0-3 months     ki1135781-COHORTS          INDIA                          1            671    4021
0-3 months     ki1135781-COHORTS          INDIA                          2           1015    4021
0-3 months     ki1135781-COHORTS          INDIA                          3+          2335    4021
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1          12750   40056
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2          13890   40056
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+         13416   40056
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            299    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2            261    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           564    1124
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            206     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            211     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           157     574
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            566    1637
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            536    1637
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           535    1637
3-6 months     ki1101329-Keneba           GAMBIA                         1            146    1130
3-6 months     ki1101329-Keneba           GAMBIA                         2            107    1130
3-6 months     ki1101329-Keneba           GAMBIA                         3+           877    1130
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            244     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            240     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           458     942
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2211    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1851    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1827    5889
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            107     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      2            114     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           584     805
3-6 months     ki1135781-COHORTS          INDIA                          1            675    4069
3-6 months     ki1135781-COHORTS          INDIA                          2           1042    4069
3-6 months     ki1135781-COHORTS          INDIA                          3+          2352    4069
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           8802   25146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           8718   25146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          7626   25146
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            327    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2            253    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           557    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             62     330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             71     330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           197     330
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            197     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            201     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           147     545
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            378    1061
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            338    1061
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           345    1061
6-12 months    ki1101329-Keneba           GAMBIA                         1            116    1067
6-12 months    ki1101329-Keneba           GAMBIA                         2            107    1067
6-12 months    ki1101329-Keneba           GAMBIA                         3+           844    1067
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            244     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2            250     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           456     950
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1697    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1422    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1452    4571
6-12 months    ki1135781-COHORTS          GUATEMALA                      1            120     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      2            125     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+           617     862
6-12 months    ki1135781-COHORTS          INDIA                          1            571    3362
6-12 months    ki1135781-COHORTS          INDIA                          2            844    3362
6-12 months    ki1135781-COHORTS          INDIA                          3+          1947    3362
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1            505    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2            514    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+          1400    2419
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           6719   19651
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2           6988   19651
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          5944   19651
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            168     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            174     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           116     458
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1       2
12-24 months   ki1101329-Keneba           GAMBIA                         1             89     982
12-24 months   ki1101329-Keneba           GAMBIA                         2            100     982
12-24 months   ki1101329-Keneba           GAMBIA                         3+           793     982
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1            176     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2            192     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           366     734
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            104     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             96     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           103     303
12-24 months   ki1135781-COHORTS          GUATEMALA                      1            136     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      2            116     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+           622     874
12-24 months   ki1135781-COHORTS          INDIA                          1            473    2877
12-24 months   ki1135781-COHORTS          INDIA                          2            719    2877
12-24 months   ki1135781-COHORTS          INDIA                          3+          1685    2877
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1            468    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2            492    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1300    2260
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           3056    9285
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           3301    9285
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          2928    9285


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e21b5cea-1934-4269-8424-e9295e5431d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e21b5cea-1934-4269-8424-e9295e5431d4/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                3.7230375   3.6763117   3.7697634
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                3.6329743   3.5907307   3.6752179
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                3.6069595   3.5626703   3.6512487
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4704813   3.4294459   3.5115166
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                3.5616980   3.5210255   3.6023706
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                3.4199938   3.3848689   3.4551187
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.7908245   2.7427501   2.8388989
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                2.3774962   2.2751120   2.4798804
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                3.1400227   3.0885326   3.1915128
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.4724851   3.4384519   3.5065183
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                3.4543925   3.4181441   3.4906409
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                3.4546190   3.4200803   3.4891577
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.9293381   2.8893845   2.9692917
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                2.6863486   2.6395073   2.7331899
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                2.6049139   2.5577223   2.6521055
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                3.6673257   3.6273527   3.7072986
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                3.6230870   3.5898591   3.6563148
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                3.4899051   3.4656595   3.5141506
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.6945350   3.6708714   3.7181986
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                3.7584658   3.7413247   3.7756070
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                3.6504728   3.6325997   3.6683459
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                2.2405084   2.1641745   2.3168423
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                2.0504845   2.0041963   2.0967727
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                1.8401292   1.7901500   1.8901085
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9380335   1.8969244   1.9791426
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.9655298   1.9308903   2.0001693
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                2.0600926   2.0242976   2.0958877
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7402355   1.6908437   1.7896272
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7688835   1.7132976   1.8244693
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.6729774   1.6240561   1.7218988
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                2.7031332   2.6497181   2.7565483
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                2.3899997   2.3373457   2.4426537
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                1.8883577   1.8438227   1.9328928
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                2.2250774   2.1731975   2.2769574
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.9281556   1.8672441   1.9890671
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                1.8096397   1.7667336   1.8525458
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                2.0647474   2.0350776   2.0944173
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.9235688   1.8921006   1.9550369
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.9213261   1.8883040   1.9543481
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                2.5049380   2.4594035   2.5504725
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                1.6725123   1.6395450   1.7054797
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                1.7209533   1.6879710   1.7539355
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                2.0371693   2.0056204   2.0687183
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                1.8864573   1.8580339   1.9148806
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                1.8409140   1.8213432   1.8604849
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                2.0031053   1.9829809   2.0232296
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.9060065   1.8879581   1.9240548
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.7252299   1.7041903   1.7462695
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                1.1659341   1.1369748   1.1948935
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                1.0882390   1.0659713   1.1105067
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                1.0790567   1.0691262   1.0889872
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                1.1853675   1.1112558   1.2594793
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                1.0813510   0.9989573   1.1637446
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.9804510   0.9128875   1.0480145
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.3151438   1.2962177   1.3340698
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                1.2647937   1.2426883   1.2868991
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                1.1109528   1.0952659   1.1266397
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2384988   1.2102003   1.2667972
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                1.1972720   1.1660420   1.2285020
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.1530261   1.1296315   1.1764206
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                1.3541768   1.3363234   1.3720303
6-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                1.4026381   1.3762521   1.4290240
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                1.1820638   1.1617973   1.2023304
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                1.2315653   1.2063836   1.2567470
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                1.2041469   1.1779108   1.2303829
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                1.0209971   0.9952086   1.0467857
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.2535165   1.2375084   1.2695247
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                1.1823780   1.1649382   1.1998178
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                1.1879305   1.1698970   1.2059641
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                1.1779891   1.1626163   1.1933620
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                1.1469653   1.1202772   1.1736534
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.9868496   0.9687643   1.0049348
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                1.1589009   1.1364859   1.1813158
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                1.0913484   1.0718800   1.1108168
6-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                1.0566867   1.0433243   1.0700490
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                1.1619014   1.1379149   1.1858878
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                1.0945647   1.0740468   1.1150826
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                1.0327937   1.0172925   1.0482949
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1636105   1.1487321   1.1784889
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                1.0982878   1.0892655   1.1073101
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                1.0587890   1.0441471   1.0734309
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8664678   0.8532098   0.8797259
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.8061292   0.7927406   0.8195177
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.7775036   0.7647300   0.7902772
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.7254798   0.7163293   0.7346302
12-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.8783292   0.8641395   0.8925189
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.8484038   0.8364755   0.8603322
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.9220190   0.9069673   0.9370707
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.8116769   0.7911936   0.8321603
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.8307801   0.8151601   0.8464001
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7545254   0.7319676   0.7770832
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.8031944   0.7822534   0.8241354
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.7617076   0.7385027   0.7849125
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7876189   0.7744978   0.8007400
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                0.6908704   0.6779416   0.7037992
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                0.7717447   0.7597541   0.7837353
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.8827881   0.8694140   0.8961621
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.8433809   0.8324709   0.8542908
12-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.7939361   0.7864681   0.8014042
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7992717   0.7856772   0.8128661
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.7331689   0.7219460   0.7443918
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.6893979   0.6806564   0.6981393
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.8274121   0.8196293   0.8351948
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.7895706   0.7827249   0.7964162
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.7872817   0.7809113   0.7936520


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1454440   3.0949962   3.1958917
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3706450   3.3497515   3.3915385
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5339988   3.5157374   3.5522602
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184743   3.7081281   3.7288205
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7960345   1.7599951   1.8320738
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9715566   1.9280386   2.0150747
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9747519   1.9548124   1.9946914
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8562696   1.8412447   1.8712944
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9201827   1.9097195   1.9306459
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0139672   0.9374673   1.0904670
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1974328   1.1756681   1.2191974
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1774049   1.1574133   1.1973966
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1980958   1.1871818   1.2090098
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0185507   1.0014002   1.0357013
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0842179   1.0737055   1.0947303
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069007   1.1001595   1.1136418
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8449409   0.8333460   0.8565357
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7793681   0.7685580   0.7901783
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8139538   0.8077496   0.8201580
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966099   0.7912995   0.8019202


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0900632   -0.1531688   -0.0269576
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.1160780   -0.1952057   -0.0369504
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0912167    0.0378652    0.1445682
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0504875   -0.1008963   -0.0000787
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.4133284   -0.5194022   -0.3072546
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                  0.3491982    0.2822188    0.4161775
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0180926   -0.0673488    0.0311637
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0178661   -0.0662788    0.0305466
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.2429895   -0.3020485   -0.1839305
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.3244242   -0.3830862   -0.2657621
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0442387   -0.0960127    0.0075353
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.1774206   -0.2240518   -0.1307894
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0639309    0.0356100    0.0922517
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0440622   -0.0741904   -0.0139339
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.1900239   -0.2658050   -0.1142428
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.4003792   -0.5032313   -0.2975271
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0274963   -0.0230235    0.0780161
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                  0.1220591    0.0713125    0.1728058
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0286480   -0.0446853    0.1019813
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0672580   -0.1362721    0.0017561
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.3131335   -0.3824345   -0.2438325
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.8147755   -0.8827884   -0.7467626
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.2969218   -0.3711148   -0.2227288
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.4154377   -0.4888439   -0.3420316
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.1411787   -0.1843137   -0.0980436
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.1434213   -0.1875507   -0.0992919
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.8324256   -0.8911105   -0.7737407
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.7839847   -0.8397412   -0.7282281
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.1507121   -0.1928925   -0.1085316
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.1962553   -0.2333020   -0.1592086
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0970988   -0.1233388   -0.0708588
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.2778753   -0.3066370   -0.2491137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0776951   -0.1188301   -0.0365602
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0868774   -0.1211918   -0.0525630
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.1040166   -0.2112708    0.0032377
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 -0.2049165   -0.2995966   -0.1102365
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0503500   -0.0801587   -0.0205414
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.2041910   -0.2279842   -0.1803978
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0412268   -0.0820082   -0.0004454
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0854727   -0.1210486   -0.0498968
6-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0484612    0.0187659    0.0781565
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1721130   -0.1985078   -0.1457182
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0274185   -0.0638026    0.0089657
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.2105682   -0.2461704   -0.1749660
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0711385   -0.0946663   -0.0476107
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0655860   -0.0895480   -0.0416240
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0310238   -0.0602227   -0.0018250
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.1911395   -0.2133255   -0.1689536
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0675525   -0.0970938   -0.0380111
6-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.1022142   -0.1281865   -0.0762419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0673366   -0.0986752   -0.0359980
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.1291076   -0.1575221   -0.1006932
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0653227   -0.0820811   -0.0485644
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.1048216   -0.1256682   -0.0839749
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0603386   -0.0791553   -0.0415220
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0889642   -0.1074764   -0.0704521
12-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         2                    1                  0.1528494    0.1359130    0.1697858
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.1229241    0.1083011    0.1375470
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.1103420   -0.1360006   -0.0846834
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0912388   -0.1128389   -0.0696388
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0486690    0.0212394    0.0760986
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0071822   -0.0223965    0.0367609
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0967485   -0.1148372   -0.0786599
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0158742   -0.0328570    0.0011085
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.0394072   -0.0564859   -0.0223284
12-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.0888519   -0.1040295   -0.0736744
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0661028   -0.0833077   -0.0488979
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.1098738   -0.1258613   -0.0938863
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0378415   -0.0479755   -0.0277076
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0401304   -0.0498548   -0.0304060
