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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        parity    swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       39     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       43     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0       79     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1        2     166
Birth       ki1101329-Keneba           GAMBIA                         1               0      141    1292
Birth       ki1101329-Keneba           GAMBIA                         1               1        1    1292
Birth       ki1101329-Keneba           GAMBIA                         2               0      133    1292
Birth       ki1101329-Keneba           GAMBIA                         2               1        0    1292
Birth       ki1101329-Keneba           GAMBIA                         3+              0     1008    1292
Birth       ki1101329-Keneba           GAMBIA                         3+              1        9    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5154   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      407   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3671   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      211   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3299   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      173   12915
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       84     756
Birth       ki1135781-COHORTS          GUATEMALA                      1               1       10     756
Birth       ki1135781-COHORTS          GUATEMALA                      2               0      109     756
Birth       ki1135781-COHORTS          GUATEMALA                      2               1        9     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+              0      503     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+              1       41     756
Birth       ki1135781-COHORTS          INDIA                          1               0      599    3855
Birth       ki1135781-COHORTS          INDIA                          1               1       42    3855
Birth       ki1135781-COHORTS          INDIA                          2               0      941    3855
Birth       ki1135781-COHORTS          INDIA                          2               1       41    3855
Birth       ki1135781-COHORTS          INDIA                          3+              0     2138    3855
Birth       ki1135781-COHORTS          INDIA                          3+              1       94    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      595    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       45    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      631    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       26    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1552    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       50    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     9030   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1      178   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0    10910   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1      168   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0    10936   31384
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1      162   31384
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      381    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       11    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      293    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1        9    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      617    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1       23    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       72     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        0     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       79     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        5     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      204     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       13     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      208     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      212     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      157     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1        2     582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      674    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      653    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        4    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      655    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        3    1994
6 months    ki1101329-Keneba           GAMBIA                         1               0      192    1623
6 months    ki1101329-Keneba           GAMBIA                         1               1        3    1623
6 months    ki1101329-Keneba           GAMBIA                         2               0      163    1623
6 months    ki1101329-Keneba           GAMBIA                         2               1        1    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1242    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              1       22    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      306    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      288    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1       10    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      518    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1        4    1126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     3265    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       20    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2484    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       30    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2435    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       29    8263
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      131     963
6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      2               0      138     963
6 months    ki1135781-COHORTS          GUATEMALA                      2               1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      688     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1        4     963
6 months    ki1135781-COHORTS          INDIA                          1               0      722    4285
6 months    ki1135781-COHORTS          INDIA                          1               1       19    4285
6 months    ki1135781-COHORTS          INDIA                          2               0     1073    4285
6 months    ki1135781-COHORTS          INDIA                          2               1       20    4285
6 months    ki1135781-COHORTS          INDIA                          3+              0     2356    4285
6 months    ki1135781-COHORTS          INDIA                          3+              1       95    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      569    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        5    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      605    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1        2    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1497    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1       28    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0    12565   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1      184   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0    11212   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1      148   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     9272   33507
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1      126   33507
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      209     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      210     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        3     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      150     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1        4     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1               0      137    1376
24 months   ki1101329-Keneba           GAMBIA                         1               1        0    1376
24 months   ki1101329-Keneba           GAMBIA                         2               0      137    1376
24 months   ki1101329-Keneba           GAMBIA                         2               1        2    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              0     1080    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              1       20    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      264     996
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        8     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      250     996
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1       10     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      452     996
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1       12     996
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      149     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       11     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0      114     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1        7     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0      129     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       12     422
24 months   ki1135781-COHORTS          GUATEMALA                      1               0      167    1076
24 months   ki1135781-COHORTS          GUATEMALA                      1               1        0    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2               0      151    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2               1        0    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      754    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+              1        4    1076
24 months   ki1135781-COHORTS          INDIA                          1               0      558    3354
24 months   ki1135781-COHORTS          INDIA                          1               1        3    3354
24 months   ki1135781-COHORTS          INDIA                          2               0      831    3354
24 months   ki1135781-COHORTS          INDIA                          2               1        6    3354
24 months   ki1135781-COHORTS          INDIA                          3+              0     1929    3354
24 months   ki1135781-COHORTS          INDIA                          3+              1       27    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      520    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1        3    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      540    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1        4    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0     1364    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1       18    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     6068   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      226   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     5562   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      245   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4857   17152
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1      194   17152


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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

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
![](/tmp/de90a121-126d-4fff-8914-8c7132bbc509/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de90a121-126d-4fff-8914-8c7132bbc509/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de90a121-126d-4fff-8914-8c7132bbc509/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de90a121-126d-4fff-8914-8c7132bbc509/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0789716   0.0714291   0.0865141
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0528169   0.0449160   0.0607178
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0588924   0.0466934   0.0710914
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                0.1063830   0.0440119   0.1687541
Birth       ki1135781-COHORTS         GUATEMALA     2                    NA                0.0762712   0.0283479   0.1241945
Birth       ki1135781-COHORTS         GUATEMALA     3+                   NA                0.0753676   0.0531697   0.0975656
Birth       ki1135781-COHORTS         INDIA         1                    NA                0.0733981   0.0551249   0.0916714
Birth       ki1135781-COHORTS         INDIA         2                    NA                0.0402685   0.0283416   0.0521953
Birth       ki1135781-COHORTS         INDIA         3+                   NA                0.0416875   0.0332668   0.0501082
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0987707   0.0770724   0.1204691
Birth       ki1135781-COHORTS         PHILIPPINES   2                    NA                0.0306906   0.0187586   0.0426226
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.0255881   0.0181869   0.0329892
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0370882   0.0310865   0.0430899
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0150493   0.0102432   0.0198554
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0375608   0.0326540   0.0424676
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0280612   0.0140579   0.0420646
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.0298013   0.0154373   0.0441654
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.0359375   0.0218263   0.0500487
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0053491   0.0024125   0.0082856
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0251505   0.0196725   0.0306285
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0089412   0.0057819   0.0121006
6 months    ki1135781-COHORTS         INDIA         1                    NA                0.0247532   0.0135743   0.0359320
6 months    ki1135781-COHORTS         INDIA         2                    NA                0.0178851   0.0100023   0.0257680
6 months    ki1135781-COHORTS         INDIA         3+                   NA                0.0382789   0.0306864   0.0458714
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0151299   0.0093820   0.0208778
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0120152   0.0083383   0.0156922
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0077848   0.0051354   0.0104341
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                0.0294118   0.0009872   0.0578363
24 months   ki1113344-GMS-Nepal       NEPAL         2                    NA                0.0384615   0.0053706   0.0715525
24 months   ki1113344-GMS-Nepal       NEPAL         3+                   NA                0.0258621   0.0054173   0.0463068
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0687500   0.0294970   0.1080030
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0578512   0.0162040   0.0994985
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0851064   0.0389937   0.1312190
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0242807   0.0187913   0.0297701
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0407044   0.0321801   0.0492288
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0274391   0.0210705   0.0338078


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0612466   0.0571111   0.0653822
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0459144   0.0393065   0.0525222
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0161866   0.0138216   0.0185515
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0095607   0.0074624   0.0116590
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0312719   0.0260599   0.0364838
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0136688   0.0115917   0.0157459
24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.0301205   0.0150939   0.0451470
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0710900   0.0465431   0.0956370
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0387710   0.0344423   0.0430996


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.6688089   0.5601449   0.7985529
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 0.7457422   0.5937009   0.9367199
Birth       ki1135781-COHORTS         GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     2                    1                 0.7169492   0.3035745   1.6932122
Birth       ki1135781-COHORTS         GUATEMALA     3+                   1                 0.7084559   0.3675932   1.3653943
Birth       ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         2                    1                 0.5486307   0.3727679   0.8074614
Birth       ki1135781-COHORTS         INDIA         3+                   1                 0.5679639   0.4124981   0.7820232
Birth       ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   2                    1                 0.3107260   0.1987541   0.4857791
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   1                 0.2590654   0.1801827   0.3724823
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.4057710   0.2836365   0.5804969
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 1.0127417   0.8219463   1.2478259
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    1                 1.0620108   0.6052683   1.8634168
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   1                 1.2806818   0.6228782   2.6331726
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 4.7018359   2.6050382   8.4863479
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.6715470   0.8703986   3.2101034
6 months    ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         2                    1                 0.7225390   0.3845029   1.3577598
6 months    ki1135781-COHORTS         INDIA         3+                   1                 1.5464233   0.9444422   2.5321032
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.7941350   0.4935393   1.2778122
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.5145281   0.3108648   0.8516216
24 months   ki1113344-GMS-Nepal       NEPAL         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL         2                    1                 1.3076923   0.3585620   4.7692142
24 months   ki1113344-GMS-Nepal       NEPAL         3+                   1                 0.8793103   0.2522864   3.0647178
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.8414726   0.3357357   2.1090285
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.2379110   0.5634392   2.7197677
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    1                 1.6764118   1.2388138   2.2685867
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 1.1300810   0.8129246   1.5709736


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0177250   -0.0239766   -0.0114733
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                -0.0270179   -0.0844158    0.0303800
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.0274837   -0.0441550   -0.0108125
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.0570322   -0.0766551   -0.0374093
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0209016   -0.0266151   -0.0151881
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.0041727   -0.0094235    0.0177689
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0042116    0.0013353    0.0070880
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.0065187   -0.0038801    0.0169175
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0014611   -0.0067171    0.0037948
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                 0.0007087   -0.0236318    0.0250492
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0023400   -0.0288845    0.0335646
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0144903    0.0092480    0.0197325


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.2894032   -0.3973502   -0.1897953
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                -0.3404255   -1.2928794    0.2163824
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.5985866   -1.0129681   -0.2695079
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -1.3664160   -1.9258388   -0.9139553
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -1.2912908   -1.7446393   -0.9128246
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.1294495   -0.4000328    0.4586853
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.4405137    0.0714833    0.6628764
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.2084528   -0.2025433    0.4789818
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.1068961   -0.5659869    0.2176058
24 months   ki1113344-GMS-Nepal       NEPAL         1                    NA                 0.0235294   -1.2337547    0.5731426
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0329167   -0.5228379    0.3858505
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.3737407    0.2334552    0.4883525
