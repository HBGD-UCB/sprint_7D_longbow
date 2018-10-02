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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      296    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       38    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      260    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       50    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      458    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       82    1184
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10666   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      730   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0    10332   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      514   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     8552   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      550   31344
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      256    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       32    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      244    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       34    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                0      454    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                1       64    1084
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      288    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       40    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      230    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       66    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      422    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1      108    1154
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
![](/tmp/e730ce66-d907-493c-baa4-2afdc1a6668b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e730ce66-d907-493c-baa4-2afdc1a6668b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e730ce66-d907-493c-baa4-2afdc1a6668b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e730ce66-d907-493c-baa4-2afdc1a6668b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0581747   0.0377476   0.0786018
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0921511   0.0703974   0.1139048
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0820930   0.0435669   0.1206191
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1014493   0.0301143   0.1727842
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1264368   0.0565081   0.1963655
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.2119816   0.1575290   0.2664341
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0251312   0.0137773   0.0364851
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0287391   0.0163925   0.0410858
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0273444   0.0152824   0.0394065
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0393013   0.0141277   0.0644749
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0452261   0.0163470   0.0741053
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0506329   0.0392344   0.0620315
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0545954   0.0281266   0.0810642
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1585642   0.1088471   0.2082812
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1126259   0.0790079   0.1462439
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0163776   0.0122605   0.0204947
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0183267   0.0131781   0.0234753
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0494829   0.0402768   0.0586889
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0653647   0.0462845   0.0844448
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0686909   0.0538302   0.0835517
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1273560   0.1129231   0.1417890
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0390746   0.0239098   0.0542394
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0300903   0.0168349   0.0433457
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0645370   0.0523988   0.0766752
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0764560   0.0660424   0.0868695
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0459872   0.0394912   0.0524832
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0511879   0.0451680   0.0572077
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0153928   0.0056818   0.0251038
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0249343   0.0116291   0.0382395
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0175207   0.0093348   0.0257067
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0823395   0.0481636   0.1165153
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1506808   0.1015732   0.1997885
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1415887   0.1076533   0.1755241
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1647088   0.1210396   0.2083780
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.1878990   0.1661600   0.2096380
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.2161768   0.1931245   0.2392290
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.1384615   0.0543763   0.2225468
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                0.1500000   0.0716417   0.2283583
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                0.1881188   0.1341477   0.2420899
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0814480   0.0453564   0.1175395
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.0405405   0.0145754   0.0665057
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                0.0696203   0.0299030   0.1093375
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0572556   0.0399290   0.0745822
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0572863   0.0406094   0.0739631
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0494645   0.0342357   0.0646934
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1301025   0.0706924   0.1895126
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0392227   0.0130860   0.0653594
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0799175   0.0654803   0.0943548
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.0722912   0.0383907   0.1061917
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.3576420   0.2955883   0.4196956
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.2093742   0.1705396   0.2482088
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1258433   0.1112474   0.1404392
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0345596   0.0233122   0.0458069
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.1242909   0.1018274   0.1467544
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0575441   0.0424370   0.0726512
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0543644   0.0360739   0.0726549
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.1167417   0.1002839   0.1331996


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.5840411   1.0256528   2.4464285
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.4111464   0.7808209   2.5503083
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.2463054   0.5094502   3.0489281
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 2.0895326   0.9883986   4.4173943
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1435633   0.6129685   2.1334489
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0880678   0.5786229   2.0460502
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1507536   0.4657865   2.8430063
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2883261   0.6533823   2.5402955
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 2.9043487   1.6332511   5.1646937
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 2.0629177   1.1603251   3.6676182
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1190094   0.7679452   1.6305618
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 3.0213755   2.2110338   4.1287067
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0508878   0.7313127   1.5101135
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.9483926   1.4250621   2.6639077
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7700733   0.4281458   1.3850722
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6516363   1.0730981   2.5420812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.6014862   0.4945358   0.7315661
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.6695079   0.5584404   0.8026654
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.6198652   0.7087502   3.7022399
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1382404   0.5186654   2.4979326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.8299947   1.0789893   3.1037201
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.7195723   1.0655302   2.7750776
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.1407951   0.9286259   1.4014399
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.3124786   0.9388364   1.8348244
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 1.0833333   0.4862619   2.4135368
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 1.3586359   0.6940848   2.6594608
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.4977478   0.2284392   1.0845465
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 0.8547820   0.4150843   1.7602503
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0005356   0.6578126   1.5218185
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8639245   0.5610751   1.3302417
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.3014753   0.1342865   0.6768169
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 0.6142658   0.3761617   1.0030856
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 4.9472405   3.0003896   8.1573368
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 2.8962614   1.7513899   4.7895276
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.2746238   0.1941104   0.3885325
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 0.9876636   0.7942769   1.2281350
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.9447442   0.6169735   1.4466449
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 2.0287359   1.5064462   2.7321050


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0252806    0.0005437    0.0500175
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0701325    0.0017671    0.1384979
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0016043   -0.0078049    0.0110134
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0093473   -0.0145896    0.0332843
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0889857    0.0598423    0.1181290
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0015178   -0.0020725    0.0051081
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0367216    0.0179680    0.0554751
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0121527   -0.0018354    0.0261409
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0192201   -0.0287335   -0.0097067
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0097303    0.0005722    0.0188885
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0375867    0.0036218    0.0715516
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0085626   -0.0474462    0.0303210
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.0315673   -0.0458167    0.1089512
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0182200   -0.0451241    0.0086841
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0077625   -0.0231052    0.0075802
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0456683   -0.1049013    0.0135647
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.1131507    0.0761765    0.1501250
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0831467   -0.0962533   -0.0700401
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0155897    0.0005470    0.0306323


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.3029241    0.0008045    0.5136940
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.4087409   -0.1444251    0.6945302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0600052   -0.3662206    0.3532595
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1921396   -0.4828459    0.5598744
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.6197589    0.4114591    0.7543360
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0848157   -0.1373881    0.2636090
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.3597113    0.1533080    0.5157984
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2372315   -0.0872082    0.4648534
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.3358058   -0.5143491   -0.1783129
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3873057   -0.0831135    0.6534118
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.3134153   -0.0074507    0.5320878
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0548372   -0.3348203    0.1664184
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                 0.1856584   -0.4216626    0.5335375
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.2881638   -0.7816690    0.0686452
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1568393   -0.5203751    0.1197717
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.5408739   -1.4498886    0.0308570
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.6101680    0.3969758    0.7479885
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.9473833   -2.5184120   -1.4690309
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2131667   -0.0122498    0.3883855
