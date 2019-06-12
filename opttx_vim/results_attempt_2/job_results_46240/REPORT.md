---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      Y: ['haz']
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* vagbrth
* single
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             18      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          2             11      61
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+            32      61
Birth       ki1101329-Keneba           GAMBIA                         1            142    1292
Birth       ki1101329-Keneba           GAMBIA                         2            133    1292
Birth       ki1101329-Keneba           GAMBIA                         3+          1017    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           5561   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2           3882   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+          3472   12915
Birth       ki1135781-COHORTS          GUATEMALA                      1             50     375
Birth       ki1135781-COHORTS          GUATEMALA                      2             65     375
Birth       ki1135781-COHORTS          GUATEMALA                      3+           260     375
Birth       ki1135781-COHORTS          INDIA                          1            641    3855
Birth       ki1135781-COHORTS          INDIA                          2            982    3855
Birth       ki1135781-COHORTS          INDIA                          3+          2232    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1            640    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2            657    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+          1602    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           2255    7676
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2           2730    7676
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+          2691    7676
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            124     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          2             90     411
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+           197     411
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             18      94
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2             18      94
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+            58      94
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            211     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2            212     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+           159     582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            679    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2            657    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+           658    1994
6 months    ki1101329-Keneba           GAMBIA                         1            195    1623
6 months    ki1101329-Keneba           GAMBIA                         2            164    1623
6 months    ki1101329-Keneba           GAMBIA                         3+          1264    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1            153     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2            149     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+           261     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           3285    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2           2514    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+          2464    8263
6 months    ki1135781-COHORTS          GUATEMALA                      1             69     465
6 months    ki1135781-COHORTS          GUATEMALA                      2             77     465
6 months    ki1135781-COHORTS          GUATEMALA                      3+           319     465
6 months    ki1135781-COHORTS          INDIA                          1            741    4285
6 months    ki1135781-COHORTS          INDIA                          2           1093    4285
6 months    ki1135781-COHORTS          INDIA                          3+          2451    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1            574    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2            607    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+          1525    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           3216    8303
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2           2813    8303
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+          2274    8303
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            211     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2            213     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+           154     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2              1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+             4       6
24 months   ki1101329-Keneba           GAMBIA                         1            137    1376
24 months   ki1101329-Keneba           GAMBIA                         2            139    1376
24 months   ki1101329-Keneba           GAMBIA                         3+          1100    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1            136     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2            130     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+           232     498
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            160     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2            121     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+           141     422
24 months   ki1135781-COHORTS          GUATEMALA                      1             95     524
24 months   ki1135781-COHORTS          GUATEMALA                      2             78     524
24 months   ki1135781-COHORTS          GUATEMALA                      3+           351     524
24 months   ki1135781-COHORTS          INDIA                          1            561    3354
24 months   ki1135781-COHORTS          INDIA                          2            837    3354
24 months   ki1135781-COHORTS          INDIA                          3+          1956    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1            523    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2            544    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+          1382    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1           1596    4277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2           1440    4277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+          1241    4277


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
![](/tmp/47478cc9-7765-4a5d-8630-3f5d20362525/ce02311a-916a-4a3c-9613-a49510c05955/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.1554837   -0.5545648    0.2435975
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed           1.8614156    1.7022845    2.0205467
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3007014   -0.3790242   -0.2223787
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed          -1.6740660   -2.0842415   -1.2638904
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.8989502   -0.9785517   -0.8193487
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5633776   -0.6367806   -0.4899746
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.7606729   -0.8275460   -0.6937999
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.7962686   -0.9963421   -0.5961951
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          -1.1479573   -1.6127109   -0.6832037
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1755136   -0.3711878    0.0201606
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.1239667    0.0182530    0.2296804
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1666253   -0.3682513    0.0350008
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.2931417   -0.5694708   -0.0168127
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.3417496    0.2778201    0.4056791
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.1490853   -0.0577587    0.3559293
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.6665212   -0.7725624   -0.5604800
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.2645147   -0.3933653   -0.1356641
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.5333586   -0.6068665   -0.4598508
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9650085   -1.1321900   -0.7978269
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          -0.8577764   -1.1029977   -0.6125551
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -1.0550368   -1.2318770   -0.8781966
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.9110402   -1.0857208   -0.7363596
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.9240794   -1.1161744   -0.7319844
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.5195873   -0.6212816   -0.4178930
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.5074179   -0.6262734   -0.3885624
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1709118   -1.2655288   -1.0762948


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.3822951   -0.7231296   -0.0414606
Birth       ki1101329-Keneba           GAMBIA                         observed             observed           1.7138545    1.6262621    1.8014469
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5152877   -0.5411394   -0.4894359
Birth       ki1135781-COHORTS          GUATEMALA                      observed             observed          -1.2627733   -1.4008778   -1.1246688
Birth       ki1135781-COHORTS          INDIA                          observed             observed          -0.9498080   -0.9874148   -0.9122013
Birth       ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.7662454   -0.7931586   -0.7393323
6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             observed          -0.7979562   -0.9920947   -0.6038177
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             observed          -1.0863830   -1.3179987   -0.8547672
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0797179    0.0266621    0.1327737
6 months    ki1101329-Keneba           GAMBIA                         observed             observed          -0.1874118   -0.2456850   -0.1291387
6 months    ki1113344-GMS-Nepal        NEPAL                          observed             observed          -0.6047987   -0.6909649   -0.5186325
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3048076    0.2787350    0.3308802
6 months    ki1135781-COHORTS          GUATEMALA                      observed             observed           0.0489462   -0.0602343    0.1581267
6 months    ki1135781-COHORTS          INDIA                          observed             observed          -0.7068611   -0.7417800   -0.6719423
6 months    ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.2938433   -0.3352064   -0.2524802
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5893545   -0.6168122   -0.5618967
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1101329-Keneba           GAMBIA                         observed             observed          -0.7834078   -0.8357743   -0.7310414
24 months   ki1113344-GMS-Nepal        NEPAL                          observed             observed          -1.1315863   -1.2192240   -1.0439487
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1802133   -1.2803837   -1.0800428
24 months   ki1135781-COHORTS          GUATEMALA                      observed             observed          -0.5474237   -0.6231509   -0.4716964
24 months   ki1135781-COHORTS          INDIA                          observed             observed          -0.6564729   -0.6914450   -0.6215007
24 months   ki1135781-COHORTS          PHILIPPINES                    observed             observed          -0.6099592   -0.6467541   -0.5731643
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2916413   -1.3242424   -1.2590403


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.2268114   -0.3855768   -0.0680460
Birth       ki1101329-Keneba           GAMBIA                         optimal              observed          -0.1475611   -0.2815142   -0.0136081
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2145862   -0.2894600   -0.1397124
Birth       ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.4112926    0.0053117    0.8172736
Birth       ki1135781-COHORTS          INDIA                          optimal              observed          -0.0508578   -0.1197794    0.0180638
Birth       ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1793475   -0.2398225   -0.1188725
Birth       kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0055725   -0.0649254    0.0537804
6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          -0.0016876   -0.1200197    0.1166445
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed           0.0615743   -0.3883692    0.5115178
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0328569   -0.2033611    0.1376472
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.0442488   -0.1353881    0.0468905
6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          -0.0207866   -0.2184774    0.1769042
6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.3116570   -0.5786967   -0.0446173
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0369420   -0.0967091    0.0228251
6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          -0.1001390   -0.2992250    0.0989469
6 months    ki1135781-COHORTS          INDIA                          optimal              observed          -0.0403399   -0.1411201    0.0604403
6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.0293286   -0.1518976    0.0932404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.0559958   -0.1230063    0.0110147
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0770673   -0.0754284    0.2295629
24 months   ki1101329-Keneba           GAMBIA                         optimal              observed           0.0743686   -0.1643774    0.3131147
24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          -0.0765495   -0.2425208    0.0894217
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.2691731   -0.4356825   -0.1026636
24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed           0.3766557    0.1954363    0.5578752
24 months   ki1135781-COHORTS          INDIA                          optimal              observed          -0.1368856   -0.2328026   -0.0409686
24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          -0.1025412   -0.2159970    0.0109145
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1207295   -0.2077368   -0.0337223
