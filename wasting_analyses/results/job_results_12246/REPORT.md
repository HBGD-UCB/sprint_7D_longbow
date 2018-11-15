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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

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
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0     1812   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    1      138   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0    13855   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    1     1072   16877
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     1044   13510
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       97   13510
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0    11121   13510
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1248   13510
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1301   26408
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      189   26408
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    20628   26408
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     4290   26408
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      291    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       79    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3007    4499
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1122    4499
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
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0     1817   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    1      118   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0    13778   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    1      944   16657
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     1107   13251
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       22   13251
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0    11719   13251
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      403   13251
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1387   26158
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1       71   26158
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    22893   26158
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     1807   26158
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      347    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       11    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3907    4380
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      115    4380
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
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0     1898   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    1       21   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0    14533   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    1      146   16598
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      824   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1       80   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     8788   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      913   10605
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      989   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      124   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    13399   17212
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     2700   17212
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      296    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       73    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     3079    4510
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1062    4510


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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ecf23a3e-b6d0-4bba-a29c-8d606ed0c190/b7312172-20ed-40d8-ba59-919f0112326b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ecf23a3e-b6d0-4bba-a29c-8d606ed0c190/b7312172-20ed-40d8-ba59-919f0112326b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ecf23a3e-b6d0-4bba-a29c-8d606ed0c190/b7312172-20ed-40d8-ba59-919f0112326b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ecf23a3e-b6d0-4bba-a29c-8d606ed0c190/b7312172-20ed-40d8-ba59-919f0112326b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368958   0.5031042
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4606414   0.4078197   0.5134631
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.4571429   0.3403007   0.5739850
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.5339233   0.4807556   0.5870910
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1698113   0.1114080   0.2282146
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1799242   0.1471359   0.2127126
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1039604   0.0618288   0.1460920
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1666667   0.1240238   0.2093095
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1792453   0.1276033   0.2308873
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2011199   0.1841454   0.2180944
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0707692   0.0575888   0.0839496
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0718162   0.0594240   0.0842084
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0850131   0.0688297   0.1011966
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1008974   0.0955893   0.1062055
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1268456   0.1076882   0.1460031
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1721647   0.1667234   0.1776060
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2135135   0.1547580   0.2722690
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2717365   0.2562153   0.2872577
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3478261   0.1529008   0.5427514
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3058104   0.2558000   0.3558208
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.3731343   0.2571797   0.4890889
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.3343653   0.2828504   0.3858802
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0759494   0.0346115   0.1172872
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0457143   0.0278349   0.0635936
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0616114   0.0291609   0.0940619
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0884831   0.0764369   0.1005294
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0609819   0.0483778   0.0735860
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0641217   0.0523069   0.0759365
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0194863   0.0114230   0.0275495
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0332453   0.0300538   0.0364369
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0486968   0.0359850   0.0614087
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0731579   0.0694023   0.0769135
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0307263   0.0032182   0.0582343
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0285927   0.0232597   0.0339258
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.1857143   0.0945047   0.2769239
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.3352941   0.2850522   0.3855361
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1328671   0.0771890   0.1885453
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1694915   0.1356167   0.2033663
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0927835   0.0519141   0.1336529
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1654676   0.1217391   0.2091961
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1451613   0.0945243   0.1957983
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1624309   0.1454343   0.1794275
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                0.0109432   0.0060621   0.0158243
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                0.0099462   0.0069093   0.0129830
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0884956   0.0699805   0.1070106
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0941140   0.0883034   0.0999247
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1114106   0.0907564   0.1320648
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1677123   0.1613333   0.1740912
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1978320   0.1415736   0.2540904
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2564598   0.2413023   0.2716173


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1411290   0.1104588   0.1717993
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1991507   0.1830179   0.2152836
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0995559   0.0945070   0.1046048
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1696077   0.1642813   0.1749341
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2669482   0.2519234   0.2819730
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0860673   0.0747182   0.0974164
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0320731   0.0290730   0.0350731
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0717945   0.0681352   0.0754538
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0287671   0.0234680   0.0340662
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1355932   0.1046749   0.1665115
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1608216   0.1447012   0.1769421
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0936351   0.0880903   0.0991799
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640716   0.1579211   0.1702221
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2516630   0.2368610   0.2664649


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4395044   0.8030978   2.580225
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 1.1679572   0.8877643   1.536584
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0595539   0.7179331   1.563731
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6031746   0.9927383   2.588969
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1220375   0.8310464   1.514919
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 1.0147937   0.8693114   1.184623
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1868447   0.9741384   1.445996
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3572773   1.1658648   1.580116
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2726899   0.9607719   1.685873
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8792049   0.4904064   1.576246
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.8960991   0.6334601   1.267631
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.6019048   0.3079286   1.176537
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4361495   0.8335668   2.474337
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 1.0514876   0.8727959   1.266764
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.7060903   1.1156357   2.609046
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5023128   1.1549578   1.954135
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9305637   0.3699269   2.340865
6-24 months                   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA                          1                    0                 1.8054299   1.0803876   3.017044
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2756467   0.8018618   2.029370
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.7833732   1.0669775   2.980775
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1189685   0.7774146   1.610583
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0                 0.9088915   0.5432223   1.520711
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0634883   0.8550587   1.322725
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5053530   1.2464932   1.817970
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2963516   0.9714678   1.729885


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1310870   -0.0465745   0.3087484
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.0636395   -0.0427971   0.1700762
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0077724   -0.0437050   0.0592497
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0371686    0.0015328   0.0728045
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0199055   -0.0295618   0.0693727
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0009260   -0.0088204   0.0106724
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0145427   -0.0010508   0.0301363
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0427621    0.0243389   0.0611853
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0534347   -0.0024178   0.1092871
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0392547   -0.2272721   0.1487628
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0321087   -0.1372038   0.0729864
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0232407   -0.0578738   0.0113923
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244559   -0.0070480   0.0559598
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0027751   -0.0074730   0.0130231
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0125868    0.0046535   0.0205201
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0230976    0.0107904   0.0354049
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0019591   -0.0278993   0.0239810
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.1240418    0.0375165   0.2105672
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0281085   -0.0219257   0.0781426
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0428097    0.0074091   0.0782103
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0156603   -0.0327762   0.0640968
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0008817   -0.0057304   0.0039669
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0051395   -0.0126118   0.0228908
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0526610    0.0325472   0.0727748
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0538310    0.0007392   0.1069228


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2906024   -0.2363609   0.5929627
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.1221999   -0.1082930   0.3047569
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0437674   -0.2947761   0.2937923
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2633663   -0.0308441   0.4736069
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0999517   -0.1860012   0.3169595
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0129154   -0.1321641   0.1394039
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1460761   -0.0256689   0.2890630
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2521233    0.1349194   0.3534481
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2001688   -0.0402976   0.3850510
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1272142   -0.9353750   0.3434803
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0941533   -0.4501527   0.1744515
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.4409282   -1.2534830   0.0786377
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2841490   -0.1909202   0.5697087
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0435257   -0.1287879   0.1895350
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3924410    0.0910901   0.5938784
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3217188    0.1264435   0.4733422
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0681032   -1.4789041   0.5397787
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.4004499    0.0490764   0.6219883
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1746133   -0.2012267   0.4328604
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3157216    0.0093735   0.5273325
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0973770   -0.2599961   0.3533882
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0876361   -0.7053778   0.3063401
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0548886   -0.1550147   0.2266458
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3209634    0.1868215   0.4329773
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2139011   -0.0299002   0.3999890
