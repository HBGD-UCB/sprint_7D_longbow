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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country
* intXpredexfd6

## Data Summary

agecat        studyid                    country      intXpredexfd6    ever_stunted   n_cell       n
------------  -------------------------  -----------  --------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS            MALAWI       0_0-6 months                0        0       1
0-6 months    iLiNS_DYADM_LNS            MALAWI       0_0-6 months                1        1       1
0-6 months    iLiNS_DYADM_LNS            MALAWI       1_0-6 months                0        1       1
0-6 months    iLiNS_DYADM_LNS            MALAWI       1_0-6 months                1        0       1
0-6 months    ki1000304b-SAS-CompFeed    INDIA        0_0-6 months                0        9      12
0-6 months    ki1000304b-SAS-CompFeed    INDIA        0_0-6 months                1        3      12
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months                0      140     206
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months                1       66     206
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months                0       95     183
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months                1       88     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months                0      404     473
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months                1       69     473
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months                0      147     167
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months                1       20     167
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months                0      110     161
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months                1       51     161
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months                0      727    1014
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months                1      287    1014
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI       0_0-6 months                0        0       2
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI       0_0-6 months                1        2       2
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_0-6 months                0        2       2
0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI       1_0-6 months                1        0       2
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months                0      145     225
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months                1       80     225
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months                0       30      47
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months                1       17      47
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months                0     5604    8542
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months                1     2938    8542
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months                0    23202   30164
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months                1     6962   30164
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months                0     1374    1994
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months                1      620    1994
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months                0     5438    7110
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months                1     1672    7110
6-24 months   iLiNS_DYADM_LNS            MALAWI       0_6-24 months               0        2       3
6-24 months   iLiNS_DYADM_LNS            MALAWI       0_6-24 months               1        1       3
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months               0       30      35
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months               1        5      35
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0_6-24 months               0        7      10
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0_6-24 months               1        3      10
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months               0      104     189
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months               1       85     189
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months               0       34      91
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months               1       57      91
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months               0      227     260
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months               1       33     260
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1_6-24 months               0       78      82
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1_6-24 months               1        4      82
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months               0       67      97
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months               1       30      97
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months               0      416     633
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months               1      217     633
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       0_6-24 months               0        2       3
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       0_6-24 months               1        1       3
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months               0       44      55
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months               1       11      55
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months               0       80     134
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months               1       54     134
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months               0       17      28
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months               1       11      28
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months               0     2600    3214
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months               1      614    3214
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months               0    12004   14420
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months               1     2416   14420
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months               0      786    1130
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months               1      344    1130
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months               0     3344    4514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months               1     1170    4514


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXpredexfd6: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 1_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 1_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 1_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 1_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXpredexfd6: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXpredexfd6: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXpredexfd6: 1_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXpredexfd6: 1_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 1_0-6 months
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 0_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 1_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXpredexfd6: 0_6-24 months
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXpredexfd6: 1_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXpredexfd6: 0_6-24 months

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
![](/tmp/73e08648-c869-45a2-b4a3-0c888aae168d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73e08648-c869-45a2-b4a3-0c888aae168d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73e08648-c869-45a2-b4a3-0c888aae168d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73e08648-c869-45a2-b4a3-0c888aae168d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intXpredexfd6   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------  --------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months    Control              NA                0.3289474    0.1971432   0.4607516
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months    Other                NA                0.3153846    0.2742375   0.3565318
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months    Control              NA                0.4680851    0.3250402   0.6111300
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months    Other                NA                0.4852941    0.4010673   0.5695210
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months    Control              NA                0.1612903    0.0964856   0.2260951
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months    Other                NA                0.1404011    0.1039150   0.1768873
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months    Control              NA                0.0952381    0.0061950   0.1842812
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months    Other                NA                0.1280000    0.0692564   0.1867436
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months    Control              NA                0.3000000    0.0985368   0.5014632
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months    LNS                  NA                0.3191489    0.2419673   0.3963306
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months    Control              NA                0.3151515    0.2442301   0.3860729
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months    LNS                  NA                0.2767962    0.2466857   0.3069068
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    Control              NA                0.3962264    0.2642531   0.5281997
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    LNS                  NA                0.3362069    0.2500468   0.4223670
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    Other                NA                0.3571429    0.2313663   0.4829194
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    Control              NA                0.2666667    0.0404589   0.4928745
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    LNS                  NA                0.2608696    0.0794741   0.4422650
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    Other                NA                0.7777778    0.5032297   1.0523258
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months    Control              NA                0.3555356    0.3326990   0.3783721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months    Maternal             NA                0.3313812    0.3059345   0.3568278
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months    Control              NA                0.2532538    0.2410536   0.2654540
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months    Maternal             NA                0.2093174    0.1991519   0.2194830
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    Control              NA                0.2803347    0.2157017   0.3449677
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    LNS                  NA                0.3165468    0.2639459   0.3691476
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    Other                NA                0.3229167    0.2734921   0.3723412
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    Control              NA                0.2181818    0.1867738   0.2495899
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    LNS                  NA                0.2334711    0.2024696   0.2644725
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    Other                NA                0.2457627    0.2209033   0.2706221
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months   Control              NA                0.1111111   -0.0361910   0.2584132
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months   LNS                  NA                0.1764706   -0.0073922   0.3603334
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months   Control              NA                0.4459459    0.3024571   0.5894348
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months   Other                NA                0.4521739    0.3031506   0.6011972
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months   Control              NA                0.7600000    0.5916590   0.9283410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months   Other                NA                0.5757576    0.4558622   0.6956530
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months   Control              NA                0.1527778    0.0695157   0.2360399
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months   Other                NA                0.1170213    0.0709836   0.1630590
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months   Control              NA                0.1666667   -0.0452873   0.3786206
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months   LNS                  NA                0.3294118    0.2289765   0.4298471
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months   Control              NA                0.3663366    0.2722993   0.4603739
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months   LNS                  NA                0.3383459    0.2981083   0.3785834
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months   Control              NA                0.1111111   -0.0354095   0.2576317
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months   Maternal             NA                0.2432432    0.1037252   0.3827612
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   Control              NA                0.4642857    0.2788664   0.6497050
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   LNS                  NA                0.3972603    0.2845883   0.5099322
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   Other                NA                0.3636364    0.1988945   0.5283782
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   Control              NA                0.2000000   -0.0524673   0.4524673
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   LNS                  NA                0.4375000    0.1899656   0.6850344
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   Other                NA                1.0000000    0.9999999   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months   Control              NA                0.1827040    0.1521531   0.2132549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months   Maternal             NA                0.1997455    0.1650671   0.2344240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months   Control              NA                0.1667149    0.1513181   0.1821117
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months   Maternal             NA                0.1683089    0.1544094   0.1822085
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   Control              NA                0.3333333    0.2447092   0.4219574
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   LNS                  NA                0.2828947    0.1953113   0.3704781
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   Other                NA                0.3018182    0.2427316   0.3609048
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   Control              NA                0.2751236    0.2303590   0.3198881
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   LNS                  NA                0.2324059    0.1932695   0.2715423
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   Other                NA                0.2656400    0.2317631   0.2995170


### Parameter: E(Y)


agecat        studyid                    country      intXpredexfd6   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months    NA                   NA                0.3203883   0.2652569   0.3755198
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months    NA                   NA                0.4808743   0.4082864   0.5534623
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months    NA                   NA                0.1458774   0.1140331   0.1777216
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months    NA                   NA                0.1197605   0.0703691   0.1691519
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months    NA                   NA                0.3167702   0.2446854   0.3888550
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months    NA                   NA                0.2830375   0.2552970   0.3107779
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    NA                   NA                0.3555556   0.2928696   0.4182416
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    NA                   NA                0.3617021   0.2228488   0.5005555
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months    NA                   NA                0.3439476   0.3268991   0.3609960
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months    NA                   NA                0.2308049   0.2227254   0.2388845
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    NA                   NA                0.3109328   0.2789227   0.3429429
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    NA                   NA                0.2351617   0.2185966   0.2517269
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months   NA                   NA                0.1428571   0.0252358   0.2604785
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months   NA                   NA                0.4497354   0.3430399   0.5564310
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months   NA                   NA                0.6263736   0.5264283   0.7263189
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months   NA                   NA                0.1269231   0.0863820   0.1674641
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months   NA                   NA                0.3092784   0.2168216   0.4017351
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months   NA                   NA                0.3428120   0.3058068   0.3798172
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months   NA                   NA                0.2000000   0.0933131   0.3066869
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   NA                   NA                0.4029851   0.3196248   0.4863454
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   NA                   NA                0.3928571   0.2086404   0.5770738
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months   NA                   NA                0.1910392   0.1679832   0.2140952
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months   NA                   NA                0.1675451   0.1572073   0.1778828
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   NA                   NA                0.3044248   0.2613466   0.3475030
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   NA                   NA                0.2591936   0.2368055   0.2815818


### Parameter: RR


agecat        studyid                    country      intXpredexfd6   intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------  --------------  -------------------  ---------------  ----------  ----------  -----------
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months    Other                Control           0.9587692   0.6290672    1.4612723
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months    Other                Control           1.0367647   0.7295430    1.4733621
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months    Other                Control           0.8704871   0.5394485    1.4046712
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months    Other                Control           1.3439999   0.4743233    3.8082379
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months    LNS                  Control           1.0638298   0.5210619    2.1719756
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months    LNS                  Control           0.8782957   0.6840500    1.1277004
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    LNS                  Control           0.8485222   0.5573767    1.2917473
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    Other                Control           0.9013605   0.5551134    1.4635763
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    LNS                  Control           0.9782609   0.3266609    2.9296264
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    Other                Control           2.9166667   1.1637515    7.3099321
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months    Maternal             Control           0.9320620   0.8432742    1.0301981
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months    Maternal             Control           0.8265124   0.7718261    0.8850735
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    LNS                  Control           1.1291743   0.8496960    1.5005772
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    Other                Control           1.1518968   0.8734492    1.5191109
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    Control              Control           1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    LNS                  Control           1.0700758   0.8797271    1.3016105
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    Other                Control           1.1264124   0.9446821    1.3431025
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months   LNS                  Control           1.5882353   0.2941942    8.5742383
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months   Other                Control           1.0139657   0.6405101    1.6051682
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months   Other                Control           0.7575758   0.5589759    1.0267367
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months   Other                Control           0.7659574   0.3911051    1.5000848
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months   LNS                  Control           1.9764706   0.5344864    7.3087654
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months   LNS                  Control           0.9235928   0.6960105    1.2255901
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months   Maternal             Control           2.1891892   0.5197045    9.2216811
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   LNS                  Control           0.8556375   0.5242750    1.3964341
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   Other                Control           0.7832168   0.4281504    1.4327408
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   LNS                  Control           2.1875000   0.5484958    8.7241435
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   Other                Control           4.9999999   1.4149598   17.6683450
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months   Maternal             Control           1.0932740   0.8590957    1.3912861
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months   Maternal             Control           1.0095613   0.8919628    1.1426643
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   LNS                  Control           0.8486842   0.5642504    1.2764987
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   Other                Control           0.9054545   0.6508628    1.2596324
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   Control              Control           1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   LNS                  Control           0.8447328   0.6683987    1.0675867
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   Other                Control           0.9655300   0.7852138    1.1872539


### Parameter: PAR


agecat        studyid                    country      intXpredexfd6   intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months    Control              NA                -0.0085590   -0.0960947    0.0789767
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months    Control              NA                 0.0127892   -0.1105818    0.1361602
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months    Control              NA                -0.0154129   -0.0702926    0.0394667
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months    Control              NA                 0.0245224   -0.0553532    0.1043979
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months    Control              NA                 0.0167702   -0.1721737    0.2057141
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months    Control              NA                -0.0321140   -0.0966311    0.0324030
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    Control              NA                -0.0406709   -0.1553058    0.0739641
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    Control              NA                 0.0950355   -0.0993573    0.2894282
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months    Control              NA                -0.0115880   -0.0280257    0.0048497
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months    Control              NA                -0.0224489   -0.0308530   -0.0140448
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    Control              NA                 0.0305981   -0.0259391    0.0871352
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    Control              NA                 0.0169799   -0.0102150    0.0441748
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months   Control              NA                 0.0317460   -0.0832098    0.1467019
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months   Control              NA                 0.0037895   -0.1219572    0.1295362
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months   Control              NA                -0.1336264   -0.2844808    0.0172280
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months   Control              NA                -0.0258547   -0.0946775    0.0429681
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months   Control              NA                 0.1426117   -0.0631974    0.3484208
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months   Control              NA                -0.0235246   -0.1094924    0.0624431
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months   Control              NA                 0.0888889   -0.0482184    0.2259962
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   Control              NA                -0.0613006   -0.2254998    0.1028985
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   Control              NA                 0.1928571   -0.0355004    0.4212146
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months   Control              NA                 0.0083352   -0.0142910    0.0309614
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months   Control              NA                 0.0008302   -0.0099695    0.0116298
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   Control              NA                -0.0289086   -0.1054657    0.0476486
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   Control              NA                -0.0159299   -0.0537251    0.0218653


### Parameter: PAF


agecat        studyid                    country      intXpredexfd6   intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000304b-SAS-CompFeed    INDIA        1_0-6 months    Control              NA                -0.0267145   -0.3356234    0.2107486
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        0_0-6 months    Control              NA                 0.0265957   -0.2669791    0.2521456
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0_0-6 months    Control              NA                -0.1056568   -0.5531659    0.2129128
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1_0-6 months    Control              NA                 0.2047619   -0.8299617    0.6544170
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       0_0-6 months    Control              NA                 0.0529412   -0.7778474    0.4955020
0-6 months    ki1148112-iLiNS-DOSE       MALAWI       1_0-6 months    Control              NA                -0.1134621   -0.3663764    0.0926380
0-6 months    ki1148112-LCNI-5           MALAWI       0_0-6 months    Control              NA                -0.1143868   -0.4884734    0.1656835
0-6 months    ki1148112-LCNI-5           MALAWI       1_0-6 months    Control              NA                 0.2627451   -0.5250649    0.6435924
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   0_0-6 months    Control              NA                -0.0336912   -0.0827577    0.0131518
0-6 months    kiGH5241-JiVitA-3          BANGLADESH   1_0-6 months    Control              NA                -0.0972634   -0.1341152   -0.0616090
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   0_0-6 months    Control              NA                 0.0984073   -0.1032521    0.2632062
0-6 months    kiGH5241-JiVitA-4          BANGLADESH   1_0-6 months    Control              NA                 0.0722053   -0.0509050    0.1808936
6-24 months   iLiNS_DYADM_LNS            MALAWI       1_6-24 months   Control              NA                 0.2222222   -1.1453105    0.7180183
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1_6-24 months   Control              NA                 0.0084261   -0.3139345    0.2516987
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0_6-24 months   Control              NA                -0.2133333   -0.4886307    0.0110524
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0_6-24 months   Control              NA                -0.2037037   -0.8846957    0.2312273
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       0_6-24 months   Control              NA                 0.4611111   -0.8272710    0.8410738
6-24 months   ki1148112-iLiNS-DOSE       MALAWI       1_6-24 months   Control              NA                -0.0686225   -0.3512782    0.1549082
6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       1_6-24 months   Control              NA                 0.4444444   -0.8070247    0.8291988
6-24 months   ki1148112-LCNI-5           MALAWI       0_6-24 months   Control              NA                -0.1521164   -0.6418859    0.1915564
6-24 months   ki1148112-LCNI-5           MALAWI       1_6-24 months   Control              NA                 0.4909091   -0.5460329    0.8323622
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   0_6-24 months   Control              NA                 0.0436308   -0.0819550    0.1546394
6-24 months   kiGH5241-JiVitA-3          BANGLADESH   1_6-24 months   Control              NA                 0.0049549   -0.0616575    0.0673878
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0_6-24 months   Control              NA                -0.0949612   -0.3777647    0.1297933
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1_6-24 months   Control              NA                -0.0614596   -0.2176127    0.0746676
