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
![](/tmp/efeaa753-cd2e-479a-b1df-d477e6482756/eb8e9934-a905-40f4-8733-aa184ff46038/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/efeaa753-cd2e-479a-b1df-d477e6482756/eb8e9934-a905-40f4-8733-aa184ff46038/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6618456   0.5959790   0.7277121
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3613137   0.3195660   0.4030614
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2766819   0.1882336   0.3651302
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2113464   0.1444272   0.2782656
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0957273   0.0452046   0.1462500
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2876383   0.2743835   0.3008931
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.5278749   0.4583204   0.5974295
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1405300   0.1236893   0.1573706
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2212548   0.1973870   0.2451227
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.3310331   0.2656708   0.3963953
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0953395   0.0219661   0.1687130
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.2113464   0.1444272   0.2782656
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0842148   0.0374196   0.1310099
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1575757   0.1469134   0.1682380


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
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0228609   0.9691965   1.0794967
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0088292   0.9899741   1.0280433
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8698653   0.6385022   1.1850635
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0427158   0.8970655   1.2120143
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.6902870   0.4601018   1.0356321
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9308274   0.9041080   0.9583365
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0350780   0.9616641   1.1140965
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0159675   0.9868582   1.0459356
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.8482448   0.7657449   0.9396331
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0484723   0.9373834   1.1727264
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.7034378   0.7974335   3.6387990
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0427158   0.8970655   1.2120143
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.7721025   0.5058043   1.1786025
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0128973   0.9950304   1.0310851


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0151304   -0.0204622    0.0507230
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0031901   -0.0036204    0.0100006
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0360059   -0.1215848    0.0495729
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0090278   -0.0217312    0.0397868
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0296480   -0.0696066    0.0103106
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0198967   -0.0282384   -0.0115550
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0185168   -0.0202459    0.0572796
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0022439   -0.0018470    0.0063349
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0335766   -0.0560555   -0.0110976
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0160460   -0.0210061    0.0530980
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0670654   -0.0056126    0.1397435
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0090278   -0.0217312    0.0397868
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0191923   -0.0555761    0.0171914
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0020323   -0.0007716    0.0048362


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0223499   -0.0317825    0.0736423
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0087519   -0.0101274    0.0272784
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1496032   -0.5661653    0.1561634
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0409659   -0.1147458    0.1749272
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.4486728   -1.1734322    0.0344061
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0743130   -0.1060626   -0.0434749
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0338893   -0.0398642    0.1024116
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0157166   -0.0133169    0.0439182
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.1789049   -0.3059179   -0.0642451
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0462314   -0.0667993    0.1472862
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.4129518   -0.2540231    0.7251841
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0409659   -0.1147458    0.1749272
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.2951649   -0.9770493    0.1515375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0127331   -0.0049944    0.0301480
