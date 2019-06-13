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
![](/tmp/34c55482-5ea3-44fc-b464-cacb1007bfde/d8329137-4f17-4897-ab0c-d70988ce1345/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34c55482-5ea3-44fc-b464-cacb1007bfde/d8329137-4f17-4897-ab0c-d70988ce1345/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3274235   0.1357199   0.5191270
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.4508862   0.3316953   0.5700771
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2022411   0.1458538   0.2586284
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0940239   0.0552063   0.1328415
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1829015   0.1394467   0.2263563
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0604569   0.0458468   0.0750669
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0985349   0.0804999   0.1165699
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1281542   0.0941214   0.1621869
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2804828   0.1131803   0.4477853
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3058820   0.2558423   0.3559217
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                0.3347058   0.2830831   0.3863285
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.0490411   0.0273025   0.0707797
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0677037   0.0393140   0.0960935
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0449566   0.0327769   0.0571364
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0201599   0.0113160   0.0290038
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0534853   0.0252236   0.0817471
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.1912062   0.0955480   0.2868644
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1445636   0.0866200   0.2025071
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0925452   0.0514290   0.1336614
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1357288   0.0918157   0.1796418
6-24 months                   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0100764   0.0063922   0.0137606
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0977461   0.0809712   0.1145211
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1103885   0.0726029   0.1481742
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3002697   0.1224698   0.4780697


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


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.3776868   0.7802098   2.432706
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           1.1550197   0.9071651   1.470593
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.8780792   0.6966178   1.106809
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.5009907   1.0604534   2.124538
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0888415   0.8681140   1.365691
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0132797   0.8950259   1.147158
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1047248   0.9263027   1.317514
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.3602566   1.0462916   1.768434
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0031130   0.5723577   1.758054
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0087924   0.9658188   1.053678
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             optimal           1.0188818   0.9547060   1.087371
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0747852   0.7919285   1.458671
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2712347   0.8535169   1.893387
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.2238333   0.9638714   1.553908
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.8565788   1.2100011   2.848663
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.4097771   0.8377509   2.372390
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.6200111   1.0119793   2.593369
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1135283   0.7783673   1.593008
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4651570   1.0085522   2.128482
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1848751   0.8694770   1.614682
6-24 months                   ki1119695-PROBIT           BELARUS                        observed             optimal           0.8213087   0.6209353   1.086342
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9579415   0.8156237   1.125092
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.4956351   1.0677534   2.094982
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8837884   0.5084046   1.536339


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1236635   -0.0622969   0.3096239
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0698962   -0.0387933   0.1785858
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0246574   -0.0715492   0.0222344
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0471051    0.0130347   0.0811755
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0162493   -0.0252589   0.0577574
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0008029   -0.0067268   0.0083325
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0103191   -0.0070479   0.0276860
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0461684    0.0124426   0.0798942
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0008731   -0.1564827   0.1582290
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0026894   -0.0106269   0.0160058
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.0063198   -0.0154498   0.0280895
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0036675   -0.0113433   0.0186784
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0183636   -0.0087226   0.0454498
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0100628   -0.0018783   0.0220039
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0172685    0.0084980   0.0260391
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0219171   -0.0058912   0.0497253
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.1185499    0.0279536   0.2091463
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0164121   -0.0354437   0.0682678
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0430480    0.0074507   0.0786453
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0250929   -0.0170376   0.0672233
6-24 months                   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0018006   -0.0046876   0.0010865
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0041111   -0.0198348   0.0116127
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0547124    0.0174309   0.0919940
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0348948   -0.2019953   0.1322056


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.2741456   -0.2817065   0.5889351
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.1342139   -0.1023352   0.3200021
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.1388495   -0.4355074   0.0965020
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3337734    0.0570071   0.5293093
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0815927   -0.1519224   0.2677702
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0131057   -0.1172862   0.1282803
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0947972   -0.0795607   0.2409949
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2648446    0.0442435   0.4345280
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0031033   -0.7471592   0.4311892
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0087157   -0.0353909   0.0509434
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.0185319   -0.0474429   0.0803511
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0695815   -0.2627403   0.3144445
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2133632   -0.1716230   0.4718459
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1828952   -0.0374828   0.3564615
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.4613749    0.1735544   0.6489581
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.2906680   -0.1936723   0.5784841
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.3827203    0.0118375   0.6144012
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1019537   -0.2847405   0.3722568
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3174793    0.0084796   0.5301816
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1560292   -0.1501166   0.3806830
6-24 months                   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.2175690   -0.6104736   0.0794793
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0439050   -0.2260555   0.1111840
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3313877    0.0634542   0.5226690
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1314926   -0.9669373   0.3491020
