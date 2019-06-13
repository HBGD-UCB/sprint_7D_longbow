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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        nchldlt5    ever_wasted   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki1000108-IRC              INDIA                          1                     0       25    291
0-24 months   ki1000108-IRC              INDIA                          1                     1       64    291
0-24 months   ki1000108-IRC              INDIA                          2+                    0       69    291
0-24 months   ki1000108-IRC              INDIA                          2+                    1      133    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      327    524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      185    524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        6    524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        6    524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      368    547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      173    547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4    547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2    547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1242   1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      395   1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       61   1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       18   1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      207    481
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       55    481
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      168    481
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       51    481
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      366    454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       25    454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       58    454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        5    454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     6226   8807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2269   8807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      223   8807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1       89   8807
0-6 months    ki1000108-IRC              INDIA                          1                     0       37    291
0-6 months    ki1000108-IRC              INDIA                          1                     1       52    291
0-6 months    ki1000108-IRC              INDIA                          2+                    0       95    291
0-6 months    ki1000108-IRC              INDIA                          2+                    1      107    291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      375    524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      137    524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0        8    524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1        4    524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      404    547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137    547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4    547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2    547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1407   1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      230   1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       64   1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       15   1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0      121    145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        1    145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0       23    145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0    145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0     6866   8765
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1588   8765
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      254   8765
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1       57   8765
6-24 months   ki1000108-IRC              INDIA                          1                     0       56    291
6-24 months   ki1000108-IRC              INDIA                          1                     1       33    291
6-24 months   ki1000108-IRC              INDIA                          2+                    0      134    291
6-24 months   ki1000108-IRC              INDIA                          2+                    1       68    291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      380    458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       68    458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        8    458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2    458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      460    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       60    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        1    525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1154   1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      229   1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       58   1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        6   1447
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      207    481
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1       55    481
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      168    481
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1       51    481
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      360    446
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       24    446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       57    446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        5    446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     4651   5714
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      872   5714
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      151   5714
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1       40   5714


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

* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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
![](/tmp/40e903d1-1e97-49fe-8856-7cb713b386a5/9cc86027-dcc2-45c8-bfdb-c593db2d3008/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40e903d1-1e97-49fe-8856-7cb713b386a5/9cc86027-dcc2-45c8-bfdb-c593db2d3008/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6600106   0.5940576   0.7259636
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.4237543   0.3799575   0.4675512
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2969620   0.2128186   0.3811053
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2113464   0.1444272   0.2782656
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.1214842   0.0701333   0.1728352
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2756318   0.2634574   0.2878061
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.5297030   0.4602396   0.5991663
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1405300   0.1236873   0.1573727
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2260008   0.1996815   0.2523201
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3293214   0.2638910   0.3947519
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0957784   0.0222991   0.1692576
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2113464   0.1444272   0.2782656
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0625943   0.0383341   0.0868546
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1572451   0.1466695   0.1678207


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6769759   0.6231548   0.7307971
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3645038   0.3232556   0.4057520
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2406760   0.2204437   0.2609083
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2203742   0.1753372   0.2654112
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0660793   0.0432029   0.0889556
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2677416   0.2574329   0.2780502
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.5463918   0.4890935   0.6036900
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1427739   0.1262166   0.1593311
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1876783   0.1782550   0.1971016
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3470790   0.2922900   0.4018681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1624050   0.1433950   0.1814149
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2203742   0.1753372   0.2654112
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0650224   0.0421137   0.0879311
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1596080   0.1492650   0.1699509


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0257047   0.9712109   1.0832560
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8601772   0.8152247   0.9076085
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8104606   0.6171784   1.0642732
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0427158   0.8970655   1.2120143
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.5439331   0.3854776   0.7675238
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9713741   0.9487026   0.9945874
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0315060   0.9587580   1.1097738
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0159673   0.9869266   1.0458626
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.8304318   0.7415642   0.9299491
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0539218   0.9408100   1.1806328
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.6956334   0.7956817   3.6134706
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0427158   0.8970655   1.2120143
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0387907   0.8851800   1.2190584
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0150267   0.9984626   1.0318656


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0169654   -0.0189844    0.0529151
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0592505   -0.0801463   -0.0383548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0562860   -0.1372260    0.0246540
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0090278   -0.0217312    0.0397868
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0554049   -0.0968256   -0.0139843
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0078902   -0.0143918   -0.0013886
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0166888   -0.0219942    0.0553718
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0022439   -0.0018370    0.0063248
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0383226   -0.0636740   -0.0129711
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0177576   -0.0196058    0.0551210
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0666266   -0.0061537    0.1394069
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0090278   -0.0217312    0.0397868
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0024281   -0.0076212    0.0124773
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0023629   -0.0002251    0.0049508


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0250605   -0.0296424    0.0768572
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1625512   -0.2266557   -0.1017967
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2338662   -0.6202771    0.0603916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0409659   -0.1147458    0.1749272
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.8384613   -1.5941843   -0.3028912
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0294695   -0.0540712   -0.0054421
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0305437   -0.0430160    0.0989155
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0157164   -0.0132466    0.0438515
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.2041928   -0.3485009   -0.0753276
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0511630   -0.0629139    0.1529966
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.4102499   -0.2567839    0.7232577
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0409659   -0.1147458    0.1749272
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0373421   -0.1297138    0.1796948
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0148043   -0.0015398    0.0308816
