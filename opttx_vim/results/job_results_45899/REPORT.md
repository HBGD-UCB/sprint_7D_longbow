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

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        vagbrth    ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       17     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      185     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      158     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0       38     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    1       32     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0      158     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1      181     409
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      132     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1       27     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0      433     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1       95     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      181     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       21     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      245     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       49     496
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      174    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       38    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1712    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      431    2355
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0      792    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    1       55    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0     6824    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1      442    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      941   12356
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       97   12356
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0    10070   12356
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1248   12356
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      653   12953
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1       88   12953
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    10042   12953
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2170   12953
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       62    1180
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       21    1180
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      786    1180
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      311    1180
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       15     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      227     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      100     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0       42     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    1       25     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0      215     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    1      108     390
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      146     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1       12     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      501     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1       24     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      199     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        3     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      282     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        9     493
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      198    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       13    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1947    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      189    2347
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0      794    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    1       45    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0     6746    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1      394    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      952   11355
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       22   11355
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     9978   11355
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      403   11355
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0      688   12798
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1       39   12798
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    11145   12798
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1      926   12798
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0       77    1129
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1        2    1129
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1021    1129
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1       29    1129
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       22     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        3     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      252     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       96     373
6-24 months                   ki1000108-IRC              INDIA                          0                    0       57     410
6-24 months                   ki1000108-IRC              INDIA                          0                    1       13     410
6-24 months                   ki1000108-IRC              INDIA                          1                    0      226     410
6-24 months                   ki1000108-IRC              INDIA                          1                    1      114     410
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0      124     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1       19     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0      392     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1       80     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      176     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       18     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      232     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       46     472
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0      159    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       27    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0     1516    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      294    1996
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0      825    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    1       11    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0     7084    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    1       55    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      824   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       80   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     8788   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      913   10605
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      487    8516
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1       53    8516
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     6623    8516
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1353    8516
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0       63    1187
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       20    1187
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      809    1187
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      295    1187


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ef86321e-3bf0-440d-bb54-0ef13d34db55/4a308cc4-1628-4af0-97c3-738d11843edc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ef86321e-3bf0-440d-bb54-0ef13d34db55/4a308cc4-1628-4af0-97c3-738d11843edc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3284784   0.1343205   0.5226363
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.4543833   0.3358954   0.5728712
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2054806   0.1483755   0.2625856
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0978537   0.0576132   0.1380943
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1831230   0.1375291   0.2287169
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0601537   0.0440035   0.0763040
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0907316   0.0729336   0.1085296
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1303789   0.0977035   0.1630542
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2597613   0.0976977   0.4218248
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3257982   0.1896751   0.4619214
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                0.3803397   0.3196702   0.4410092
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0517655   0.0292668   0.0742642
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0660599   0.0379800   0.0941398
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0472204   0.0358251   0.0586156
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0196975   0.0110985   0.0282966
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0512995   0.0335266   0.0690723
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.1923939   0.0946075   0.2901802
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1433708   0.0856845   0.2010570
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0925031   0.0514410   0.1335652
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1379101   0.0926323   0.1831879
6-24 months                   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0076910   0.0062955   0.0090865
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0959419   0.0789980   0.1128857
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1089668   0.0719071   0.1460265
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2933324   0.1339568   0.4527081


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1411290   0.1104588   0.1717993
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1991507   0.1830179   0.2152836
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        observed             NA                0.0612597   0.0474556   0.0750638
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1088540   0.1033621   0.1143459
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1743226   0.1664929   0.1821522
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2813559   0.2510454   0.3116665
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.0860673   0.0747182   0.0974164
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0550194   0.0412334   0.0688054
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0374284   0.0339371   0.0409198
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.0754024   0.0701103   0.0806945
6-24 months                   ki1000108-IRC              INDIA                          observed             NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1355932   0.1046749   0.1665115
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1608216   0.1447012   0.1769421
6-24 months                   ki1119695-PROBIT           BELARUS                        observed             NA                0.0082759   0.0065972   0.0099545
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0936351   0.0880903   0.0991799
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1651010   0.1559407   0.1742613
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2653749   0.2359283   0.2948215


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.3732620   0.7734707   2.4381641
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           1.1461301   0.9031130   1.4545403
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8642360   0.6901651   1.0822104
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4422447   1.0209872   2.0373124
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0875245   0.8578417   1.3787038
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0183860   0.8795705   1.1791095
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1997363   0.9929175   1.4496342
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.3370459   1.0442705   1.7119049
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0831328   0.6006902   1.9530479
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9471243   0.6521071   1.3756090
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             optimal           0.8966342   0.8105091   0.9919111
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0182191   0.7649645   1.3553178
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3028678   0.8693396   1.9525910
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.1651628   0.9537233   1.4234782
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.9001595   1.2410461   2.9093248
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.4698478   1.0506559   2.0562893
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.6100102   0.9979749   2.5973930
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1227925   0.7845018   1.6069601
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4658237   1.0091673   2.1291206
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1661340   0.8523137   1.5955023
6-24 months                   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0760420   0.9614063   1.2043466
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9759563   0.8262885   1.1527337
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.5151490   1.0844458   2.1169121
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9046899   0.5454719   1.5004693


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1226085   -0.0657059    0.3109229
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0663991   -0.0417010    0.1744992
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0278969   -0.0743744    0.0185807
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0432753    0.0083445    0.0782061
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0160278   -0.0274645    0.0595200
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0011060   -0.0077131    0.0099251
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0181224    0.0009372    0.0353076
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0439437    0.0116354    0.0762520
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0215947   -0.1310090    0.1741983
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0172268   -0.1390964    0.1046428
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                -0.0393141   -0.0773585   -0.0012697
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0009431   -0.0138542    0.0157404
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0200074   -0.0068594    0.0468742
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0077990   -0.0026732    0.0182713
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0177309    0.0091872    0.0262747
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0241029    0.0068818    0.0413241
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.1173622    0.0248439    0.2098805
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0176049   -0.0338772    0.0690870
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0430901    0.0075069    0.0786733
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0229116   -0.0204031    0.0662262
6-24 months                   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0005848   -0.0003418    0.0015115
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0023068   -0.0182790    0.0136654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0561342    0.0196196    0.0926487
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0279575   -0.1771405    0.1212254


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.2718068   -0.2928738    0.5898553
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.1274987   -0.1072812    0.3124976
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1570914   -0.4489287    0.0759652
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3066364    0.0205558    0.5091573
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0804805   -0.1657162    0.2746810
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0180540   -0.1369185    0.1519023
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1664835   -0.0071330    0.3101708
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2520825    0.0423938    0.4158554
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0767522   -0.6647518    0.4879798
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0558276   -0.5334904    0.2730493
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                -0.1152820   -0.2337924   -0.0081549
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0178931   -0.3072502    0.2621657
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2324624   -0.1502985    0.4878600
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1417508   -0.0485222    0.2974954
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.4737284    0.1942281    0.6562776
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3196574    0.0482136    0.5136871
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.3788859   -0.0020292    0.6149986
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1093635   -0.2746944    0.3777070
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3177897    0.0090841    0.5303225
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1424656   -0.1732769    0.3732381
6-24 months                   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0706682   -0.0401430    0.1696742
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0246361   -0.2102311    0.1324970
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3399989    0.0778700    0.5276138
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1053511   -0.8332751    0.3335418
