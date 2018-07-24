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

**Outcome Variable:** y_rate_lencm

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        parity    n_cell       n
-------------  --------------------------  -----------------------------  -------  -------  ------
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1             13      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2             18      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+             7      38
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     1            240     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     2            225     634
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     3+           169     634
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     1            206     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     2            211     574
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     3+           157     574
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     1            197     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     2            201     545
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     3+           147     545
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     1            168     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     2            174     458
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+           116     458
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     1           6375   20028
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     2           6945   20028
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     3+          6708   20028
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     1           4401   12573
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     2           4359   12573
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     3+          3813   12573
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     1           3364    9832
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     2           3495    9832
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     3+          2973    9832
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1           1531    4648
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2           1653    4648
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+          1464    4648
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1              2      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2              2      12
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   3+             8      12
12-24 months   ki1101329-Keneba            GAMBIA                         1             89     982
12-24 months   ki1101329-Keneba            GAMBIA                         2            100     982
12-24 months   ki1101329-Keneba            GAMBIA                         3+           793     982
6-12 months    ki1101329-Keneba            GAMBIA                         1            116    1067
6-12 months    ki1101329-Keneba            GAMBIA                         2            107    1067
6-12 months    ki1101329-Keneba            GAMBIA                         3+           844    1067
0-3 months     ki1101329-Keneba            GAMBIA                         1            130    1145
0-3 months     ki1101329-Keneba            GAMBIA                         2            113    1145
0-3 months     ki1101329-Keneba            GAMBIA                         3+           902    1145
3-6 months     ki1101329-Keneba            GAMBIA                         1            146    1130
3-6 months     ki1101329-Keneba            GAMBIA                         2            107    1130
3-6 months     ki1101329-Keneba            GAMBIA                         3+           877    1130
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          1            318     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          2            317     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          3+           337     972
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          1            306     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          2            304     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          3+           335     945
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          1            293     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          2            314     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          3+           330     937
3-6 months     ki1135781-COHORTS           GUATEMALA                      1            107     805
3-6 months     ki1135781-COHORTS           GUATEMALA                      2            114     805
3-6 months     ki1135781-COHORTS           GUATEMALA                      3+           584     805
6-12 months    ki1135781-COHORTS           GUATEMALA                      1            120     862
6-12 months    ki1135781-COHORTS           GUATEMALA                      2            125     862
6-12 months    ki1135781-COHORTS           GUATEMALA                      3+           617     862
12-24 months   ki1135781-COHORTS           GUATEMALA                      1            136     874
12-24 months   ki1135781-COHORTS           GUATEMALA                      2            116     874
12-24 months   ki1135781-COHORTS           GUATEMALA                      3+           622     874
0-3 months     ki1135781-COHORTS           GUATEMALA                      1             93     728
0-3 months     ki1135781-COHORTS           GUATEMALA                      2            111     728
0-3 months     ki1135781-COHORTS           GUATEMALA                      3+           524     728
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          1            313    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          2            280    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          3+           575    1168
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          1            299    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          2            261    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          3+           564    1124
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          1            327    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          2            253    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          3+           557    1137
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          1             62     330
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          2             71     330
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+           197     330
0-3 months     ki1135781-COHORTS           INDIA                          1            671    4021
0-3 months     ki1135781-COHORTS           INDIA                          2           1015    4021
0-3 months     ki1135781-COHORTS           INDIA                          3+          2335    4021
3-6 months     ki1135781-COHORTS           INDIA                          1            675    4069
3-6 months     ki1135781-COHORTS           INDIA                          2           1042    4069
3-6 months     ki1135781-COHORTS           INDIA                          3+          2352    4069
6-12 months    ki1135781-COHORTS           INDIA                          1            571    3362
6-12 months    ki1135781-COHORTS           INDIA                          2            844    3362
6-12 months    ki1135781-COHORTS           INDIA                          3+          1947    3362
12-24 months   ki1135781-COHORTS           INDIA                          1            473    2877
12-24 months   ki1135781-COHORTS           INDIA                          2            719    2877
12-24 months   ki1135781-COHORTS           INDIA                          3+          1685    2877
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1            105     536
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2            118     536
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+           313     536
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1             88     504
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2            111     504
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+           305     504
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         1              3       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         2              1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         3+             3       7
3-6 months     ki1113344-GMS-Nepal         NEPAL                          1            122     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          2            120     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          3+           229     471
6-12 months    ki1113344-GMS-Nepal         NEPAL                          1            122     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          2            125     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          3+           228     475
12-24 months   ki1113344-GMS-Nepal         NEPAL                          1             88     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          2             96     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          3+           183     367
6-12 months    ki1135781-COHORTS           PHILIPPINES                    1            505    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    2            514    2419
6-12 months    ki1135781-COHORTS           PHILIPPINES                    3+          1400    2419
12-24 months   ki1135781-COHORTS           PHILIPPINES                    1            468    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    2            492    2260
12-24 months   ki1135781-COHORTS           PHILIPPINES                    3+          1300    2260
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1            577    1641
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2            543    1641
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+           521    1641
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1            385    1064
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2            341    1064
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+           338    1064
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2              1       2
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+             1       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       1           3052    7863
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       2           2438    7863
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       3+          2373    7863
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       1           2211    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       2           1851    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       3+          1827    5889
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       1           1697    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       2           1422    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+          1452    4571
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1            104     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2             96     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+           103     303


The following strata were considered:

* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6f4d4d00-73e7-40a1-838a-fafdbe28bcc3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6f4d4d00-73e7-40a1-838a-fafdbe28bcc3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          1                    NA                3.6521288   3.5867730   3.7174847
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          2                    NA                3.6386508   3.5868776   3.6904241
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          3+                   NA                3.5568427   3.5134444   3.6002410
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     1                    NA                3.5066649   3.4413382   3.5719916
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     2                    NA                3.5095106   3.4448208   3.5742005
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     3+                   NA                3.4128621   3.3391597   3.4865644
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          1                    NA                3.8970942   3.8309397   3.9632487
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          2                    NA                3.8195820   3.7592940   3.8798701
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          3+                   NA                3.8233062   3.7724903   3.8741221
0-3 months     ki1101329-Keneba            GAMBIA                         1                    NA                3.3551092   3.2056109   3.5046076
0-3 months     ki1101329-Keneba            GAMBIA                         2                    NA                3.2179431   3.0360112   3.3998750
0-3 months     ki1101329-Keneba            GAMBIA                         3+                   NA                3.1061436   3.0506386   3.1616487
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       1                    NA                3.3757190   3.3420748   3.4093631
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       2                    NA                3.4242228   3.3876046   3.4608410
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       3+                   NA                3.3090739   3.2704183   3.3477295
0-3 months     ki1135781-COHORTS           GUATEMALA                      1                    NA                2.7247289   2.6151088   2.8343490
0-3 months     ki1135781-COHORTS           GUATEMALA                      2                    NA                2.6528983   2.5487508   2.7570459
0-3 months     ki1135781-COHORTS           GUATEMALA                      3+                   NA                2.5829251   2.5300574   2.6357927
0-3 months     ki1135781-COHORTS           INDIA                          1                    NA                3.6350450   3.5942998   3.6757902
0-3 months     ki1135781-COHORTS           INDIA                          2                    NA                3.5966624   3.5625659   3.6307589
0-3 months     ki1135781-COHORTS           INDIA                          3+                   NA                3.4777223   3.4528365   3.5026081
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     1                    NA                3.7270748   3.7108177   3.7433319
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     2                    NA                3.7585439   3.7431357   3.7739521
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     3+                   NA                3.6688155   3.6530925   3.6845385
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          1                    NA                2.0650463   1.9789638   2.1511288
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          2                    NA                1.9447541   1.8958040   1.9937043
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          3+                   NA                1.8727868   1.8115410   1.9340327
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     1                    NA                1.9755799   1.9201348   2.0310250
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     2                    NA                1.9669904   1.9087430   2.0252379
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     3+                   NA                1.9500715   1.8793189   2.0208240
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          1                    NA                1.9711339   1.9133273   2.0289406
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          2                    NA                1.8938740   1.8468601   1.9408879
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          3+                   NA                1.9380242   1.8863896   1.9896588
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7969345   1.7358532   1.8580158
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2                    NA                1.7801009   1.7142346   1.8459672
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.8125119   1.7528152   1.8722086
3-6 months     ki1101329-Keneba            GAMBIA                         1                    NA                2.1017984   1.9692632   2.2343335
3-6 months     ki1101329-Keneba            GAMBIA                         2                    NA                2.1491645   2.0075139   2.2908152
3-6 months     ki1101329-Keneba            GAMBIA                         3+                   NA                1.9282051   1.8800272   1.9763829
3-6 months     ki1113344-GMS-Nepal         NEPAL                          1                    NA                1.7948919   1.7197336   1.8700502
3-6 months     ki1113344-GMS-Nepal         NEPAL                          2                    NA                1.6881092   1.6113597   1.7648586
3-6 months     ki1113344-GMS-Nepal         NEPAL                          3+                   NA                1.6674869   1.6114873   1.7234864
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       1                    NA                2.0114914   1.9784537   2.0445290
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       2                    NA                1.9471512   1.9127152   1.9815872
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       3+                   NA                1.9582537   1.9220673   1.9944401
3-6 months     ki1135781-COHORTS           GUATEMALA                      1                    NA                1.9128079   1.8360698   1.9895461
3-6 months     ki1135781-COHORTS           GUATEMALA                      2                    NA                1.7734845   1.7001817   1.8467873
3-6 months     ki1135781-COHORTS           GUATEMALA                      3+                   NA                1.7317044   1.6948127   1.7685961
3-6 months     ki1135781-COHORTS           INDIA                          1                    NA                1.9483831   1.9128184   1.9839478
3-6 months     ki1135781-COHORTS           INDIA                          2                    NA                1.8659197   1.8377336   1.8941059
3-6 months     ki1135781-COHORTS           INDIA                          3+                   NA                1.8255586   1.8053113   1.8458060
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     1                    NA                1.9646310   1.9488000   1.9804620
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     2                    NA                1.9073811   1.8899266   1.9248355
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     3+                   NA                1.8835148   1.8645964   1.9024333
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          1                    NA                1.1503021   1.1225240   1.1780803
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          2                    NA                1.0866679   1.0611226   1.1122131
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          3+                   NA                1.0730651   1.0580659   1.0880644
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          1                    NA                1.1228046   0.9028098   1.3427993
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          2                    NA                0.9841956   0.8366081   1.1317831
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+                   NA                0.9904436   0.8971239   1.0837633
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     1                    NA                1.1898080   1.1617247   1.2178913
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     2                    NA                1.1869939   1.1575644   1.2164234
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     3+                   NA                1.1319938   1.1000324   1.1639552
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          1                    NA                1.3791334   1.3552284   1.4030383
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          2                    NA                1.3322870   1.3049631   1.3596109
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          3+                   NA                1.3592179   1.3348424   1.3835934
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    NA                1.2102802   1.1739040   1.2466564
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2                    NA                1.2127656   1.1712748   1.2542564
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+                   NA                1.1654414   1.1309778   1.1999050
6-12 months    ki1101329-Keneba            GAMBIA                         1                    NA                1.2448890   1.1881994   1.3015787
6-12 months    ki1101329-Keneba            GAMBIA                         2                    NA                1.1876589   1.1177813   1.2575365
6-12 months    ki1101329-Keneba            GAMBIA                         3+                   NA                1.1668299   1.1445553   1.1891045
6-12 months    ki1113344-GMS-Nepal         NEPAL                          1                    NA                1.2007902   1.1586920   1.2428884
6-12 months    ki1113344-GMS-Nepal         NEPAL                          2                    NA                1.1912291   1.1577978   1.2246603
6-12 months    ki1113344-GMS-Nepal         NEPAL                          3+                   NA                1.1380441   1.1097862   1.1663020
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       1                    NA                1.2217868   1.2029588   1.2406147
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       2                    NA                1.1760769   1.1572429   1.1949109
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+                   NA                1.1919715   1.1731843   1.2107587
6-12 months    ki1135781-COHORTS           GUATEMALA                      1                    NA                1.0909660   1.0502244   1.1317076
6-12 months    ki1135781-COHORTS           GUATEMALA                      2                    NA                1.0280065   0.9774722   1.0785408
6-12 months    ki1135781-COHORTS           GUATEMALA                      3+                   NA                1.0025510   0.9825898   1.0225122
6-12 months    ki1135781-COHORTS           INDIA                          1                    NA                1.1465751   1.1205368   1.1726135
6-12 months    ki1135781-COHORTS           INDIA                          2                    NA                1.1008450   1.0802646   1.1214254
6-12 months    ki1135781-COHORTS           INDIA                          3+                   NA                1.0587227   1.0450173   1.0724280
6-12 months    ki1135781-COHORTS           PHILIPPINES                    1                    NA                1.1362228   1.1080191   1.1644266
6-12 months    ki1135781-COHORTS           PHILIPPINES                    2                    NA                1.0748219   1.0501978   1.0994460
6-12 months    ki1135781-COHORTS           PHILIPPINES                    3+                   NA                1.0399311   1.0240441   1.0558181
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1                    NA                1.2626420   1.2117649   1.3135191
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2                    NA                1.1642578   1.1136812   1.2148343
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+                   NA                1.1776913   1.1488929   1.2064897
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     1                    NA                1.1426695   1.1318919   1.1534470
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     2                    NA                1.0994421   1.0898926   1.1089916
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     3+                   NA                1.0753781   1.0635891   1.0871671
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1                    NA                0.8592851   0.7918256   0.9267447
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2                    NA                0.8838819   0.8372341   0.9305297
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+                   NA                0.8054576   0.7327362   0.8781791
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     1                    NA                0.8751094   0.8540896   0.8961292
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     2                    NA                0.8446980   0.8259518   0.8634442
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+                   NA                0.8514047   0.8290316   0.8737777
12-24 months   ki1101329-Keneba            GAMBIA                         1                    NA                0.8199004   0.7865646   0.8532361
12-24 months   ki1101329-Keneba            GAMBIA                         2                    NA                0.8291225   0.7943158   0.8639292
12-24 months   ki1101329-Keneba            GAMBIA                         3+                   NA                0.8497460   0.8366200   0.8628720
12-24 months   ki1113344-GMS-Nepal         NEPAL                          1                    NA                0.8691832   0.8411959   0.8971705
12-24 months   ki1113344-GMS-Nepal         NEPAL                          2                    NA                0.8087935   0.7743487   0.8432382
12-24 months   ki1113344-GMS-Nepal         NEPAL                          3+                   NA                0.8380952   0.8173350   0.8588553
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1                    NA                0.6888616   0.6431040   0.7346193
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2                    NA                0.7395301   0.7002201   0.7788401
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+                   NA                0.7035633   0.6558034   0.7513231
12-24 months   ki1135781-COHORTS           GUATEMALA                      1                    NA                0.7820905   0.7562044   0.8079766
12-24 months   ki1135781-COHORTS           GUATEMALA                      2                    NA                0.7540572   0.7246614   0.7834529
12-24 months   ki1135781-COHORTS           GUATEMALA                      3+                   NA                0.7834933   0.7705399   0.7964466
12-24 months   ki1135781-COHORTS           INDIA                          1                    NA                0.8473271   0.8320955   0.8625587
12-24 months   ki1135781-COHORTS           INDIA                          2                    NA                0.8362703   0.8244247   0.8481159
12-24 months   ki1135781-COHORTS           INDIA                          3+                   NA                0.7950630   0.7869160   0.8032100
12-24 months   ki1135781-COHORTS           PHILIPPINES                    1                    NA                0.7473839   0.7315092   0.7632587
12-24 months   ki1135781-COHORTS           PHILIPPINES                    2                    NA                0.7041046   0.6883409   0.7198684
12-24 months   ki1135781-COHORTS           PHILIPPINES                    3+                   NA                0.6931229   0.6835247   0.7027211
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1                    NA                0.8034942   0.7600332   0.8469551
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2                    NA                0.8048322   0.7750017   0.8346626
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+                   NA                0.8529083   0.8352270   0.8705896
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1                    NA                0.8094552   0.7998067   0.8191037
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2                    NA                0.7941819   0.7865586   0.8018052
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+                   NA                0.7862839   0.7774957   0.7950721


### Parameter: E(Y)


diffcat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                3.8451317   3.8110517   3.8792117
0-3 months     ki1101329-Keneba            GAMBIA                         NA                   NA                3.1454440   3.0949962   3.1958917
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                3.3706450   3.3497515   3.3915385
0-3 months     ki1135781-COHORTS           GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS           INDIA                          NA                   NA                3.5339988   3.5157374   3.5522602
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                3.7184743   3.7081281   3.7288205
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                1.9344576   1.9041735   1.9647417
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7963100   1.7603114   1.8323086
3-6 months     ki1101329-Keneba            GAMBIA                         NA                   NA                1.9715566   1.9280386   2.0150747
3-6 months     ki1113344-GMS-Nepal         NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                1.9747519   1.9548124   1.9946914
3-6 months     ki1135781-COHORTS           GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     ki1135781-COHORTS           INDIA                          NA                   NA                1.8562696   1.8412447   1.8712944
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                1.9201827   1.9097195   1.9306459
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                1.0139672   0.9374673   1.0904670
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          NA                   NA                1.3570033   1.3423984   1.3716081
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1968328   1.1751167   1.2185490
6-12 months    ki1101329-Keneba            GAMBIA                         NA                   NA                1.1774049   1.1574133   1.1973966
6-12 months    ki1113344-GMS-Nepal         NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                1.1980958   1.1871818   1.2090098
6-12 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                1.0185507   1.0014002   1.0357013
6-12 months    ki1135781-COHORTS           INDIA                          NA                   NA                1.0842179   1.0737055   1.0947303
6-12 months    ki1135781-COHORTS           PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                1.1913754   1.1686771   1.2140736
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                1.1069558   1.1002095   1.1137021
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.8610206   0.8251715   0.8968698
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1101329-Keneba            GAMBIA                         NA                   NA                0.8449409   0.8333460   0.8565357
12-24 months   ki1113344-GMS-Nepal         NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.7099126   0.6840087   0.7358165
12-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7793681   0.7685580   0.7901783
12-24 months   ki1135781-COHORTS           INDIA                          NA                   NA                0.8139538   0.8077496   0.8201580
12-24 months   ki1135781-COHORTS           PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.8336923   0.8188747   0.8485098
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.7967251   0.7914074   0.8020427


### Parameter: ATE


diffcat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          2                    1                 -0.0134780   -0.1036582    0.0767023
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          3+                   1                 -0.0952861   -0.1864274   -0.0041448
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     2                    1                  0.0028457   -0.0890910    0.0947824
0-3 months     ki1017093b-PROVIDE          BANGLADESH                     3+                   1                 -0.0938029   -0.1922895    0.0046838
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          2                    1                 -0.0775122   -0.1670167    0.0119923
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          3+                   1                 -0.0737880   -0.1572067    0.0096306
0-3 months     ki1101329-Keneba            GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba            GAMBIA                         2                    1                 -0.1371661   -0.3726422    0.0983100
0-3 months     ki1101329-Keneba            GAMBIA                         3+                   1                 -0.2489656   -0.4084352   -0.0894959
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       2                    1                  0.0485038   -0.0012236    0.0982313
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       3+                   1                 -0.0666451   -0.1178913   -0.0153988
0-3 months     ki1135781-COHORTS           GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS           GUATEMALA                      2                    1                 -0.0718306   -0.2230366    0.0793755
0-3 months     ki1135781-COHORTS           GUATEMALA                      3+                   1                 -0.1418038   -0.2635065   -0.0201012
0-3 months     ki1135781-COHORTS           INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS           INDIA                          2                    1                 -0.0383826   -0.0915121    0.0147469
0-3 months     ki1135781-COHORTS           INDIA                          3+                   1                 -0.1573227   -0.2050665   -0.1095788
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     2                    1                  0.0314691    0.0110156    0.0519226
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     3+                   1                 -0.0582593   -0.0796011   -0.0369176
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          2                    1                 -0.1202921   -0.2073000   -0.0332843
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          3+                   1                 -0.1922594   -0.3082162   -0.0763027
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     2                    1                 -0.0085894   -0.0890066    0.0718277
3-6 months     ki1017093b-PROVIDE          BANGLADESH                     3+                   1                 -0.0255084   -0.1153977    0.0643808
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          2                    1                 -0.0772599   -0.1517711   -0.0027487
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          3+                   1                 -0.0331098   -0.1106194    0.0443998
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0168336   -0.1066629    0.0729956
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+                   1                  0.0155774   -0.0698312    0.1009859
3-6 months     ki1101329-Keneba            GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba            GAMBIA                         2                    1                  0.0473662   -0.1466196    0.2413519
3-6 months     ki1101329-Keneba            GAMBIA                         3+                   1                 -0.1735933   -0.3146134   -0.0325732
3-6 months     ki1113344-GMS-Nepal         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal         NEPAL                          2                    1                 -0.1067828   -0.2142037    0.0006381
3-6 months     ki1113344-GMS-Nepal         NEPAL                          3+                   1                 -0.1274051   -0.2211319   -0.0336782
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       2                    1                 -0.0643402   -0.1120615   -0.0166189
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       3+                   1                 -0.0532377   -0.1022371   -0.0042383
3-6 months     ki1135781-COHORTS           GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS           GUATEMALA                      2                    1                 -0.1393234   -0.2454462   -0.0332006
3-6 months     ki1135781-COHORTS           GUATEMALA                      3+                   1                 -0.1811035   -0.2662489   -0.0959581
3-6 months     ki1135781-COHORTS           INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS           INDIA                          2                    1                 -0.0824634   -0.1278430   -0.0370838
3-6 months     ki1135781-COHORTS           INDIA                          3+                   1                 -0.1228245   -0.1637488   -0.0819001
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     2                    1                 -0.0572500   -0.0799370   -0.0345630
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     3+                   1                 -0.0811162   -0.1059456   -0.0562868
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          2                    1                 -0.0636343   -0.1087902   -0.0184783
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          3+                   1                 -0.0772370   -0.1098613   -0.0446126
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          2                    1                 -0.1386090   -0.4035236    0.1263057
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          3+                   1                 -0.1323610   -0.3713301    0.1066082
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     2                    1                 -0.0028141   -0.0434930    0.0378648
6-12 months    ki1017093b-PROVIDE          BANGLADESH                     3+                   1                 -0.0578142   -0.1003607   -0.0152677
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          2                    1                 -0.0468463   -0.0831512   -0.0105415
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          3+                   1                 -0.0199155   -0.0540566    0.0142256
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0024854   -0.0526935    0.0576643
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3+                   1                 -0.0448388   -0.0949483    0.0052708
6-12 months    ki1101329-Keneba            GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba            GAMBIA                         2                    1                 -0.0572301   -0.1472112    0.0327509
6-12 months    ki1101329-Keneba            GAMBIA                         3+                   1                 -0.0780591   -0.1389679   -0.0171504
6-12 months    ki1113344-GMS-Nepal         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal         NEPAL                          2                    1                 -0.0095611   -0.0633189    0.0441967
6-12 months    ki1113344-GMS-Nepal         NEPAL                          3+                   1                 -0.0627461   -0.1134488   -0.0120434
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       2                    1                 -0.0457099   -0.0723409   -0.0190789
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       3+                   1                 -0.0298153   -0.0564132   -0.0032173
6-12 months    ki1135781-COHORTS           GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           GUATEMALA                      2                    1                 -0.0629595   -0.1278717    0.0019527
6-12 months    ki1135781-COHORTS           GUATEMALA                      3+                   1                 -0.0884150   -0.1337838   -0.0430461
6-12 months    ki1135781-COHORTS           INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           INDIA                          2                    1                 -0.0457301   -0.0789197   -0.0125405
6-12 months    ki1135781-COHORTS           INDIA                          3+                   1                 -0.0878524   -0.1172775   -0.0584274
6-12 months    ki1135781-COHORTS           PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS           PHILIPPINES                    2                    1                 -0.0614010   -0.0988416   -0.0239603
6-12 months    ki1135781-COHORTS           PHILIPPINES                    3+                   1                 -0.0962918   -0.1286623   -0.0639212
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2                    1                 -0.0983842   -0.1701231   -0.0266453
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3+                   1                 -0.0849507   -0.1434129   -0.0264885
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     2                    1                 -0.0432274   -0.0566583   -0.0297965
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     3+                   1                 -0.0672914   -0.0830384   -0.0515444
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     2                    1                  0.0245968   -0.0574204    0.1066139
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     3+                   1                 -0.0538275   -0.1530202    0.0453652
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     2                    1                 -0.0304114   -0.0585761   -0.0022466
12-24 months   ki1017093b-PROVIDE          BANGLADESH                     3+                   1                 -0.0237047   -0.0544030    0.0069936
12-24 months   ki1101329-Keneba            GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba            GAMBIA                         2                    1                  0.0092221   -0.0389731    0.0574174
12-24 months   ki1101329-Keneba            GAMBIA                         3+                   1                  0.0298456   -0.0059812    0.0656725
12-24 months   ki1113344-GMS-Nepal         NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal         NEPAL                          2                    1                 -0.0603897   -0.1047714   -0.0160081
12-24 months   ki1113344-GMS-Nepal         NEPAL                          3+                   1                 -0.0310880   -0.0659345    0.0037584
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2                    1                  0.0506684   -0.0096561    0.1109929
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3+                   1                  0.0147016   -0.0514404    0.0808437
12-24 months   ki1135781-COHORTS           GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           GUATEMALA                      2                    1                 -0.0280333   -0.0672022    0.0111355
12-24 months   ki1135781-COHORTS           GUATEMALA                      3+                   1                  0.0014028   -0.0275433    0.0303489
12-24 months   ki1135781-COHORTS           INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           INDIA                          2                    1                 -0.0110569   -0.0303525    0.0082387
12-24 months   ki1135781-COHORTS           INDIA                          3+                   1                 -0.0522642   -0.0695377   -0.0349906
12-24 months   ki1135781-COHORTS           PHILIPPINES                    1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS           PHILIPPINES                    2                    1                 -0.0432793   -0.0656512   -0.0209074
12-24 months   ki1135781-COHORTS           PHILIPPINES                    3+                   1                 -0.0542610   -0.0728119   -0.0357102
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2                    1                  0.0013380   -0.0513755    0.0540515
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3+                   1                  0.0494142    0.0024942    0.0963341
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2                    1                 -0.0152733   -0.0269887   -0.0035579
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3+                   1                 -0.0231713   -0.0358228   -0.0105197
