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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        nchldlt5    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                      0       35     291
0-24 months   ki1000108-IRC              INDIA                          1                      1       54     291
0-24 months   ki1000108-IRC              INDIA                          2+                     0       70     291
0-24 months   ki1000108-IRC              INDIA                          2+                     1      132     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      295     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      217     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0        9     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        3     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      298     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      243     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        4     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        2     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1077    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      560    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       51    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       28    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      711    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      362    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      496    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      347    1916
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      145     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      246     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       24     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1       39     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     8565   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     8849   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      348   18054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      292   18054
0-6 months    ki1000108-IRC              INDIA                          1                      0       49     291
0-6 months    ki1000108-IRC              INDIA                          1                      1       40     291
0-6 months    ki1000108-IRC              INDIA                          2+                     0      118     291
0-6 months    ki1000108-IRC              INDIA                          2+                     1       84     291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      384     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      128     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     0       10     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     1        2     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      386     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1      155     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        6     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1311    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      326    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       66    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       13    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0       81     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1       41     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     0       13     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     1       10     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     9822   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     7541   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      413   18002
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1      226   18002
6-24 months   ki1000108-IRC              INDIA                          1                      0       35     167
6-24 months   ki1000108-IRC              INDIA                          1                      1       14     167
6-24 months   ki1000108-IRC              INDIA                          2+                     0       70     167
6-24 months   ki1000108-IRC              INDIA                          2+                     1       48     167
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      238     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       89     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0        7     335
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        1     335
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      280     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       88     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        3     373
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        2     373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      858    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      234    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       38    1145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1       15    1145
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      711    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1      362    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      496    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1      347    1916
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      138     395
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1      205     395
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       23     395
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1       29     395
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     5247    6804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1308    6804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      183    6804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1       66    6804


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3aed4e3a-3034-458b-b396-57941bdd624a/96f1c95b-96c2-4157-b4db-fe1dbdc78be7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3aed4e3a-3034-458b-b396-57941bdd624a/96f1c95b-96c2-4157-b4db-fe1dbdc78be7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6557255   0.5636624   0.7477887
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4407079   0.3648608   0.5165550
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3251506   0.2446786   0.4056226
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6690374   0.5687529   0.7693219
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.5135345   0.4942021   0.5328669
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4176395   0.3495151   0.4857640
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1588267   0.0827412   0.2349122
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.3043894   0.1381697   0.4706090
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4288268   0.4025942   0.4550594
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2855563   0.1545868   0.4165258
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2126247   0.1883107   0.2369386
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3268360   0.2506269   0.4030450
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5594296   0.4271736   0.6916856
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1998644   0.1882199   0.2115088


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6391753   0.5839030   0.6944475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3426573   0.3201957   0.3651190
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3700418   0.3180183   0.4220652
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6277533   0.5832380   0.6722686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.5063144   0.4970144   0.5156143
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4261168   0.3692020   0.4830316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1975524   0.1787088   0.2163961
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3517241   0.2737325   0.4297157
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4314521   0.4224311   0.4404731
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3712575   0.2977607   0.4447542
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2174673   0.1935626   0.2413720
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3700418   0.3180183   0.4220652
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5924051   0.5438847   0.6409254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2019400   0.1906597   0.2132204


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           0.9747603   0.8715817   1.0901534
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.7775157   0.6605014   0.9152603
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1380627   1.0025854   1.2918467
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9382933   0.8155918   1.0794545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9859403   0.9512495   1.0218963
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0202982   0.9310534   1.1180974
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2438241   0.7796279   1.9844062
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1555072   0.7281203   1.8337588
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0061219   0.9468640   1.0690884
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.3001200   0.8727381   1.9367919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0227753   0.9942415   1.0521281
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1321941   1.0086386   1.2708850
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0589448   0.8510238   1.3176648
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0103854   0.9968108   1.0241448


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0165503   -0.0899072    0.0568066
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0980506   -0.1698344   -0.0262668
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0448912    0.0079165    0.0818658
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0412841   -0.1347697    0.0522015
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0072201   -0.0255946    0.0111544
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0084773   -0.0297495    0.0467041
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0387258   -0.0354685    0.1129200
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0473348   -0.0917935    0.1864630
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0026252   -0.0234141    0.0286646
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0857012   -0.0280567    0.1994590
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0048426   -0.0011807    0.0108659
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0432058    0.0090998    0.0773118
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0329755   -0.0892332    0.1551842
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0020757   -0.0006232    0.0047746


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                -0.0258932   -0.1473394    0.0826979
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2861476   -0.5140013   -0.0925854
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1213138    0.0025787    0.2259143
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0657649   -0.2261035    0.0736061
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0142602   -0.0512489    0.0214271
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0198943   -0.0740523    0.1056235
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1960278   -0.2826632    0.4960709
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1345792   -0.3733995    0.4546720
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0060847   -0.0561179    0.0646237
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.2308402   -0.1458192    0.4836823
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0222682   -0.0057919    0.0495454
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1167593    0.0085646    0.2131467
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0556637   -0.1750552    0.2410816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0102786   -0.0031994    0.0235756
