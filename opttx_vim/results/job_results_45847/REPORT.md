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
![](/tmp/3f33fb9e-6ef5-4aa1-accf-6fd505b5b057/a04c53cb-98e4-4e7a-bd01-c18e42349fca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f33fb9e-6ef5-4aa1-accf-6fd505b5b057/a04c53cb-98e4-4e7a-bd01-c18e42349fca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6274092   0.5328523   0.7219661
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3984717   0.3329886   0.4639548
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3264469   0.2377854   0.4151083
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6238088   0.5030408   0.7445769
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.5330519   0.5134459   0.5526579
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4206055   0.3522776   0.4889334
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1728681   0.0966774   0.2490589
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2880649   0.1212805   0.4548492
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4178303   0.3914437   0.4442169
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2837103   0.1510625   0.4163581
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2618449   0.2174500   0.3062398
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3233822   0.2488995   0.3978649
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5633176   0.4194694   0.7071657
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2011201   0.1894290   0.2128112


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
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2174672   0.1935626   0.2413719
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3700418   0.3180183   0.4220652
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5924051   0.5438847   0.6409254
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2019400   0.1906597   0.2132204


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0187534   0.9014066   1.1513765
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8599290   0.7383817   1.0014846
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1335435   0.9756600   1.3169761
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0063232   0.8418213   1.2029708
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9498407   0.9157431   0.9852078
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0131033   0.9247167   1.1099381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1427928   0.7433311   1.7569228
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2209894   0.7389667   2.0174320
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0326012   0.9701827   1.0990355
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.3085796   0.8705317   1.9670513
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8305193   0.7197357   0.9583550
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.1442860   1.0254880   1.2768462
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0516361   0.8292394   1.3336781
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0040769   0.9897960   1.0185639


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0117660   -0.0650096    0.0885417
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0558143   -0.1165532    0.0049246
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0435949   -0.0009774    0.0881671
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0039445   -0.1073935    0.1152824
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0267375   -0.0461135   -0.0073616
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0055113   -0.0328846    0.0439072
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0246843   -0.0496964    0.0990650
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0636593   -0.0795301    0.2068487
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0136218   -0.0124691    0.0397126
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0875472   -0.0279641    0.2030585
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0443777   -0.0815874   -0.0071679
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0466595    0.0153775    0.0779416
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0290875   -0.1046488    0.1628238
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0008200   -0.0020599    0.0036998


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0184082   -0.1093772    0.1314744
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1628867   -0.3543130    0.0014824
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1178107   -0.0249472    0.2406848
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0062835   -0.1879005    0.1687246
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0528082   -0.0920093   -0.0150143
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0129339   -0.0814123    0.0990489
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1249507   -0.3452956    0.4308230
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1809921   -0.3532409    0.5043203
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0315719   -0.0307337    0.0901113
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.2358126   -0.1487232    0.4916249
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2040660   -0.3893990   -0.0434546
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.1260926    0.0248545    0.2168203
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0491007   -0.2059243    0.2501939
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0040604   -0.0103092    0.0182255
