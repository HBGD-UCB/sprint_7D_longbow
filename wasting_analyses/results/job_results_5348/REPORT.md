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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* brthmon
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

agecat        studyid                    country                        vagbrth    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  --------  ----------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       24     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      326     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       22     373
0-24 months   ki1000108-IRC              INDIA                          0                  0       62     410
0-24 months   ki1000108-IRC              INDIA                          0                  1        8     410
0-24 months   ki1000108-IRC              INDIA                          1                  0      300     410
0-24 months   ki1000108-IRC              INDIA                          1                  1       40     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      146     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        2     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      479     640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13     640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      191     472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        3     472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      261     472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       17     472
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      192    2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        6    2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1890    2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       52    2140
0-24 months   ki1119695-PROBIT           BELARUS                        0                  0     1906   16581
0-24 months   ki1119695-PROBIT           BELARUS                        0                  1       12   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0    14516   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1      147   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      797    9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        8    9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     8296    9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      155    9256
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1848   31288
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      118   31288
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0    27650   31288
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1672   31288
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      681    8877
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       38    8877
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     7496    8877
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      662    8877
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       18     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        7     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      290     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       43     358
0-6 months    ki1000108-IRC              INDIA                          0                  0       57     402
0-6 months    ki1000108-IRC              INDIA                          0                  1       11     402
0-6 months    ki1000108-IRC              INDIA                          1                  0      281     402
0-6 months    ki1000108-IRC              INDIA                          1                  1       53     402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      144     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        4     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      479     637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       10     637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      182    2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        5    2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1801    2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       47    2035
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       24     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      321     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       27     373
6-24 months   ki1000108-IRC              INDIA                          0                  0       63     410
6-24 months   ki1000108-IRC              INDIA                          0                  1        7     410
6-24 months   ki1000108-IRC              INDIA                          1                  0      299     410
6-24 months   ki1000108-IRC              INDIA                          1                  1       41     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      134     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        5     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      429     601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       33     601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      175     442
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        6     442
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      236     442
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       25     442
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      157    1685
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        7    1685
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1444    1685
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       77    1685
6-24 months   ki1119695-PROBIT           BELARUS                        0                  0      848    7097
6-24 months   ki1119695-PROBIT           BELARUS                        0                  1        0    7097
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0     6247    7097
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1        2    7097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      181    2207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        4    2207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     1933    2207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       89    2207
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      633    8493
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       58    8493
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     6948    8493
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      854    8493


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/53a4313f-c119-42db-a1bb-12268fa6d9fb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53a4313f-c119-42db-a1bb-12268fa6d9fb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53a4313f-c119-42db-a1bb-12268fa6d9fb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53a4313f-c119-42db-a1bb-12268fa6d9fb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0064294   0.0032431   0.0096157
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0100000   0.0052666   0.0147334
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0099379   0.0030853   0.0167904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0183410   0.0154801   0.0212020
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0631906   0.0507792   0.0756020
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0571506   0.0529764   0.0613248
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0605806   0.0323430   0.0888182
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0809190   0.0713369   0.0905012
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2800000   0.1037493   0.4562507
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1291291   0.0930611   0.1651972
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1546064   0.0708089   0.2384039
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1577205   0.1187147   0.1967263
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267380   0.0036113   0.0498646
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0254329   0.0182532   0.0326126
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1000000   0.0296360   0.1703640
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1205882   0.0859315   0.1552450
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0359712   0.0049881   0.0669543
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0714286   0.0479251   0.0949321
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0331492   0.0070386   0.0592598
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0957854   0.0600413   0.1315296
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0426829   0.0117365   0.0736293
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0506246   0.0396038   0.0616454
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1051688   0.0729416   0.1373960
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1095179   0.0972898   0.1217460


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176102   0.0149305   0.0202899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572104   0.0531179   0.0613029
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0788555   0.0697741   0.0879369
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0255528   0.0186952   0.0324104
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0701357   0.0463011   0.0939704
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498516   0.0394569   0.0602463
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1073826   0.0957497   0.1190154


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.5553539   0.8412819   2.8755234
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8455656   0.9101236   3.7424724
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9044160   0.7379982   1.1083608
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3357246   0.8256364   2.1609514
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.4611755   0.2316258   0.9182174
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 1.0201419   0.5621658   1.8512145
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9511905   0.3829381   2.3626880
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.2058823   0.5639111   2.5786903
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.9857143   0.7897300   4.9929230
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.8895275   1.2086423   6.9080564
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1860617   0.5563438   2.5285487
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0413532   0.7530212   1.4400877


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0031599   -0.0014320   0.0077518
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0076723    0.0008922   0.0144524
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0059802   -0.0179283   0.0059679
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0182748   -0.0093038   0.0458534
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1403352   -0.3077229   0.0270526
0-6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0045975   -0.0720877   0.0812828
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011851   -0.0231755   0.0208052
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0170732   -0.0479755   0.0821219
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0272567   -0.0026620   0.0571755
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0369866    0.0106905   0.0632827
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071687   -0.0224844   0.0368218
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0022137   -0.0293105   0.0337380


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.3295237   -0.1846219    0.6205216
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4356743   -0.1053313    0.7118841
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.1045298   -0.3350891    0.0862137
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2317511   -0.2089465    0.5118011
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.0048000   -2.6272555   -0.1080617
0-6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0288784   -0.5945203    0.4085511
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0463801   -1.3814109    0.5402258
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.1458333   -0.6349779    0.5537550
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.4310867   -0.2673367    0.7446122
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.5273570    0.0443097    0.7662512
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1438008   -0.7137341    0.5722340
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0206154   -0.3213384    0.2740738
