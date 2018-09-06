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
* intXhfoodsec

## Data Summary

agecat        studyid                     country      intXhfoodsec                        ever_stunted   n_cell       n
------------  --------------------------  -----------  ---------------------------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_0-6 months                         0       11      14
0-6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_0-6 months                         1        3      14
0-6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_0-6 months                0        2       3
0-6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_0-6 months                1        1       3
0-6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_0-6 months                       0        5       7
0-6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_0-6 months                       1        2       7
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months                         0      158     172
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months                         1       14     172
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_0-6 months                0       12      12
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_0-6 months                1        0      12
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months                       0       39      48
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months                       1        9      48
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months                         0      190     252
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months                         1       62     252
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months                0       52      86
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months                1       34      86
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months                       0      547     777
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months                       1      230     777
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months                         0       17      23
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months                         1        6      23
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_0-6 months                0        4       6
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_0-6 months                1        2       6
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_0-6 months                       0       10      14
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_0-6 months                       1        4      14
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months                         0    10706   13718
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months                         1     3012   13718
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months                0     6776    9226
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months                1     2450    9226
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months                       0     3238    4582
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months                       1     1344    4582
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months                         0     3450    4628
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months                         1     1178    4628
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months                0     2420    3274
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months                1      854    3274
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months                       0      918    1172
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months                       1      254    1172
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months                        0       66      82
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months                        1       16      82
6-24 months   iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6-24 months               0       42      45
6-24 months   iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6-24 months               1        3      45
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months                      0       95     118
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months                      1       23     118
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months                        0     2153    3313
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months                        1     1160    3313
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months               0      261     420
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months               1      159     420
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months                      0      547    1050
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months                      1      503    1050
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months                        0      205     319
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months                        1      114     319
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months               0       69     109
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months               1       40     109
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months                      0      545     959
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months                      1      414     959
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months                        0       97     122
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months                        1       25     122
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months               0       56      67
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months               1       11      67
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months                      0      154     197
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months                      1       43     197
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months                        0     8072    9585
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months                        1     1513    9585
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months               0     4580    5630
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months               1     1050    5630
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months                      0     2014    2519
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months                      1      505    2519
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months                        0     2356    3230
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months                        1      874    3230
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months               0     1680    2306
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months               1      626    2306
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months                      0      635     883
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months                      1      248     883


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Secure_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Secure_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Secure_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Insecure_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Secure_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Insecure_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Secure_0-6 months
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_6-24 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Insecure_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Secure_6-24 months
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Insecure_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Secure_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Secure_6-24 months
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Insecure_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Secure_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Insecure_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Secure_6-24 months
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6-24 months

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Mildly Food Insecure_0-6 months
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_0-6 months
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6-24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/677eda48-bf21-442a-b4a2-5e35bcf8a1c9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/677eda48-bf21-442a-b4a2-5e35bcf8a1c9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/677eda48-bf21-442a-b4a2-5e35bcf8a1c9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/677eda48-bf21-442a-b4a2-5e35bcf8a1c9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country      intXhfoodsec                       intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------  ---------------------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             Control              NA                0.1470588    0.0276655   0.2664521
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             LNS                  NA                0.0600000   -0.0060190   0.1260190
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             Other                NA                0.0681818    0.0153649   0.1209987
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           Control              NA                0.1428571   -0.1191109   0.4048252
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           LNS                  NA                0.2666667    0.0405101   0.4928232
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           Other                NA                0.1538462    0.0136936   0.2939987
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months             Control              NA                0.1777778    0.0658498   0.2897057
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months             LNS                  NA                0.2608696    0.2009321   0.3208071
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months    Control              NA                0.5000000    0.2154443   0.7845557
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months    LNS                  NA                0.3783784    0.2672313   0.4895255
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months           Control              NA                0.3559322    0.2694879   0.4423765
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months           LNS                  NA                0.2852807    0.2507831   0.3197783
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months             Control              NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months             Maternal             NA                0.3750000    0.1324528   0.6175472
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months             Control              NA                0.2315728    0.2147673   0.2483784
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months             Maternal             NA                0.2074421    0.1927047   0.2221796
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months    Control              NA                0.2877442    0.2647890   0.3106994
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months    Maternal             NA                0.2443880    0.2217537   0.2670222
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months           Control              NA                0.3066079    0.2712939   0.3419219
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months           Maternal             NA                0.2802768    0.2489291   0.3116246
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             Control              NA                0.2320261    0.1906645   0.2733877
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             LNS                  NA                0.2717391    0.2327801   0.3106982
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             Other                NA                0.2570888    0.2261657   0.2880120
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    Control              NA                0.2512563    0.2003787   0.3021339
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    LNS                  NA                0.2354212    0.1904644   0.2803779
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    Other                NA                0.2809278    0.2427726   0.3190831
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           Control              NA                0.1863354    0.1233434   0.2493274
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           LNS                  NA                0.2180451    0.1333281   0.3027622
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           Other                NA                0.2328767    0.1819193   0.2838342
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months            Control              NA                0.2093023    0.0854419   0.3331627
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months            LNS                  NA                0.1794872    0.0571482   0.3018262
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months          Control              NA                0.1538462    0.0657600   0.2419323
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months          LNS                  NA                0.2452830    0.1289551   0.3616110
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            Control              NA                0.3526448    0.3194062   0.3858835
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            LNS                  NA                0.3056872    0.2746016   0.3367728
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            Other                NA                0.3713433    0.3482013   0.3944853
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                0.4190476    0.3245604   0.5135348
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   LNS                  NA                0.2818182    0.1976455   0.3659908
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   Other                NA                0.4097561    0.3423550   0.4771572
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          Control              NA                0.5018587    0.4420801   0.5616374
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          LNS                  NA                0.4349594    0.3729793   0.4969394
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          Other                NA                0.4878505    0.4454745   0.5302265
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months            Control              NA                0.3809524    0.2608485   0.5010562
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months            LNS                  NA                0.3515625    0.2929831   0.4101419
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months   Control              NA                0.3846154    0.1189320   0.6502988
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months   LNS                  NA                0.3645833    0.2678577   0.4613090
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months          Control              NA                0.4088050    0.3323511   0.4852589
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months          LNS                  NA                0.4362500    0.4018672   0.4706328
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months            Control              NA                0.2093023    0.0861954   0.3324093
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months            Maternal             NA                0.2025316    0.1129520   0.2921113
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months   Control              NA                0.0434783   -0.0404935   0.1274500
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months   Maternal             NA                0.2272727    0.1025131   0.3520323
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months          Control              NA                0.1538462    0.0659106   0.2417817
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months          Maternal             NA                0.2500000    0.1759429   0.3240571
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months            Control              NA                0.1531915    0.1366702   0.1697128
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months            Maternal             NA                0.1623337    0.1463982   0.1782691
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                0.1836041    0.1532946   0.2139136
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months   Maternal             NA                0.1890714    0.1667463   0.2113965
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months          Control              NA                0.2094325    0.1692453   0.2496196
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months          Maternal             NA                0.1916404    0.1557355   0.2275452
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            Control              NA                0.2753129    0.2243652   0.3262605
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            LNS                  NA                0.2638889    0.2135917   0.3141860
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            Other                NA                0.2716880    0.2329253   0.3104506
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                0.2993311    0.2401646   0.3584976
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   LNS                  NA                0.2378049    0.1862058   0.2894039
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   Other                NA                0.2766160    0.2324193   0.3208127
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          Control              NA                0.3070866    0.2266332   0.3875400
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          LNS                  NA                0.2512077    0.1620888   0.3403266
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          Other                NA                0.2796209    0.2163221   0.3429196


### Parameter: E(Y)


agecat        studyid                     country      intXhfoodsec                       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------  ---------------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             NA                   NA                0.0813953   0.0404114   0.1223793
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           NA                   NA                0.1875000   0.0759135   0.2990865
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months             NA                   NA                0.2460317   0.1927494   0.2993141
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months    NA                   NA                0.3953488   0.2914092   0.4992885
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months           NA                   NA                0.2960103   0.2638919   0.3281287
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months             NA                   NA                0.2608696   0.0773810   0.4443581
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months             NA                   NA                0.2195655   0.2083210   0.2308101
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months    NA                   NA                0.2655539   0.2493628   0.2817449
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months           NA                   NA                0.2933217   0.2697137   0.3169297
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             NA                   NA                0.2545376   0.2336424   0.2754328
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    NA                   NA                0.2608430   0.2354079   0.2862782
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           NA                   NA                0.2167235   0.1804186   0.2530285
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months            NA                   NA                0.1951220   0.1078781   0.2823658
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months          NA                   NA                0.1949153   0.1231360   0.2666945
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            NA                   NA                0.3501358   0.3338904   0.3663813
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   NA                   NA                0.3785714   0.3321295   0.4250134
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          NA                   NA                0.4790476   0.4488169   0.5092784
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months            NA                   NA                0.3573668   0.3046956   0.4100380
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months   NA                   NA                0.3669725   0.2760724   0.4578726
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months          NA                   NA                0.4316997   0.4003347   0.4630647
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months            NA                   NA                0.2049180   0.1324782   0.2773579
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months   NA                   NA                0.1641791   0.0748091   0.2535491
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months          NA                   NA                0.2182741   0.1604447   0.2761035
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months            NA                   NA                0.1578508   0.1463794   0.1693222
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months   NA                   NA                0.1865009   0.1679782   0.2050236
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months          NA                   NA                0.2004764   0.1735209   0.2274318
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            NA                   NA                0.2705882   0.2442905   0.2968860
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   NA                   NA                0.2714657   0.2421533   0.3007781
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          NA                   NA                0.2808607   0.2374012   0.3243202


### Parameter: RR


agecat        studyid                     country      intXhfoodsec                       intervention_level   baseline_level            estimate           ci_lower            ci_upper
------------  --------------------------  -----------  ---------------------------------  -------------------  ---------------  -----------------  -----------------  ------------------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             LNS                  Control                  0.4080000          0.1039435           1.6014850
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             Other                Control                  0.4636364          0.1509504           1.4240352
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           LNS                  Control                  1.8666667          0.2475262          14.0770710
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           Other                Control                  1.0769231          0.1389715           8.3453305
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months             Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months             LNS                  Control                  1.4673913          0.7507202           2.8682288
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months    Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months    LNS                  Control                  0.7567568          0.3988531           1.4358187
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months           Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months           LNS                  Control                  0.8015030          0.6110519           1.0513134
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months             Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months             Maternal             Control           43368297.7473603   17559541.4088579   107110385.4998698
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months             Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months             Maternal             Control                  0.8957965          0.8092721           0.9915717
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months    Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months    Maternal             Control                  0.8493236          0.7516002           0.9597531
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months           Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months           Maternal             Control                  0.9141212          0.7785241           1.0733356
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             LNS                  Control                  1.1711574          0.9317620           1.4720601
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             Other                Control                  1.1080167          0.8936551           1.3737974
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    LNS                  Control                  0.9369762          0.7093596           1.2376297
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    Other                Control                  1.1180928          0.8762569           1.4266723
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           Control              Control                  1.0000000          1.0000000           1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           LNS                  Control                  1.1701754          0.6992126           1.9583608
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           Other                Control                  1.2497717          0.8354680           1.8695262
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months            Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months            LNS                  Control                  0.8575499          0.3477298           2.1148366
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months          Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months          LNS                  Control                  1.5943396          0.7580468           3.3532479
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            LNS                  Control                  0.8668416          0.7546105           0.9957645
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            Other                Control                  1.0530235          0.9405135           1.1789925
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   LNS                  Control                  0.6725207          0.4625713           0.9777607
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   Other                Control                  0.9778271          0.7396885           1.2926330
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          LNS                  Control                  0.8666968          0.7197941           1.0435808
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          Other                Control                  0.9720872          0.8388426           1.1264968
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months            Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months            LNS                  Control                  0.9228516          0.6460468           1.3182559
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months   Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months   LNS                  Control                  0.9479167          0.4522767           1.9867174
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months          Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months          LNS                  Control                  1.0671346          0.8711251           1.3072477
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months            Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months            Maternal             Control                  0.9676512          0.4635662           2.0198815
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months   Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months   Maternal             Control                  5.2272725          0.7019049          38.9288877
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months          Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months          Maternal             Control                  1.6250000          0.8536151           3.0934611
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months            Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months            Maternal             Control                  1.0596781          0.9158901           1.2260399
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months   Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months   Maternal             Control                  1.0297778          0.8407738           1.2612694
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months          Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months          Maternal             Control                  0.9150462          0.6997920           1.1965121
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            LNS                  Control                  0.9585055          0.7348665           1.2502037
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            Other                Control                  0.9868335          0.7812082           1.2465825
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   LNS                  Control                  0.7944543          0.5923883           1.0654457
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   Other                Control                  0.9241137          0.7167099           1.1915366
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          Control              Control                  1.0000000          1.0000000           1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          LNS                  Control                  0.8180354          0.5262821           1.2715272
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          Other                Control                  0.9105602          0.6441130           1.2872275


### Parameter: PAR


agecat        studyid                     country      intXhfoodsec                       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------  ---------------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             Control              NA                -0.0656635   -0.1671467    0.0358197
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           Control              NA                 0.0446429   -0.2024655    0.2917512
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months             Control              NA                 0.0682540   -0.0361138    0.1726218
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months    Control              NA                -0.1046512   -0.3676693    0.1583670
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months           Control              NA                -0.0599219   -0.1388809    0.0190371
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months             Control              NA                 0.2608696    0.0773810    0.4443581
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months             Control              NA                -0.0120073   -0.0232093   -0.0008053
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months    Control              NA                -0.0221904   -0.0387991   -0.0055816
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months           Control              NA                -0.0132862   -0.0371629    0.0105904
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             Control              NA                 0.0225115   -0.0127953    0.0578182
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    Control              NA                 0.0095867   -0.0348217    0.0539951
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           Control              NA                 0.0303881   -0.0253068    0.0860831
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months            Control              NA                -0.0141804   -0.0970244    0.0686636
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months          Control              NA                 0.0410691   -0.0249854    0.1071236
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            Control              NA                -0.0025090   -0.0314773    0.0264593
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                -0.0404762   -0.1218443    0.0408919
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          Control              NA                -0.0228111   -0.0743514    0.0287291
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months            Control              NA                -0.0235856   -0.1308310    0.0836598
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months   Control              NA                -0.0176429   -0.2666671    0.2313813
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months          Control              NA                 0.0228947   -0.0470390    0.0928283
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months            Control              NA                -0.0043843   -0.1029723    0.0942037
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months   Control              NA                 0.1207008    0.0197202    0.2216815
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months          Control              NA                 0.0644280   -0.0128645    0.1417204
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months            Control              NA                 0.0046593   -0.0070419    0.0163605
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                 0.0028968   -0.0170410    0.0228346
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months          Control              NA                -0.0089561   -0.0360735    0.0181614
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            Control              NA                -0.0047246   -0.0480177    0.0385685
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                -0.0278654   -0.0783263    0.0225956
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          Control              NA                -0.0262259   -0.0944427    0.0419908


### Parameter: PAF


agecat        studyid                     country      intXhfoodsec                       intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------  ---------------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_0-6 months             Control              NA                -0.8067227   -2.5121792    0.0705922
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_0-6 months           Control              NA                 0.2380952   -3.2687889    0.8640132
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_0-6 months             Control              NA                 0.2774194   -0.2956636    0.5970229
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_0-6 months    Control              NA                -0.2647059   -1.1441741    0.2540340
0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_0-6 months           Control              NA                -0.2024318   -0.5010903    0.0368052
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_0-6 months             Control              NA                 1.0000000    0.9999999    1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_0-6 months             Control              NA                -0.0546867   -0.1066837   -0.0051327
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_0-6 months    Control              NA                -0.0835625   -0.1482766   -0.0224956
0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_0-6 months           Control              NA                -0.0452958   -0.1296196    0.0327334
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_0-6 months             Control              NA                 0.0884406   -0.0617577    0.2173916
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_0-6 months    Control              NA                 0.0367529   -0.1494563    0.1927966
0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_0-6 months           Control              NA                 0.1402162   -0.1572096    0.3611976
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_6-24 months            Control              NA                -0.0726744   -0.5925036    0.2774707
6-24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_6-24 months          Control              NA                 0.2107023   -0.2040995    0.4826085
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6-24 months            Control              NA                -0.0071658   -0.0933935    0.0722617
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                -0.1069182   -0.3443085    0.0885515
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6-24 months          Control              NA                -0.0476176   -0.1609684    0.0546661
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6-24 months            Control              NA                -0.0659983   -0.4126372    0.1955808
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6-24 months   Control              NA                -0.0480769   -1.0025902    0.4514778
6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6-24 months          Control              NA                 0.0530338   -0.1236675    0.2019481
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6-24 months            Control              NA                -0.0213953   -0.6358491    0.3622588
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6-24 months   Control              NA                 0.7351779   -0.6505648    0.9575110
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6-24 months          Control              NA                 0.2951699   -0.1561754    0.5703200
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6-24 months            Control              NA                 0.0295172   -0.0475871    0.1009466
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                 0.0155324   -0.0978189    0.1171801
6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6-24 months          Control              NA                -0.0446740   -0.1885218    0.0817639
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6-24 months            Control              NA                -0.0174606   -0.1907073    0.1305789
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6-24 months   Control              NA                -0.1026478   -0.3050870    0.0683899
6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6-24 months          Control              NA                -0.0933769   -0.3661001    0.1249008
