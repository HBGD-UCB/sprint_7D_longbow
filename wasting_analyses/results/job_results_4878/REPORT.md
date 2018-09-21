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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2601   52806
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      378   52806
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    41247   52806
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     8580   52806
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      581    8988
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      158    8988
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     6007    8988
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     2242    8988
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
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0     2774   52316
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      142   52316
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0    45786   52316
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     3614   52316
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      694    8760
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       22    8760
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     7814    8760
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      230    8760
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0     1977   34411
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      248   34411
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0    26789   34411
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5397   34411
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      591    9010
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      146    9010
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     6151    9010
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     2122    9010


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
![](/tmp/3d9af6cd-c5f4-466d-9124-d750f546d7ea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d9af6cd-c5f4-466d-9124-d750f546d7ea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d9af6cd-c5f4-466d-9124-d750f546d7ea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d9af6cd-c5f4-466d-9124-d750f546d7ea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368958   0.5031042
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4606414   0.4078197   0.5134631
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.4061825   0.2955617   0.5168032
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.5321820   0.4791109   0.5852530
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1876701   0.1361517   0.2391886
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1791047   0.1469470   0.2112624
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1038484   0.0619980   0.1456988
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1662492   0.1239175   0.2085810
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1917265   0.1478852   0.2355678
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2017180   0.1847898   0.2186461
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0730999   0.0610200   0.0851797
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0717397   0.0594429   0.0840366
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0787562   0.0649123   0.0926001
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1009585   0.0956620   0.1062550
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1293225   0.1127001   0.1459450
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1717862   0.1663455   0.1772270
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2188649   0.1614973   0.2762325
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2711206   0.2555962   0.2866450
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3478261   0.1529008   0.5427514
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3058104   0.2558000   0.3558208
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.2814740   0.1893049   0.3736431
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.3322206   0.2810150   0.3834263
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0703114   0.0311603   0.1094624
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0461524   0.0281939   0.0641108
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0574885   0.0278109   0.0871662
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0884980   0.0764594   0.1005366
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0633237   0.0518287   0.0748187
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0640835   0.0523442   0.0758227
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0134044   0.0072390   0.0195697
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0331255   0.0299422   0.0363089
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0418367   0.0322776   0.0513959
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0730974   0.0693291   0.0768658
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0299103   0.0013070   0.0585135
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0285785   0.0232511   0.0339058
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                0.1998782   0.1112522   0.2885041
6-24 months                   ki1000108-IRC              INDIA                          1                    NA                0.3365309   0.2864690   0.3865928
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1409647   0.0898047   0.1921247
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1679793   0.1347061   0.2012525
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0922797   0.0514495   0.1331099
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1660429   0.1223088   0.2097771
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1233356   0.0835567   0.1631145
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1629419   0.1459739   0.1799100
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                0.0102369   0.0053237   0.0151502
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    NA                0.0099004   0.0068606   0.0129402
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0905875   0.0747995   0.1063755
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0943100   0.0885186   0.1001013
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1166031   0.1003657   0.1328404
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1672483   0.1609073   0.1735893
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1987358   0.1438776   0.2535939
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2558281   0.2406554   0.2710008


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
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1696398   0.1643108   0.1749689
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2670227   0.2519875   0.2820579
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
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1640464   0.1578959   0.1701968
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2517203   0.2369063   0.2665343


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4395044   0.8030978   2.580225
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 1.3102042   0.9805424   1.750699
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9543592   0.6880238   1.323794
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6008839   0.9949703   2.575785
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0521132   0.8247662   1.342128
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.9813937   0.8608363   1.118835
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2819114   1.0672401   1.539763
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3283554   1.1661506   1.513122
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2387576   0.9467785   1.620781
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8792049   0.4904064   1.576246
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 1.1802891   0.8225248   1.693666
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.6564000   0.3334028   1.292313
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5394025   0.9028810   2.624665
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 1.0119979   0.8599703   1.190901
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.4712507   1.5448712   3.953132
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.7472058   1.3877392   2.199785
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.9554740   0.3579310   2.550577
6-24 months                   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA                          1                    0                 1.6836799   1.0553414   2.686124
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1916411   0.7886965   1.800450
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.7993444   1.0754133   3.010601
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3211265   0.9417916   1.853250
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1119695-PROBIT           BELARUS                        1                    0                 0.9671253   0.5571892   1.678660
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0410926   0.8658133   1.251856
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4343386   1.2446137   1.652985
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2872775   0.9720347   1.704758


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1310870   -0.0465745   0.3087484
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.1145999    0.0137445   0.2154554
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0100864   -0.0558418   0.0356689
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0372806    0.0019199   0.0726413
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0074243   -0.0348822   0.0497307
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0014046   -0.0098033   0.0069940
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0207997    0.0073379   0.0342614
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0403173    0.0240868   0.0565478
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0481578   -0.0065191   0.1028347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0392547   -0.2272721   0.1487628
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                 0.0595517   -0.0250763   0.1441796
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0176027   -0.0503002   0.0150948
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0285788   -0.0003676   0.0575252
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0004333   -0.0087472   0.0096137
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0186687    0.0124214   0.0249160
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0299577    0.0205750   0.0393405
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0011431   -0.0281548   0.0258685
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.1098779    0.0255893   0.1941665
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0200109   -0.0262975   0.0663194
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0433135    0.0079341   0.0786930
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0374860   -0.0010385   0.0760106
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0001755   -0.0051506   0.0047996
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0030476   -0.0121938   0.0182890
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0474433    0.0315384   0.0633482
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0529845    0.0010487   0.1049203


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2906024   -0.2363609   0.5929627
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                 0.2200534   -0.0003946   0.3919232
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0567982   -0.3499309   0.1726817
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2641599   -0.0271792   0.4728665
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0372796   -0.2000893   0.2276987
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0195919   -0.1450186   0.0920954
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2089244    0.0623648   0.3325756
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2376642    0.1361549   0.3272453
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1803509   -0.0531813   0.3620997
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1272142   -0.9353750   0.3434803
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                 0.1746252   -0.1128337   0.3878299
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.3339629   -1.1100652   0.1566815
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3320516   -0.1003704   0.5945410
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0067953   -0.1476238   0.1404366
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.5820677    0.3451073   0.7332886
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4172707    0.2725033   0.5332302
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0397377   -1.5615104   0.5779621
6-24 months                   ki1000108-IRC              INDIA                          0                    NA                 0.3547239    0.0219194   0.5742874
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1243104   -0.2131431   0.3678962
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.3194373    0.0130389   0.5307155
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2330908   -0.0454833   0.4374375
6-24 months                   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0174403   -0.6565728   0.3751046
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0325476   -0.1445490   0.1822419
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2892066    0.1863629   0.3790508
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2104898   -0.0267518   0.3929142
