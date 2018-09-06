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

agecat      studyid                     country      intXhfoodsec                      sstunted   n_cell       n
----------  --------------------------  -----------  -------------------------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI       Food Insecure_Birth                      0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI       Food Insecure_Birth                      1        1       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_Birth                      0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_Birth                      1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                        0    10962   11994
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                        1     1032   11994
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth               0     7826    8670
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth               1      844    8670
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth                      0     4074    4546
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth                      1      472    4546
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                        0      734     792
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                        1       58     792
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth               0      560     618
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth               1       58     618
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth                      0      216     228
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth                      1       12     228
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months                     0      119     122
6 months    iLiNS_DYADM_LNS             MALAWI       Food Secure_6 months                     1        3     122
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months            0       85      89
6 months    iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_6 months            1        4      89
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months                   0      196     210
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months                   1       14     210
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months                     0      477     495
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months                     1       18     495
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6 months            0       46      46
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_6 months            1        0      46
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months                   0      131     141
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months                   1       10     141
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months                     0      383     400
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months                     1       17     400
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months            0      142     149
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months            1        7     149
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months                   0     1140    1234
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months                   1       94    1234
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months                     0      175     181
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months                     1        6     181
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months            0      110     120
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months            1       10     120
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months                   0      316     334
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months                   1       18     334
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months                     0    15916   16787
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months                     1      871   16787
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months            0    10451   11156
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months            1      705   11156
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months                   0     5063    5518
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months                   1      455    5518
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months                     0     4480    4740
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months                     1      260    4740
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months            0     3166    3356
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months            1      190    3356
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months                   0     1149    1222
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months                   1       73    1222
24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_24 months                    0        8       8
24 months   iLiNS_DYADM_LNS             MALAWI       Food Secure_24 months                    1        0       8
24 months   iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_24 months           0        8      10
24 months   iLiNS_DYADM_LNS             MALAWI       Mildly Food Insecure_24 months           1        2      10
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months                  0       15      16
24 months   iLiNS_DYADM_LNS             MALAWI       Food Insecure_24 months                  1        1      16
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months                    0      759     843
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months                    1       84     843
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months           0       95     110
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months           1       15     110
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months                  0      194     234
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months                  1       40     234
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months                    0      140     159
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months                    1       19     159
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months           0       54      69
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months           1       15      69
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months                  0      436     541
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months                  1      105     541
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months                    0       16      17
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_24 months                    1        1      17
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months           0       10      14
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_24 months           1        4      14
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months                  0       29      33
24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_24 months                  1        4      33
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months                    0       52      69
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months                    1       17      69
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months           0       20      28
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months           1        8      28
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months                  0       27      38
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months                  1       11      38
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months                    0      864     981
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months                    1      117     981
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months           0      680     743
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months           1       63     743
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months                  0      253     270
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months                  1       17     270


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Insecure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Food Secure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Food Secure_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_Birth
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXhfoodsec: Mildly Food Insecure_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXhfoodsec: Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Secure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Mildly Food Insecure_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXhfoodsec: Food Insecure_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ffa07ada-0297-4a50-bb5a-e417a31a0b19/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ffa07ada-0297-4a50-bb5a-e417a31a0b19/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ffa07ada-0297-4a50-bb5a-e417a31a0b19/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ffa07ada-0297-4a50-bb5a-e417a31a0b19/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Control              NA                0.0908481    0.0789573   0.1027390
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Maternal             NA                0.0812873    0.0706288   0.0919459
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                0.1124535    0.0969706   0.1279365
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Maternal             NA                0.0824553    0.0675049   0.0974058
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Control              NA                0.1051237    0.0813204   0.1289269
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Maternal             NA                0.1025416    0.0801969   0.1248863
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Control              NA                0.1034483    0.0341329   0.1727637
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                LNS                  NA                0.0625000    0.0110526   0.1139474
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Other                NA                0.0595238    0.0265153   0.0925323
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                0.0400000   -0.0179136   0.0979136
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       LNS                  NA                0.0786517    0.0245276   0.1327758
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Other                NA                0.1310345    0.0725355   0.1895335
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Control              NA                0.0967742   -0.0152902   0.2088386
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              LNS                  NA                0.0000000    0.0000000   0.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Other                NA                0.0526316   -0.0016325   0.1068956
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           Control              NA                0.0683761    0.0225340   0.1142181
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           LNS                  NA                0.0645161    0.0144671   0.1145651
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Control              NA                0.0504202    0.0110668   0.0897735
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             LNS                  NA                0.0294118    0.0009871   0.0578365
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Other                NA                0.0333333    0.0106002   0.0560665
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Control              NA                0.0666667   -0.0229122   0.1562456
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           LNS                  NA                0.1000000    0.0066993   0.1933007
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Other                NA                0.0563380    0.0025143   0.1101617
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             Control              NA                0.0410959   -0.0044991   0.0866909
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             LNS                  NA                0.0428135    0.0208447   0.0647822
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    Control              NA                0.0000000    0.0000000   0.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    LNS                  NA                0.0538462    0.0149150   0.0927773
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           Control              NA                0.0922330    0.0527035   0.1317625
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           LNS                  NA                0.0729572    0.0570530   0.0888614
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Control              NA                0.0350877   -0.0128122   0.0829877
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Maternal             NA                0.0322581    0.0010735   0.0634426
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Control              NA                0.0816327    0.0046474   0.1586179
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Maternal             NA                0.0845070    0.0195375   0.1494766
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Control              NA                0.0683761    0.0225747   0.1141775
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Maternal             NA                0.0460830    0.0181450   0.0740209
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Control              NA                0.0551633    0.0477774   0.0625493
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Maternal             NA                0.0486358    0.0420183   0.0552534
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                0.0682190    0.0577282   0.0787098
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Maternal             NA                0.0583142    0.0454386   0.0711898
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Control              NA                0.0948529    0.0747558   0.1149501
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Maternal             NA                0.0704074    0.0564261   0.0843888
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Control              NA                0.0461165    0.0260541   0.0661789
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             LNS                  NA                0.0661710    0.0448521   0.0874899
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Other                NA                0.0528022    0.0381975   0.0674070
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                0.0717703    0.0458942   0.0976465
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    LNS                  NA                0.0374732    0.0188645   0.0560819
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Other                NA                0.0598991    0.0406354   0.0791628
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Control              NA                0.0676471    0.0259522   0.1093420
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           LNS                  NA                0.0551724    0.0131220   0.0972228
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Other                NA                0.0574324    0.0296731   0.0851918
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Control              NA                0.1010638    0.0579527   0.1441749
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            LNS                  NA                0.0970874    0.0566320   0.1375428
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Other                NA                0.1002227    0.0724299   0.1280156
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Control              NA                0.1923077    0.0401248   0.3444906
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   LNS                  NA                0.0967742   -0.0077768   0.2013252
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Other                NA                0.1320755    0.0405071   0.2236438
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Control              NA                0.1754386    0.0764888   0.2743883
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          LNS                  NA                0.1857143    0.0944207   0.2770078
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Other                NA                0.1588785    0.0894643   0.2282927
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            Control              NA                0.1562500    0.0300498   0.2824502
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            LNS                  NA                0.1102362    0.0555956   0.1648769
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   Control              NA                0.1250000   -0.1058512   0.3558512
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   LNS                  NA                0.2295082    0.1232074   0.3358090
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          Control              NA                0.2045455    0.1201904   0.2889005
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          LNS                  NA                0.1920530    0.1557449   0.2283610
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Control              NA                0.2500000    0.0490670   0.4509330
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Maternal             NA                0.2424242    0.0652567   0.4195918
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                0.3636364    0.0138699   0.7134028
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Maternal             NA                0.2352941   -0.0159414   0.4865296
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Control              NA                0.3846154    0.0358209   0.7334098
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Maternal             NA                0.2400000    0.0130284   0.4669716
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Control              NA                0.1214575    0.0651800   0.1777349
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            LNS                  NA                0.1340580    0.0856306   0.1824854
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Other                NA                0.1091703    0.0701154   0.1482252
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                0.0989583    0.0428416   0.1550750
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   LNS                  NA                0.0859729    0.0375637   0.1343820
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Other                NA                0.0757576    0.0278675   0.1236476
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Control              NA                0.1125000    0.0059399   0.2190601
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          LNS                  NA                0.0338983   -0.0342786   0.1020752
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Other                NA                0.0458015    0.0100627   0.0815404


### Parameter: E(Y)


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                NA                   NA                0.0860430   0.0780522   0.0940339
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       NA                   NA                0.0973472   0.0865389   0.1081555
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              NA                   NA                0.1038275   0.0875061   0.1201490
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                NA                   NA                0.0732323   0.0443597   0.1021050
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       NA                   NA                0.0938511   0.0589903   0.1287119
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              NA                   NA                0.0526316   0.0112370   0.0940262
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           NA                   NA                0.0666667   0.0328487   0.1004847
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             NA                   NA                0.0363636   0.0198564   0.0528709
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           NA                   NA                0.0709220   0.0284013   0.1134427
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             NA                   NA                0.0425000   0.0227064   0.0622936
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    NA                   NA                0.0469799   0.0128901   0.0810696
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           NA                   NA                0.0761750   0.0613680   0.0909821
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             NA                   NA                0.0331492   0.0069958   0.0593026
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    NA                   NA                0.0833333   0.0336753   0.1329914
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           NA                   NA                0.0538922   0.0296396   0.0781449
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             NA                   NA                0.0518854   0.0469180   0.0568528
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    NA                   NA                0.0631947   0.0548665   0.0715229
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           NA                   NA                0.0824574   0.0701854   0.0947295
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             NA                   NA                0.0548523   0.0444313   0.0652734
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    NA                   NA                0.0566150   0.0442682   0.0689618
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           NA                   NA                0.0597381   0.0393523   0.0801239
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            NA                   NA                0.0996441   0.0794128   0.1198755
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   NA                   NA                0.1363636   0.0719394   0.2007879
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          NA                   NA                0.1709402   0.1226026   0.2192778
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            NA                   NA                0.1194969   0.0689187   0.1700750
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   NA                   NA                0.2173913   0.1193550   0.3154276
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          NA                   NA                0.1940850   0.1607277   0.2274424
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            NA                   NA                0.2463768   0.1116131   0.3811406
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   NA                   NA                0.2857143   0.0778687   0.4935599
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          NA                   NA                0.2894737   0.0972009   0.4817465
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            NA                   NA                0.1192661   0.0925518   0.1459803
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   NA                   NA                0.0847914   0.0553000   0.1142828
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          NA                   NA                0.0629630   0.0232381   0.1026879


### Parameter: RR


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level            estimate          ci_lower           ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  -----------------  ----------------  -----------------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Maternal             Control                  0.8947605         0.7434346          1.0768888
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Maternal             Control                  0.7332392         0.5839310          0.9207247
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Maternal             Control                  0.9754380         0.7123989          1.3355992
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                LNS                  Control                  0.6041667         0.2089629          1.7468049
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Other                Control                  0.5753968         0.2413207          1.3719565
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       LNS                  Control                  1.9662918         0.3958513          9.7670604
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Other                Control                  3.2758616         0.7199408         14.9057663
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Control              Control                  1.0000000         1.0000000          1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              LNS                  Control                  0.0000000         0.0000000          0.0000001
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Other                Control                  0.5438596         0.1153985          2.5631481
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           Control              Control                  1.0000000         1.0000000          1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           LNS                  Control                  0.9435484         0.3384316          2.6306159
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             LNS                  Control                  0.5833333         0.1684272          2.0203258
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Other                Control                  0.6611111         0.2344948          1.8638705
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           LNS                  Control                  1.5000000         0.2921817          7.7006885
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Other                Control                  0.8450704         0.1625065          4.3945572
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             LNS                  Control                  1.0417941         0.3068343          3.5372020
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    LNS                  Control           16927400.8719943   7330736.3737138   39087055.6072160
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           LNS                  Control                  0.7910096         0.4890541          1.2794008
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Maternal             Control                  0.9193548         0.1725861          4.8973442
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Maternal             Control                  1.0352113         0.3066253          3.4950230
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Control              Control                  1.0000000         1.0000000          1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Maternal             Control                  0.6739631         0.2730670          1.6634242
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Maternal             Control                  0.8816694         0.7284555          1.0671083
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Maternal             Control                  0.8548083         0.6531880          1.1186629
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Maternal             Control                  0.7422799         0.5552484          0.9923118
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             LNS                  Control                  1.4348659         0.8350314          2.4655843
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Other                Control                  1.1449745         0.6837276          1.9173815
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    LNS                  Control                  0.5221271         0.2826423          0.9645290
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Other                Control                  0.8345944         0.5148278          1.3529724
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Control              Control                  1.0000000         1.0000000          1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           LNS                  Control                  0.8155922         0.3060437          2.1735149
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Other                Control                  0.8490012         0.3879354          1.8580489
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            LNS                  Control                  0.9606541         0.5291627          1.7439933
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Other                Control                  0.9916774         0.5962196          1.6494326
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   LNS                  Control                  0.5032258         0.1318750          1.9202748
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Other                Control                  0.6867925         0.2398314          1.9667308
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          LNS                  Control                  1.0585714         0.5009481          2.2369052
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Other                Control                  0.9056075         0.4437086          1.8483413
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            LNS                  Control                  0.7055118         0.2734929          1.8199628
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   LNS                  Control                  1.8360656         0.2735204         12.3249912
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          Control              Control                  1.0000000         1.0000000          1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          LNS                  Control                  0.9389257         0.5964923          1.4779428
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Maternal             Control                  0.9696970         0.3270852          2.8748230
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Maternal             Control                  0.6470588         0.1532865          2.7313890
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Maternal             Control                  0.6240000         0.1683867          2.3123917
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            LNS                  Control                  1.1037440         0.6125469          1.9888284
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Other                Control                  0.8988355         0.5002727          1.6149298
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   LNS                  Control                  0.8687783         0.3906881          1.9319138
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Other                Control                  0.7655502         0.3274924          1.7895594
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Control              Control                  1.0000000         1.0000000          1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          LNS                  Control                  0.3013183         0.0326310          2.7824098
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Other                Control                  0.4071247         0.1194851          1.3872066


### Parameter: PAR


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Control              NA                -0.0048051   -0.0128451    0.0032349
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                -0.0151064   -0.0260435   -0.0041692
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Control              NA                -0.0012961   -0.0176844    0.0150921
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Control              NA                -0.0302160   -0.0831477    0.0227158
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                 0.0538511   -0.0005602    0.1082625
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Control              NA                -0.0441426   -0.1302761    0.0419908
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           Control              NA                -0.0017094   -0.0317674    0.0283486
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Control              NA                -0.0140565   -0.0468674    0.0187544
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Control              NA                 0.0042553   -0.0758556    0.0843663
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             Control              NA                 0.0014041   -0.0399709    0.0427791
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    Control              NA                 0.0469799    0.0128901    0.0810696
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           Control              NA                -0.0160580   -0.0515562    0.0194402
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Control              NA                -0.0019385   -0.0410961    0.0372190
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Control              NA                 0.0017007   -0.0579021    0.0613034
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Control              NA                -0.0144839   -0.0493588    0.0203911
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Control              NA                -0.0032779   -0.0082684    0.0017125
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                -0.0050243   -0.0134531    0.0034044
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Control              NA                -0.0123955   -0.0248791    0.0000881
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Control              NA                 0.0087358   -0.0086157    0.0260873
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                -0.0151553   -0.0372767    0.0069661
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Control              NA                -0.0079089   -0.0423463    0.0265285
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Control              NA                -0.0014197   -0.0393526    0.0365132
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.0559441   -0.1838578    0.0719697
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Control              NA                -0.0044984   -0.0902747    0.0812779
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            Control              NA                -0.0367531   -0.1466348    0.0731285
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   Control              NA                 0.0923913   -0.1324326    0.3172152
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          Control              NA                -0.0104604   -0.0873601    0.0664393
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Control              NA                -0.0036232   -0.1318543    0.1246079
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.0779221   -0.3442916    0.1884475
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Control              NA                -0.0951417   -0.3701865    0.1799031
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Control              NA                -0.0021914   -0.0501361    0.0457532
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.0141669   -0.0630768    0.0347429
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Control              NA                -0.0495370   -0.1278912    0.0288172


### Parameter: PAF


agecat      studyid                     country      intXhfoodsec                     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------  -------------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Secure_Birth                Control              NA                -0.0558455   -0.1531348    0.0332355
Birth       kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                -0.1551802   -0.2743646   -0.0471426
Birth       kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_Birth              Control              NA                -0.0124835   -0.1831720    0.1335808
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Secure_Birth                Control              NA                -0.4126040   -1.2819017    0.1255319
Birth       kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_Birth       Control              NA                 0.5737930   -0.6338396    0.8888187
Birth       kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_Birth              Control              NA                -0.8387097   -3.0256704    0.1601764
6 months    iLiNS_DYADM_LNS             MALAWI       Food Insecure_6 months           Control              NA                -0.0256410   -0.5916328    0.3390815
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_6 months             Control              NA                -0.3865546   -1.6286177    0.2686142
6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_6 months           Control              NA                 0.0600000   -2.1244761    0.7172006
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Secure_6 months             Control              NA                 0.0330379   -1.6460838    0.6466417
6 months    ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_6 months    Control              NA                 0.9999999    0.9999998    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_6 months           Control              NA                -0.2108036   -0.7770717    0.1750219
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Secure_6 months             Control              NA                -0.0584795   -2.2285484    0.6529775
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Mildly Food Insecure_6 months    Control              NA                 0.0204082   -1.0328276    0.5279481
6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Food Insecure_6 months           Control              NA                -0.2687559   -1.0967852    0.2322811
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Secure_6 months             Control              NA                -0.0631767   -0.1633868    0.0284016
6 months    kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                -0.0795056   -0.2244747    0.0483001
6 months    kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_6 months           Control              NA                -0.1503264   -0.3058030   -0.0133618
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Secure_6 months             Control              NA                 0.1592606   -0.2260349    0.4234726
6 months    kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_6 months    Control              NA                -0.2676908   -0.7272291    0.0695850
6 months    kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_6 months           Control              NA                -0.1323932   -0.8796286    0.3177831
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Secure_24 months            Control              NA                -0.0142477   -0.4762055    0.3031469
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.4102564   -1.7210020    0.2690843
24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Food Insecure_24 months          Control              NA                -0.0263158   -0.6734201    0.3705561
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Secure_24 months            Control              NA                -0.3075658   -1.6296451    0.3498255
24 months   ki1148112-iLiNS-DOSE        MALAWI       Mildly Food Insecure_24 months   Control              NA                 0.4250000   -2.4009733    0.9027852
24 months   ki1148112-iLiNS-DOSE        MALAWI       Food Insecure_24 months          Control              NA                -0.0538961   -0.5347957    0.2763226
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Secure_24 months            Control              NA                -0.0147059   -0.6925896    0.3916848
24 months   kiGH5241-JiVitA-3           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.2727273   -1.6610633    0.3912829
24 months   kiGH5241-JiVitA-3           BANGLADESH   Food Insecure_24 months          Control              NA                -0.3286713   -1.7294861    0.3532235
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Secure_24 months            Control              NA                -0.0183743   -0.5109348    0.3136128
24 months   kiGH5241-JiVitA-4           BANGLADESH   Mildly Food Insecure_24 months   Control              NA                -0.1670800   -0.9216573    0.2911973
24 months   kiGH5241-JiVitA-4           BANGLADESH   Food Insecure_24 months          Control              NA                -0.7867647   -2.1905149   -0.0006310
