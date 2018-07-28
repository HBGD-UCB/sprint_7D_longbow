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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        nchldlt5    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
6 months    ki1000108-IRC              INDIA                          1                 0       67     407
6 months    ki1000108-IRC              INDIA                          1                 1       22     407
6 months    ki1000108-IRC              INDIA                          2                 0       90     407
6 months    ki1000108-IRC              INDIA                          2                 1       29     407
6 months    ki1000108-IRC              INDIA                          3+                0      150     407
6 months    ki1000108-IRC              INDIA                          3+                1       49     407
24 months   ki1000108-IRC              INDIA                          1                 0       58     409
24 months   ki1000108-IRC              INDIA                          1                 1       31     409
24 months   ki1000108-IRC              INDIA                          2                 0       73     409
24 months   ki1000108-IRC              INDIA                          2                 1       46     409
24 months   ki1000108-IRC              INDIA                          3+                0      108     409
24 months   ki1000108-IRC              INDIA                          3+                1       93     409
Birth       ki1000108-IRC              INDIA                          1                 0       72     388
Birth       ki1000108-IRC              INDIA                          1                 1       12     388
Birth       ki1000108-IRC              INDIA                          2                 0      100     388
Birth       ki1000108-IRC              INDIA                          2                 1       14     388
Birth       ki1000108-IRC              INDIA                          3+                0      171     388
Birth       ki1000108-IRC              INDIA                          3+                1       19     388
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      357     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       69     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0      124     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1       24     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                0        8     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                1        1     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      298     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1      125     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0       83     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1       63     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0        6     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        2     577
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       14      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        4      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                 0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2                 1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3+                0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3+                1        0      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      400     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1      107     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      160     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                 1       43     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+                0        5     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+                1        0     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      276     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       81     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 0      103     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                 1       50     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+                0        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+                1        1     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1267    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1      124    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      503    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       64    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0       55    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1        7    2020
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1        0       6
6 months    ki1148112-LCNI-5           MALAWI                         1                 0      263     811
6 months    ki1148112-LCNI-5           MALAWI                         1                 1      127     811
6 months    ki1148112-LCNI-5           MALAWI                         2                 0      216     811
6 months    ki1148112-LCNI-5           MALAWI                         2                 1      142     811
6 months    ki1148112-LCNI-5           MALAWI                         3+                0       37     811
6 months    ki1148112-LCNI-5           MALAWI                         3+                1       26     811
24 months   ki1148112-LCNI-5           MALAWI                         1                 0      163     571
24 months   ki1148112-LCNI-5           MALAWI                         1                 1      120     571
24 months   ki1148112-LCNI-5           MALAWI                         2                 0      137     571
24 months   ki1148112-LCNI-5           MALAWI                         2                 1      107     571
24 months   ki1148112-LCNI-5           MALAWI                         3+                0       21     571
24 months   ki1148112-LCNI-5           MALAWI                         3+                1       23     571
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 0     7865   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                 1     4239   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                 0     5048   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                 1     1972   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                0      345   19591
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                1      122   19591
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0     8093   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2794   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0     4212   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1     1336   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                0      272   16800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                1       93   16800
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2892    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     2562    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     1401    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1     1548    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0       98    8622
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      121    8622


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1a9c2c76-8c04-4d83-aa2e-b2ebf1043061/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1a9c2c76-8c04-4d83-aa2e-b2ebf1043061/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1a9c2c76-8c04-4d83-aa2e-b2ebf1043061/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1a9c2c76-8c04-4d83-aa2e-b2ebf1043061/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1270962   0.0627593   0.1914331
Birth       ki1000108-IRC              INDIA                          2                    NA                0.1053088   0.0538958   0.1567218
Birth       ki1000108-IRC              INDIA                          3+                   NA                0.0981568   0.0567491   0.1395645
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3335663   0.3228234   0.3443091
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3227150   0.3060501   0.3393799
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2734372   0.2494363   0.2974381
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2277955   0.1492364   0.3063545
6 months    ki1000108-IRC              INDIA                          2                    NA                0.2071574   0.1419566   0.2723583
6 months    ki1000108-IRC              INDIA                          3+                   NA                0.2431780   0.1852699   0.3010861
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0926651   0.0777694   0.1075608
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1412082   0.1228823   0.1595342
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2363670   0.1999990   0.2727350
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3189516   0.2762814   0.3616219
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3809051   0.3351893   0.4266210
6 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                0.3479373   0.2751821   0.4206924
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2503546   0.2402854   0.2604239
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2744813   0.2573148   0.2916478
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2530175   0.2250933   0.2809416
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3325499   0.2451477   0.4199521
24 months   ki1000108-IRC              INDIA                          2                    NA                0.3753997   0.2964266   0.4543728
24 months   ki1000108-IRC              INDIA                          3+                   NA                0.4538826   0.3881315   0.5196337
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4252494   0.3731823   0.4773166
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4245620   0.3696382   0.4794858
24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.4723044   0.3901312   0.5544776
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4651010   0.4486346   0.4815675
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5145228   0.4899941   0.5390514
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5957123   0.5607138   0.6307107


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232607   0.3156042   0.3309171
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3637485   0.3306185   0.3968784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2513690   0.2432434   0.2594947
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4378284   0.3971000   0.4785567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907214   0.4775947   0.5038481


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          2                    1                 0.8285757   0.4106706   1.6717478
Birth       ki1000108-IRC              INDIA                          3+                   1                 0.7723033   0.3997984   1.4918830
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9674689   0.9109686   1.0274734
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8197387   0.7462310   0.9004874
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 0.9094011   0.5705130   1.4495908
6 months    ki1000108-IRC              INDIA                          3+                   1                 1.0675278   0.7023049   1.6226795
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.5238555   1.2415726   1.8703180
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 2.5507664   2.0446134   3.1822199
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.1942410   1.0020496   1.4232944
6 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 1.0908779   0.8544474   1.3927299
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0963698   1.0205453   1.1778278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.0106363   0.9003513   1.1344302
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                 1.1288521   0.8064555   1.5801334
24 months   ki1000108-IRC              INDIA                          3+                   1                 1.3648556   1.0109312   1.8426881
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.9983834   0.8424354   1.1831999
24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.1106526   0.9025394   1.3667539
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1062602   1.0464818   1.1694534
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.2808234   1.1972231   1.3702613


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0111168   -0.0667808    0.0445472
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0103056   -0.0170368   -0.0035744
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0179048   -0.0519946    0.0878042
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0038695   -0.0054677    0.0132068
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0447968    0.0137232    0.0758704
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0010144   -0.0051254    0.0071542
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0830980    0.0038706    0.1623254
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0125789   -0.0229409    0.0480988
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0256204    0.0154325    0.0358083


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0958517   -0.6989389    0.2931523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0318801   -0.0528425   -0.0113351
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0728725   -0.2591136    0.3173249
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0400846   -0.0610741    0.1315991
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1231533    0.0340735    0.2040181
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0040355   -0.0206893    0.0281614
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1999241   -0.0135035    0.3684072
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0287303   -0.0557189    0.1064242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0522097    0.0311980    0.0727656
