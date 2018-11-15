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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        parity    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      378    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       30    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0      291    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1       27    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      583    1366
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1       57    1366
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       62     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        7     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       76     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1       11     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0      171     373
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       46     373
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      237     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7     640
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682    2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19    2132
0-24 months   ki1101329-Keneba           GAMBIA                         1                 0      220    1850
0-24 months   ki1101329-Keneba           GAMBIA                         1                 1        9    1850
0-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190    1850
0-24 months   ki1101329-Keneba           GAMBIA                         2                 1        9    1850
0-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1350    1850
0-24 months   ki1101329-Keneba           GAMBIA                         3+                1       72    1850
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      148     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      229     592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       41     592
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3651    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       61    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2816    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2698    9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       55    9332
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0      142    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                 0      144    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                 1        3    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                0      731    1053
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                1       29    1053
0-24 months   ki1135781-COHORTS          INDIA                          1                 0      550    3595
0-24 months   ki1135781-COHORTS          INDIA                          1                 1       46    3595
0-24 months   ki1135781-COHORTS          INDIA                          2                 0      825    3595
0-24 months   ki1135781-COHORTS          INDIA                          2                 1       73    3595
0-24 months   ki1135781-COHORTS          INDIA                          3+                0     1853    3595
0-24 months   ki1135781-COHORTS          INDIA                          3+                1      248    3595
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0      583    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       24    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 0      608    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 1       19    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                0     1476    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                1      101    2811
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     5333   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      365   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5166   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      257   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     4276   15672
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      275   15672
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      234     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        5     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0      224     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1        3     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                0      165     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                1        6     637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      681    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       14    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      652    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       17    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      646    2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       20    2030
0-6 months    ki1101329-Keneba           GAMBIA                         1                 0      203    1624
0-6 months    ki1101329-Keneba           GAMBIA                         1                 1        3    1624
0-6 months    ki1101329-Keneba           GAMBIA                         2                 0      177    1624
0-6 months    ki1101329-Keneba           GAMBIA                         2                 1        0    1624
0-6 months    ki1101329-Keneba           GAMBIA                         3+                0     1205    1624
0-6 months    ki1101329-Keneba           GAMBIA                         3+                1       36    1624
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      128     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       16     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      122     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       17     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                0      227     542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                1       32     542
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      307    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       44    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0      233    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1       41    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      476    1204
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1      103    1204
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       56     347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        9     347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       68     347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1       12     347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0      164     347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       38     347
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      203     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       18     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      213     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        9     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      147     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1       11     601
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      548    1677
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       26    1677
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      510    1677
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       30    1677
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      536    1677
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       27    1677
6-24 months   ki1101329-Keneba           GAMBIA                         1                 0      188    1741
6-24 months   ki1101329-Keneba           GAMBIA                         1                 1       11    1741
6-24 months   ki1101329-Keneba           GAMBIA                         2                 0      158    1741
6-24 months   ki1101329-Keneba           GAMBIA                         2                 1       14    1741
6-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1248    1741
6-24 months   ki1101329-Keneba           GAMBIA                         3+                1      122    1741
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      144     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       20     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      115     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       33     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      211     577
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       54     577
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      773    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       38    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0      646    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       27    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0      711    2225
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       30    2225
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0      128     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        7     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                 0      123     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                 1        4     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                0      640     932
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                1       30     932
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0      543    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       29    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 0      547    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 1       29    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                0     1356    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                1      135    2639


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/6d668599-2464-48f5-adc2-c1a7ee655e93/7b192921-bc15-4e14-9e99-6c6b59fb3a52/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d668599-2464-48f5-adc2-c1a7ee655e93/7b192921-bc15-4e14-9e99-6c6b59fb3a52/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d668599-2464-48f5-adc2-c1a7ee655e93/7b192921-bc15-4e14-9e99-6c6b59fb3a52/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d668599-2464-48f5-adc2-c1a7ee655e93/7b192921-bc15-4e14-9e99-6c6b59fb3a52/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0735294   0.0491492   0.0979096
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0849057   0.0680168   0.1017946
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0890625   0.0480466   0.1300784
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1014493   0.0301143   0.1727842
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1264368   0.0565081   0.1963655
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2119816   0.1575290   0.2664341
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0247253   0.0134424   0.0360081
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0284495   0.0161569   0.0407421
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0271041   0.0150803   0.0391279
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0393013   0.0141277   0.0644749
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0452261   0.0163470   0.0741053
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0506329   0.0392344   0.0620315
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1137725   0.0655723   0.1619726
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1612903   0.1033395   0.2192411
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1518519   0.1090089   0.1946948
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0164332   0.0123431   0.0205233
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0177886   0.0129499   0.0226274
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0199782   0.0147511   0.0252053
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0771812   0.0557523   0.0986101
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0812918   0.0634153   0.0991683
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1180390   0.1042405   0.1318376
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0395387   0.0240333   0.0550441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0303030   0.0168830   0.0437230
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0640457   0.0519597   0.0761316
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0640576   0.0569144   0.0712008
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0473907   0.0412529   0.0535285
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0604263   0.0534449   0.0674076
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0201439   0.0096963   0.0305915
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0254111   0.0134832   0.0373390
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0300300   0.0170650   0.0429951
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1111111   0.0597339   0.1624883
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1223022   0.0677852   0.1768191
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1235521   0.0834389   0.1636653
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1253561   0.0876019   0.1631103
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1496350   0.1228184   0.1764517
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.1778929   0.1499324   0.2058534
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1384615   0.0543763   0.2225468
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1500000   0.0716417   0.2283583
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.1881188   0.1341477   0.2420899
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0814480   0.0453564   0.1175395
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0405405   0.0145754   0.0665057
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0696203   0.0299030   0.1093375
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0452962   0.0282790   0.0623133
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0555556   0.0362300   0.0748811
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0479574   0.0303019   0.0656128
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0552764   0.0235173   0.0870355
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0813953   0.0405189   0.1222718
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0890511   0.0739649   0.1041373
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1219512   0.0718261   0.1720763
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2229730   0.1558551   0.2900908
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2037736   0.1552342   0.2523129
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0468557   0.0323080   0.0614035
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0401189   0.0252896   0.0549482
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0404858   0.0262915   0.0546801
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0506993   0.0327174   0.0686812
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0503472   0.0324869   0.0682075
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0905433   0.0759749   0.1051116


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1715818   0.1332696   0.2098940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0486486   0.0388428   0.0584545
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178954   0.0152055   0.0205853
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572358   0.0531429   0.0613287
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251232   0.0183136   0.0319327
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1561462   0.1410608   0.1712315
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1700288   0.1304464   0.2096113
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494931   0.0391092   0.0598771
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0844342   0.0713702   0.0974983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1854419   0.1537023   0.2171816
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0426966   0.0342942   0.0510990
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0731338   0.0631985   0.0830690


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1547170   0.7565289   1.7624855
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2112500   0.6974280   2.1036243
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2463054   0.5094502   3.0489281
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.0895326   0.9883986   4.4173943
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1506243   0.6137724   2.1570475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0962118   0.5800975   2.0715142
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1507536   0.4657865   2.8430063
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2883261   0.6533823   2.5402955
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4176570   0.8134344   2.4706989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3346979   0.8022801   2.2204443
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0824818   0.7486825   1.5651053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2157229   0.8472369   1.7444733
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0532584   0.7391217   1.5009075
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5293752   1.1315744   2.0670215
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7664141   0.4241932   1.3847242
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6198214   1.0482449   2.5030614
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7398150   0.6296322   0.8692791
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9433122   0.8042238   1.1064554
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2614777   0.6267314   2.5390878
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.4907765   0.7591695   2.9274287
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1007194   0.5790866   2.0922316
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1119691   0.6320034   1.9564378
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1936795   0.9331185   1.5269987
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.4191003   0.9755238   2.0643739
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.0833333   0.4862619   2.4135368
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3586359   0.6940848   2.6594608
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.4977478   0.2284392   1.0845465
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8547820   0.4150843   1.7602503
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2264957   0.7350315   2.0465677
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0587512   0.6256851   1.7915626
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.4725159   0.6865199   3.1583976
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.6110153   0.8850225   2.9325473
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.8283784   1.0985242   3.0431440
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.6709434   1.0390717   2.6870636
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.8562212   0.5283715   1.3874985
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.8640528   0.5409466   1.3801497
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9930556   0.6013342   1.6399523
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.7858877   1.2097922   2.6363164


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0099259   -0.0179202    0.0377721
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0701325    0.0017671    0.1384979
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020102   -0.0073317    0.0113521
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0093473   -0.0145896    0.0332843
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0298086   -0.0127562    0.0723735
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0014622   -0.0018021    0.0047265
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0249050    0.0047825    0.0450276
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0116886   -0.0025603    0.0259375
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0068217   -0.0120132   -0.0016302
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0049793   -0.0040086    0.0139672
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0088151   -0.0357545    0.0533847
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0307901    0.0014827    0.0600974
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0315673   -0.0458167    0.1089512
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0182200   -0.0451241    0.0086841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0041970   -0.0099159    0.0183098
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0291579   -0.0016436    0.0599593
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0634907    0.0177560    0.1092255
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0041591   -0.0154709    0.0071527
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0224345    0.0056450    0.0392239


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1189370   -0.2617197    0.3847509
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4087409   -0.1444251    0.6945302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0751880   -0.3486669    0.3658350
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1921396   -0.4828459    0.5598744
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2076083   -0.1488967    0.4534891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0817094   -0.1195925    0.2468174
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2439606    0.0202944    0.4165640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2281713   -0.1035805    0.4601939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1191863   -0.2125026   -0.0330519
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1981944   -0.2466347    0.4842978
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0735043   -0.3833037    0.3794607
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1971874   -0.0245364    0.3709271
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1856584   -0.4216626    0.5335375
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2881638   -0.7816690    0.0686452
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0847991   -0.2490808    0.3294328
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.3453321   -0.1369159    0.6230240
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3423752    0.0502792    0.5446342
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0974106   -0.3962632    0.1374763
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.3067593    0.0393215    0.4997466
