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
      W: []
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

**Outcome Variable:** y_rate_haz

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

agecat         studyid                    country                        parity    n_cell       n
-------------  -------------------------  -----------------------------  -------  -------  ------
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            240     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2            225     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+           169     634
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           6375   20028
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2           6945   20028
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          6708   20028
0-3 months     ki1101329-Keneba           GAMBIA                         1            130    1145
0-3 months     ki1101329-Keneba           GAMBIA                         2            113    1145
0-3 months     ki1101329-Keneba           GAMBIA                         3+           902    1145
0-3 months     ki1135781-COHORTS          GUATEMALA                      1             93     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      2            111     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+           524     728
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            313    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2            280    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+           575    1168
0-3 months     ki1135781-COHORTS          INDIA                          1            671    4021
0-3 months     ki1135781-COHORTS          INDIA                          2           1015    4021
0-3 months     ki1135781-COHORTS          INDIA                          3+          2335    4021
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           3052    7863
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           2438    7863
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          2373    7863
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            206     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2            211     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+           157     574
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           4401   12573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2           4359   12573
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+          3813   12573
3-6 months     ki1101329-Keneba           GAMBIA                         1            146    1130
3-6 months     ki1101329-Keneba           GAMBIA                         2            107    1130
3-6 months     ki1101329-Keneba           GAMBIA                         3+           877    1130
3-6 months     ki1135781-COHORTS          GUATEMALA                      1            107     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      2            114     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+           584     805
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            299    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2            261    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+           564    1124
3-6 months     ki1135781-COHORTS          INDIA                          1            675    4069
3-6 months     ki1135781-COHORTS          INDIA                          2           1042    4069
3-6 months     ki1135781-COHORTS          INDIA                          3+          2352    4069
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            122     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2            120     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+           229     471
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            577    1641
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            543    1641
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           521    1641
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1           2211    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2           1851    5889
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+          1827    5889
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            197     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2            201     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+           147     545
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           3364    9832
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2           3495    9832
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          2973    9832
6-12 months    ki1101329-Keneba           GAMBIA                         1            116    1067
6-12 months    ki1101329-Keneba           GAMBIA                         2            107    1067
6-12 months    ki1101329-Keneba           GAMBIA                         3+           844    1067
6-12 months    ki1135781-COHORTS          GUATEMALA                      1            120     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      2            125     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+           617     862
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            327    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2            253    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+           557    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             62     330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             71     330
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+           197     330
6-12 months    ki1135781-COHORTS          INDIA                          1            571    3362
6-12 months    ki1135781-COHORTS          INDIA                          2            844    3362
6-12 months    ki1135781-COHORTS          INDIA                          3+          1947    3362
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            122     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2            125     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+           228     475
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1            505    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2            514    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+          1400    2419
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            385    1064
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            341    1064
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           338    1064
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1697    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           1422    4571
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          1452    4571
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            168     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2            174     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           116     458
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           1531    4648
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           1653    4648
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          1464    4648
12-24 months   ki1101329-Keneba           GAMBIA                         1             89     982
12-24 months   ki1101329-Keneba           GAMBIA                         2            100     982
12-24 months   ki1101329-Keneba           GAMBIA                         3+           793     982
12-24 months   ki1135781-COHORTS          GUATEMALA                      1            136     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      2            116     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+           622     874
12-24 months   ki1135781-COHORTS          INDIA                          1            473    2877
12-24 months   ki1135781-COHORTS          INDIA                          2            719    2877
12-24 months   ki1135781-COHORTS          INDIA                          3+          1685    2877
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1             88     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2             96     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+           183     367
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1            468    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2            492    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1300    2260
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            104     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2             96     303
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           103     303


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







# Results Detail

## Results Plots
![](/tmp/f5dd6490-3775-4d01-8447-c1b717d95d21/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f5dd6490-3775-4d01-8447-c1b717d95d21/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0457264    0.0162017    0.0752511
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                 0.0362877    0.0096830    0.0628924
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0174816   -0.0505822    0.0156190
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0303678   -0.0602506   -0.0004850
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0229772   -0.0535483    0.0075938
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0812729   -0.1148770   -0.0476688
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.1663073   -0.2374224   -0.0951922
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.2507579   -0.3434489   -0.1580670
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.3068050   -0.3350095   -0.2786005
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1380525   -0.1548653   -0.1212396
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.1192061   -0.1374016   -0.1010106
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.1733052   -0.1925415   -0.1540688
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4760672   -0.5329807   -0.4191537
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.5206196   -0.5720523   -0.4691869
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.5598980   -0.5864487   -0.5333472
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0189129   -0.0388819    0.0010562
0-3 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0421539   -0.0585457   -0.0257620
0-3 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0941666   -0.1063970   -0.0819362
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0872287    0.0792520    0.0952054
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0863147    0.0789673    0.0936621
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                 0.0383710    0.0308606    0.0458815
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0426044    0.0051106    0.0800982
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0164802   -0.0374816    0.0045212
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0481116   -0.0736767   -0.0225465
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0242729   -0.0508171    0.0022713
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0259679   -0.0534464    0.0015106
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0328530   -0.0651061   -0.0006000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0841597   -0.1124578   -0.0558616
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0914114   -0.1219987   -0.0608242
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0762519   -0.1039112   -0.0485927
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0350696   -0.0279193    0.0980585
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                 0.0522598   -0.0135655    0.1180852
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0481172   -0.0706539   -0.0255806
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1200961   -0.1560307   -0.0841614
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.1827598   -0.2203021   -0.1452174
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.1816662   -0.2075929   -0.1557394
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0173256    0.0018866    0.0327646
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0155504   -0.0316723    0.0005714
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0083312   -0.0252631    0.0086008
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0249886   -0.0606237    0.0106465
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0944722   -0.1296888   -0.0592555
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1097751   -0.1273667   -0.0921836
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0231333   -0.0397339   -0.0065328
3-6 months     ki1135781-COHORTS          INDIA                          2                    NA                -0.0628806   -0.0758717   -0.0498894
3-6 months     ki1135781-COHORTS          INDIA                          3+                   NA                -0.0751407   -0.0844771   -0.0658043
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0210497    0.0136801    0.0284192
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0119726   -0.0201318   -0.0038134
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0219669   -0.0307580   -0.0131757
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0675235   -0.0787233   -0.0563236
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0910836   -0.1016403   -0.0805270
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                -0.0950112   -0.1020853   -0.0879370
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0674536   -0.1555878    0.0206806
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -0.1199449   -0.1799056   -0.0599842
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   NA                -0.1160725   -0.1545695   -0.0775756
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0552462   -0.0664980   -0.0439944
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0577081   -0.0695584   -0.0458578
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0792001   -0.0919501   -0.0664501
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0544582   -0.0699130   -0.0390034
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0528767   -0.0706811   -0.0350723
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                -0.0720302   -0.0866326   -0.0574279
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0342471   -0.0591119   -0.0093824
6-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.0637819   -0.0934740   -0.0340899
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0665710   -0.0759814   -0.0571606
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0492370   -0.0674006   -0.0310735
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0535255   -0.0673847   -0.0396663
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0724255   -0.0841545   -0.0606965
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0395978   -0.0476501   -0.0315456
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0591444   -0.0671455   -0.0511433
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0508856   -0.0589088   -0.0428624
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0789633   -0.0957778   -0.0621488
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.1075028   -0.1282854   -0.0867202
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.1153091   -0.1235277   -0.1070905
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0728851   -0.0838686   -0.0619016
6-12 months    ki1135781-COHORTS          INDIA                          2                    NA                -0.0923245   -0.1008827   -0.0837663
6-12 months    ki1135781-COHORTS          INDIA                          3+                   NA                -0.1039066   -0.1096504   -0.0981628
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0736067   -0.0854615   -0.0617520
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.0996134   -0.1100689   -0.0891580
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.1095572   -0.1161958   -0.1029185
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0586588   -0.0632101   -0.0541075
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0795853   -0.0835917   -0.0755788
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0875923   -0.0926492   -0.0825353
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0017444   -0.0079944    0.0045056
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                -0.0136467   -0.0200105   -0.0072830
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   NA                -0.0092679   -0.0165795   -0.0019562
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0291289   -0.0417430   -0.0165148
12-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0303089   -0.0427779   -0.0178398
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                -0.0178702   -0.0224979   -0.0132425
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0060080   -0.0151834    0.0031674
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                -0.0239144   -0.0348174   -0.0130113
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                -0.0157806   -0.0227339   -0.0088273
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0608341   -0.0772762   -0.0443920
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0413101   -0.0556416   -0.0269787
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                -0.0522889   -0.0686678   -0.0359100
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.0306399   -0.0396129   -0.0216669
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    NA                -0.0404386   -0.0511585   -0.0297187
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   NA                -0.0272654   -0.0315742   -0.0229565
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0306788   -0.0355346   -0.0258231
12-24 months   ki1135781-COHORTS          INDIA                          2                    NA                -0.0341311   -0.0379972   -0.0302651
12-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                -0.0407953   -0.0435280   -0.0380626
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.0497291   -0.0553902   -0.0440679
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                -0.0600435   -0.0653571   -0.0547299
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                -0.0595992   -0.0629121   -0.0562862
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0143896   -0.0177459   -0.0110333
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0206424   -0.0233524   -0.0179323
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                -0.0212643   -0.0244335   -0.0180952


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2853220   -0.3108085   -0.2598355
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428480   -0.1532568   -0.1324391
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0684794   -0.0774008   -0.0595580
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705478    0.0655933    0.0755023
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0840487   -0.1007413   -0.0673560
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0278645   -0.0482582   -0.0074707
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009676   -0.0102953    0.0083602
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0633737   -0.0703095   -0.0564379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034446   -0.0083108    0.0014217
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1077712   -0.1389671   -0.0765754
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0595335   -0.0687862   -0.0502807
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0627772   -0.0712590   -0.0542954
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492642   -0.0539207   -0.0446077
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1091173   -0.1161782   -0.1020564
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0957304   -0.1001246   -0.0913361
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748465   -0.0776904   -0.0720026
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0201573   -0.0242768   -0.0160377
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0517435   -0.0609232   -0.0425638
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0295389   -0.0332082   -0.0258696
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0374666   -0.0395050   -0.0354283
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187787   -0.0206287   -0.0169287


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0094387   -0.0523016    0.0334242
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0632079   -0.1189368   -0.0074790
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                  0.0073905   -0.0353596    0.0501406
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0509051   -0.0958742   -0.0059360
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.0844506   -0.2012794    0.0323781
0-3 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.1404977   -0.2170016   -0.0639938
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0188464   -0.0059276    0.0436203
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0352527   -0.0608009   -0.0097045
0-3 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0445524   -0.1212627    0.0321579
0-3 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0838308   -0.1466327   -0.0210288
0-3 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0232410   -0.0490762    0.0025942
0-3 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0752537   -0.0986705   -0.0518369
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0009140   -0.0109431    0.0091151
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0488577   -0.0593170   -0.0383983
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0590846   -0.0967848   -0.0213844
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0907160   -0.1398338   -0.0415982
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0016950   -0.0399005    0.0365105
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0085801   -0.0503516    0.0331914
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0072517   -0.0489214    0.0344180
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0079078   -0.0316626    0.0474782
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0171902   -0.0739172    0.1082977
3-6 months     ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0831868   -0.1500860   -0.0162876
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0626637   -0.1146322   -0.0106952
3-6 months     ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0615701   -0.1058814   -0.0172588
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0328760   -0.0551981   -0.0105539
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0256568   -0.0485708   -0.0027427
3-6 months     ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0694835   -0.1195841   -0.0193829
3-6 months     ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0847865   -0.1245272   -0.0450458
3-6 months     ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          2                    1                 -0.0397472   -0.0608268   -0.0186676
3-6 months     ki1135781-COHORTS          INDIA                          3+                   1                 -0.0520074   -0.0710533   -0.0329614
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0330223   -0.0435740   -0.0224705
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0430165   -0.0546384   -0.0313946
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0235602   -0.0425890   -0.0045313
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 -0.0274877   -0.0427005   -0.0122749
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.0524913   -0.1590884    0.0541057
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+                   1                 -0.0486190   -0.1447941    0.0475562
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0024619   -0.0188030    0.0138793
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0239539   -0.0409587   -0.0069490
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0015815   -0.0219949    0.0251579
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0175720   -0.0388342    0.0036901
6-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         2                    1                 -0.0295348   -0.0682630    0.0091934
6-12 months    ki1101329-Keneba           GAMBIA                         3+                   1                 -0.0323239   -0.0589098   -0.0057380
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0042885   -0.0271357    0.0185587
6-12 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0231884   -0.0448098   -0.0015670
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0195466   -0.0308980   -0.0081951
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 -0.0112878   -0.0226549    0.0000794
6-12 months    ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0285395   -0.0552723   -0.0018066
6-12 months    ki1135781-COHORTS          GUATEMALA                      3+                   1                 -0.0363458   -0.0550613   -0.0176302
6-12 months    ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          2                    1                 -0.0194394   -0.0333635   -0.0055153
6-12 months    ki1135781-COHORTS          INDIA                          3+                   1                 -0.0310215   -0.0434162   -0.0186268
6-12 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0260067   -0.0418134   -0.0102000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.0359504   -0.0495374   -0.0223634
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0209265   -0.0266161   -0.0152368
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0289335   -0.0356778   -0.0221892
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 -0.0119024   -0.0208220   -0.0029827
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                   1                 -0.0075235   -0.0171424    0.0020954
12-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0011800   -0.0189167    0.0165568
12-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                  0.0112587   -0.0021774    0.0246949
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 -0.0179064   -0.0321564   -0.0036563
12-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 -0.0097726   -0.0212850    0.0017399
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0195240   -0.0022873    0.0413352
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                  0.0085452   -0.0146628    0.0317532
12-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      2                    1                 -0.0097987   -0.0237783    0.0041810
12-24 months   ki1135781-COHORTS          GUATEMALA                      3+                   1                  0.0033745   -0.0065794    0.0133285
12-24 months   ki1135781-COHORTS          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          2                    1                 -0.0034523   -0.0096591    0.0027545
12-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 -0.0101165   -0.0156883   -0.0045446
12-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 -0.0103144   -0.0180787   -0.0025502
12-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 -0.0098701   -0.0164294   -0.0033108
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0062528   -0.0104192   -0.0020864
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 -0.0068747   -0.0113846   -0.0023649
