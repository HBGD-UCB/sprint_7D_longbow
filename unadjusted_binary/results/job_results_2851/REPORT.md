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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        parity    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------  ---------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0       44     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                0       47     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          2                1        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               0       85     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+               1        2     187
Birth       ki1101329-Keneba           GAMBIA                         1                0      153    1407
Birth       ki1101329-Keneba           GAMBIA                         1                1        3    1407
Birth       ki1101329-Keneba           GAMBIA                         2                0      144    1407
Birth       ki1101329-Keneba           GAMBIA                         2                1        2    1407
Birth       ki1101329-Keneba           GAMBIA                         3+               0     1084    1407
Birth       ki1101329-Keneba           GAMBIA                         3+               1       21    1407
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0     5777   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      195   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                0     4022   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                1      103   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     3589   13829
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      143   13829
Birth       ki1135781-COHORTS          GUATEMALA                      1                0      109     852
Birth       ki1135781-COHORTS          GUATEMALA                      1                1        3     852
Birth       ki1135781-COHORTS          GUATEMALA                      2                0      134     852
Birth       ki1135781-COHORTS          GUATEMALA                      2                1        3     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+               0      598     852
Birth       ki1135781-COHORTS          GUATEMALA                      3+               1        5     852
Birth       ki1135781-COHORTS          INDIA                          1                0      674    4122
Birth       ki1135781-COHORTS          INDIA                          1                1       22    4122
Birth       ki1135781-COHORTS          INDIA                          2                0     1016    4122
Birth       ki1135781-COHORTS          INDIA                          2                1       21    4122
Birth       ki1135781-COHORTS          INDIA                          3+               0     2319    4122
Birth       ki1135781-COHORTS          INDIA                          3+               1       70    4122
Birth       ki1135781-COHORTS          PHILIPPINES                    1                0      661    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1                1       14    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2                0      677    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    2                1       10    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+               0     1666    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    3+               1       22    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    10744   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     1798   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                0    12254   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                1     1166   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               0    12110   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+               1     1116   39188
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      360    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1       32    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                0      279    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          2                1       25    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               0      569    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+               1       71    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0       64     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1        8     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                0       78     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                1        6     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               0      180     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+               1       37     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      206     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                0      207     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                1        5     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               0      156     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+               1        4     583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      674    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        6    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0      649    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        8    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0      654    1995
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        4    1995
6 months    ki1101329-Keneba           GAMBIA                         1                0      190    1623
6 months    ki1101329-Keneba           GAMBIA                         1                1        4    1623
6 months    ki1101329-Keneba           GAMBIA                         2                0      159    1623
6 months    ki1101329-Keneba           GAMBIA                         2                1        5    1623
6 months    ki1101329-Keneba           GAMBIA                         3+               0     1218    1623
6 months    ki1101329-Keneba           GAMBIA                         3+               1       47    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      294    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       12    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2                0      286    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2                1       12    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               0      506    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+               1       16    1126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     3160    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1      142    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                0     2430    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                1       92    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               0     2358    8294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+               1      112    8294
6 months    ki1135781-COHORTS          GUATEMALA                      1                0      116     961
6 months    ki1135781-COHORTS          GUATEMALA                      1                1       16     961
6 months    ki1135781-COHORTS          GUATEMALA                      2                0      122     961
6 months    ki1135781-COHORTS          GUATEMALA                      2                1       17     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+               0      599     961
6 months    ki1135781-COHORTS          GUATEMALA                      3+               1       91     961
6 months    ki1135781-COHORTS          INDIA                          1                0      713    4291
6 months    ki1135781-COHORTS          INDIA                          1                1       27    4291
6 months    ki1135781-COHORTS          INDIA                          2                0     1056    4291
6 months    ki1135781-COHORTS          INDIA                          2                1       40    4291
6 months    ki1135781-COHORTS          INDIA                          3+               0     2314    4291
6 months    ki1135781-COHORTS          INDIA                          3+               1      141    4291
6 months    ki1135781-COHORTS          PHILIPPINES                    1                0      553    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1                1       21    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2                0      584    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    2                1       22    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+               0     1439    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    3+               1       89    2708
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    11777   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      968   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                0    10860   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                1      530   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               0     8889   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+               1      537   33561
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      193     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                0      195     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                1       18     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               0      140     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+               1       13     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+               1        1       6
24 months   ki1101329-Keneba           GAMBIA                         1                0      129    1376
24 months   ki1101329-Keneba           GAMBIA                         1                1        8    1376
24 months   ki1101329-Keneba           GAMBIA                         2                0      135    1376
24 months   ki1101329-Keneba           GAMBIA                         2                1        4    1376
24 months   ki1101329-Keneba           GAMBIA                         3+               0      997    1376
24 months   ki1101329-Keneba           GAMBIA                         3+               1      103    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      244     998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       28     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2                0      232     998
24 months   ki1113344-GMS-Nepal        NEPAL                          2                1       28     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               0      414     998
24 months   ki1113344-GMS-Nepal        NEPAL                          3+               1       52     998
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      126     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       51     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                0       97     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                1       37     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               0      102     456
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+               1       43     456
24 months   ki1135781-COHORTS          GUATEMALA                      1                0      102    1067
24 months   ki1135781-COHORTS          GUATEMALA                      1                1       65    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2                0       87    1067
24 months   ki1135781-COHORTS          GUATEMALA                      2                1       64    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+               0      420    1067
24 months   ki1135781-COHORTS          GUATEMALA                      3+               1      329    1067
24 months   ki1135781-COHORTS          INDIA                          1                0      476    3383
24 months   ki1135781-COHORTS          INDIA                          1                1       89    3383
24 months   ki1135781-COHORTS          INDIA                          2                0      715    3383
24 months   ki1135781-COHORTS          INDIA                          2                1      135    3383
24 months   ki1135781-COHORTS          INDIA                          3+               0     1474    3383
24 months   ki1135781-COHORTS          INDIA                          3+               1      494    3383
24 months   ki1135781-COHORTS          PHILIPPINES                    1                0      431    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1                1       93    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2                0      403    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    2                1      141    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               0      922    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    3+               1      455    2445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     5355   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      953   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                0     5016   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                1      819   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               0     4159   17210
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+               1      908   17210


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/928e5355-ac2b-4025-b673-9cdb706df873/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/928e5355-ac2b-4025-b673-9cdb706df873/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/928e5355-ac2b-4025-b673-9cdb706df873/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/928e5355-ac2b-4025-b673-9cdb706df873/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0326524   0.0281447   0.0371601
Birth       ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.0249697   0.0202079   0.0297315
Birth       ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.0383173   0.0321583   0.0444762
Birth       ki1135781-COHORTS          INDIA         1                    NA                0.0316092   0.0186096   0.0446087
Birth       ki1135781-COHORTS          INDIA         2                    NA                0.0202507   0.0116766   0.0288248
Birth       ki1135781-COHORTS          INDIA         3+                   NA                0.0293010   0.0225374   0.0360645
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0207407   0.0099878   0.0314937
Birth       ki1135781-COHORTS          PHILIPPINES   2                    NA                0.0145560   0.0055987   0.0235134
Birth       ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.0130332   0.0076218   0.0184446
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1433583   0.1341979   0.1525188
Birth       kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.0868852   0.0793679   0.0944026
Birth       kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.0843793   0.0777504   0.0910081
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.0816327   0.0684211   0.0948442
6 months    ki1000304b-SAS-CompFeed    INDIA         2                    NA                0.0822368   0.0588631   0.1056106
6 months    ki1000304b-SAS-CompFeed    INDIA         3+                   NA                0.1109375   0.0771916   0.1446834
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.1111111   0.0384223   0.1837999
6 months    ki1000304b-SAS-FoodSuppl   INDIA         2                    NA                0.0714286   0.0162799   0.1265772
6 months    ki1000304b-SAS-FoodSuppl   INDIA         3+                   NA                0.1705069   0.1204022   0.2206116
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                0.0392157   0.0084312   0.0700001
6 months    ki1113344-GMS-Nepal        NEPAL         2                    NA                0.0402685   0.0086749   0.0718620
6 months    ki1113344-GMS-Nepal        NEPAL         3+                   NA                0.0306513   0.0097209   0.0515818
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0430042   0.0360844   0.0499241
6 months    ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.0364790   0.0291616   0.0437963
6 months    ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.0453441   0.0371385   0.0535497
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                0.1212121   0.0655061   0.1769182
6 months    ki1135781-COHORTS          GUATEMALA     2                    NA                0.1223022   0.0678072   0.1767971
6 months    ki1135781-COHORTS          GUATEMALA     3+                   NA                0.1318841   0.1066240   0.1571441
6 months    ki1135781-COHORTS          INDIA         1                    NA                0.0364865   0.0229758   0.0499972
6 months    ki1135781-COHORTS          INDIA         2                    NA                0.0364964   0.0253932   0.0475995
6 months    ki1135781-COHORTS          INDIA         3+                   NA                0.0574338   0.0482290   0.0666386
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                0.0365854   0.0212239   0.0519468
6 months    ki1135781-COHORTS          PHILIPPINES   2                    NA                0.0363036   0.0214087   0.0511985
6 months    ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.0582461   0.0465007   0.0699915
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.0759514   0.0689037   0.0829990
6 months    kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.0465320   0.0410978   0.0519663
6 months    kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.0569701   0.0498889   0.0640512
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.0853081   0.0475842   0.1230319
24 months   ki1017093b-PROVIDE         BANGLADESH    2                    NA                0.0845070   0.0471211   0.1218930
24 months   ki1017093b-PROVIDE         BANGLADESH    3+                   NA                0.0849673   0.0407469   0.1291878
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1029412   0.0518178   0.1540645
24 months   ki1113344-GMS-Nepal        NEPAL         2                    NA                0.1076923   0.0543512   0.1610334
24 months   ki1113344-GMS-Nepal        NEPAL         3+                   NA                0.1115880   0.0711191   0.1520569
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2881356   0.2213419   0.3549293
24 months   ki1126311-ZVITAMBO         ZIMBABWE      2                    NA                0.2761194   0.2003394   0.3518994
24 months   ki1126311-ZVITAMBO         ZIMBABWE      3+                   NA                0.2965517   0.2221287   0.3709747
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                0.3892216   0.3152382   0.4632049
24 months   ki1135781-COHORTS          GUATEMALA     2                    NA                0.4238411   0.3449849   0.5026973
24 months   ki1135781-COHORTS          GUATEMALA     3+                   NA                0.4392523   0.4036932   0.4748115
24 months   ki1135781-COHORTS          INDIA         1                    NA                0.1575221   0.1274795   0.1875648
24 months   ki1135781-COHORTS          INDIA         2                    NA                0.1588235   0.1342479   0.1833991
24 months   ki1135781-COHORTS          INDIA         3+                   NA                0.2510163   0.2318566   0.2701759
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1774809   0.1447604   0.2102014
24 months   ki1135781-COHORTS          PHILIPPINES   2                    NA                0.2591912   0.2223613   0.2960211
24 months   ki1135781-COHORTS          PHILIPPINES   3+                   NA                0.3304285   0.3055796   0.3552774
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                0.1510780   0.1368666   0.1652894
24 months   kiGH5241-JiVitA-3          BANGLADESH    2                    NA                0.1403599   0.1267311   0.1539887
24 months   kiGH5241-JiVitA-3          BANGLADESH    3+                   NA                0.1791987   0.1642416   0.1941558


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318895   0.0289609   0.0348181
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0274139   0.0224285   0.0323992
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1041135   0.0994385   0.1087885
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1367292   0.1018167   0.1716417
6 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0417169   0.0374137   0.0460201
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1290323   0.1078261   0.1502384
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0484735   0.0420469   0.0549002
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606359   0.0567797   0.0644920
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2872807   0.2457035   0.3288579
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4292409   0.3995279   0.4589539
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2122377   0.1984570   0.2260183
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1557234   0.1469876   0.1644592


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 0.7647130   0.6043028   0.9677035
Birth       ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 1.1734905   0.9494248   1.4504361
Birth       ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         2                    1                 0.6406592   0.3550449   1.1560348
Birth       ki1135781-COHORTS          INDIA         3+                   1                 0.9269759   0.5784298   1.4855465
Birth       ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   2                    1                 0.7018091   0.3138795   1.5691883
Birth       ki1135781-COHORTS          PHILIPPINES   3+                   1                 0.6283852   0.3234162   1.2209285
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    2                    1                 0.6060705   0.5454635   0.6734116
Birth       kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 0.5885899   0.5314468   0.6518772
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         2                    1                 1.0074013   0.6792562   1.4940715
6 months    ki1000304b-SAS-CompFeed    INDIA         3+                   1                 1.3589844   0.9192262   2.0091230
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         2                    1                 0.6428571   0.2336797   1.7685119
6 months    ki1000304b-SAS-FoodSuppl   INDIA         3+                   1                 1.5345622   0.7490708   3.1437363
6 months    ki1113344-GMS-Nepal        NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL         2                    1                 1.0268456   0.3384542   3.1153756
6 months    ki1113344-GMS-Nepal        NEPAL         3+                   1                 0.7816092   0.2761410   2.2123227
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 0.8482648   0.6559191   1.0970153
6 months    ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 1.0544107   0.8276422   1.3433123
6 months    ki1135781-COHORTS          GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     2                    1                 1.0089928   0.5319730   1.9137559
6 months    ki1135781-COHORTS          GUATEMALA     3+                   1                 1.0880435   0.6613262   1.7900979
6 months    ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         2                    1                 1.0002703   0.6194218   1.6152817
6 months    ki1135781-COHORTS          INDIA         3+                   1                 1.5741118   1.0514846   2.3565043
6 months    ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   2                    1                 0.9922992   0.5516806   1.7848331
6 months    ki1135781-COHORTS          PHILIPPINES   3+                   1                 1.5920593   0.9992361   2.5365907
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    2                    1                 0.6126559   0.5285125   0.7101956
6 months    kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 0.7500865   0.6413165   0.8773043
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    2                    1                 0.9906103   0.5299638   1.8516525
24 months   ki1017093b-PROVIDE         BANGLADESH    3+                   1                 0.9960058   0.5031125   1.9717807
24 months   ki1113344-GMS-Nepal        NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         2                    1                 1.0461538   0.5187748   2.1096587
24 months   ki1113344-GMS-Nepal        NEPAL         3+                   1                 1.0839975   0.5860828   2.0049225
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      2                    1                 0.9582968   0.6690848   1.3725206
24 months   ki1126311-ZVITAMBO         ZIMBABWE      3+                   1                 1.0292089   0.7313588   1.4483602
24 months   ki1135781-COHORTS          GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     2                    1                 1.0889455   0.8346268   1.4207576
24 months   ki1135781-COHORTS          GUATEMALA     3+                   1                 1.1285406   0.9178918   1.3875317
24 months   ki1135781-COHORTS          INDIA         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         2                    1                 1.0082617   0.7887012   1.2889440
24 months   ki1135781-COHORTS          INDIA         3+                   1                 1.5935302   1.2976112   1.9569333
24 months   ki1135781-COHORTS          PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   2                    1                 1.4603890   1.1571231   1.8431367
24 months   ki1135781-COHORTS          PHILIPPINES   3+                   1                 1.8617690   1.5256469   2.2719437
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    2                    1                 0.9290559   0.8163200   1.0573608
24 months   kiGH5241-JiVitA-3          BANGLADESH    3+                   1                 1.1861339   1.0467245   1.3441108


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0007629   -0.0041313    0.0026055
Birth       ki1135781-COHORTS          INDIA         1                    NA                -0.0041953   -0.0158904    0.0074997
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                -0.0056588   -0.0147781    0.0034606
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.0392448   -0.0463739   -0.0321157
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                 0.0141757   -0.0112232    0.0395746
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                 0.0256181   -0.0411856    0.0924218
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                -0.0036917   -0.0295140    0.0221306
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0012873   -0.0066047    0.0040301
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                 0.0078201   -0.0441451    0.0597853
6 months    ki1135781-COHORTS          INDIA         1                    NA                 0.0119871   -0.0006968    0.0246710
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.0121591   -0.0020444    0.0263626
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.0153155   -0.0205101   -0.0101209
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                -0.0003860   -0.0303952    0.0296231
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                 0.0052753   -0.0386949    0.0492454
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0008549   -0.0530718    0.0513620
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                 0.0400193   -0.0281205    0.1081591
24 months   ki1135781-COHORTS          INDIA         1                    NA                 0.0547155    0.0265910    0.0828401
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.1043187    0.0738254    0.1348119
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                 0.0046454   -0.0061701    0.0154609


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0239223   -0.1351665    0.0764202
Birth       ki1135781-COHORTS          INDIA         1                    NA                -0.1530363   -0.6680434    0.2029627
Birth       ki1135781-COHORTS          PHILIPPINES   1                    NA                -0.3752013   -1.1203069    0.1080637
Birth       kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.3769426   -0.4463444   -0.3108710
6 months    ki1000304b-SAS-CompFeed    INDIA         1                    NA                 0.1479592   -0.1305950    0.3578836
6 months    ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                 0.1873638   -0.4793715    0.5536094
6 months    ki1113344-GMS-Nepal        NEPAL         1                    NA                -0.1039216   -1.1301455    0.4279063
6 months    ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0308589   -0.1664975    0.0890079
6 months    ki1135781-COHORTS          GUATEMALA     1                    NA                 0.0606061   -0.4420966    0.3880708
6 months    ki1135781-COHORTS          INDIA         1                    NA                 0.2472908   -0.0629283    0.4669715
6 months    ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.2494457   -0.1025563    0.4890676
6 months    kiGH5241-JiVitA-3          BANGLADESH    1                    NA                -0.2525815   -0.3394893   -0.1713124
24 months   ki1017093b-PROVIDE         BANGLADESH    1                    NA                -0.0045459   -0.4280475    0.2933621
24 months   ki1113344-GMS-Nepal        NEPAL         1                    NA                 0.0487473   -0.4579228    0.3793349
24 months   ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                -0.0029758   -0.2022498    0.1632683
24 months   ki1135781-COHORTS          GUATEMALA     1                    NA                 0.0932327   -0.0803121    0.2388988
24 months   ki1135781-COHORTS          INDIA         1                    NA                 0.2578031    0.1134822    0.3786293
24 months   ki1135781-COHORTS          PHILIPPINES   1                    NA                 0.3701875    0.2536575    0.4685230
24 months   kiGH5241-JiVitA-3          BANGLADESH    1                    NA                 0.0298312   -0.0422726    0.0969469
