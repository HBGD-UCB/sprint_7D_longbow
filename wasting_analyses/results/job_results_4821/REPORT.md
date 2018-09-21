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

**Outcome Variable:** swasted

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
* delta_hfoodsec
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

agecat      studyid                    country                        vagbrth    swasted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       10      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       73      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        5      88
Birth       ki1000108-IRC              INDIA                          0                0       52     343
Birth       ki1000108-IRC              INDIA                          0                1       14     343
Birth       ki1000108-IRC              INDIA                          1                0      237     343
Birth       ki1000108-IRC              INDIA                          1                1       40     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        1      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       15      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1      17
Birth       ki1119695-PROBIT           BELARUS                        0                0     1501   13824
Birth       ki1119695-PROBIT           BELARUS                        0                1       92   13824
Birth       ki1119695-PROBIT           BELARUS                        1                0    11412   13824
Birth       ki1119695-PROBIT           BELARUS                        1                1      819   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1016   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       83   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11011   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1      703   12813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0        4   31378
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0   31378
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    30868   31378
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1      506   31378
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     1354    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1       10    1366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      331     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1       12     368
6 months    ki1000108-IRC              INDIA                          0                0       64     408
6 months    ki1000108-IRC              INDIA                          0                1        4     408
6 months    ki1000108-IRC              INDIA                          1                0      322     408
6 months    ki1000108-IRC              INDIA                          1                1       18     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      134     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      443     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        5     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      270     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      187    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        2    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1805    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2004
6 months    ki1119695-PROBIT           BELARUS                        0                0     1794   15757
6 months    ki1119695-PROBIT           BELARUS                        0                1        4   15757
6 months    ki1119695-PROBIT           BELARUS                        1                0    13947   15757
6 months    ki1119695-PROBIT           BELARUS                        1                1       12   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      701    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1        5    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     7418    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1       73    8197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     2136   33404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1       14   33404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    30810   33404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1      444   33404
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      665    8102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1        8    8102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     7381    8102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1       48    8102
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0       25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0      344     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        3     372
24 months   ki1000108-IRC              INDIA                          0                0       67     409
24 months   ki1000108-IRC              INDIA                          0                1        2     409
24 months   ki1000108-IRC              INDIA                          1                0      337     409
24 months   ki1000108-IRC              INDIA                          1                1        3     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      135     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      434     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1        7     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       98     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      160     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        1     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0                0      462    3971
24 months   ki1119695-PROBIT           BELARUS                        0                1        1    3971
24 months   ki1119695-PROBIT           BELARUS                        1                0     3505    3971
24 months   ki1119695-PROBIT           BELARUS                        1                1        3    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       28     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1        0     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      359     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1       30     417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      916   17097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1       34   17097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0    15513   17097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      634   17097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      631    8006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       14    8006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     7153    8006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      208    8006


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4e86f67a-a230-4673-83fc-d777cba00394/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e86f67a-a230-4673-83fc-d777cba00394/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e86f67a-a230-4673-83fc-d777cba00394/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e86f67a-a230-4673-83fc-d777cba00394/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC        INDIA        0                    NA                0.2139219    0.1230045   0.3048393
Birth       ki1000108-IRC        INDIA        1                    NA                0.1454512    0.1042006   0.1867018
Birth       ki1119695-PROBIT     BELARUS      0                    NA                0.0651236    0.0371552   0.0930920
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.0670282    0.0328771   0.1011792
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0822422    0.0682206   0.0962637
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0602297    0.0559352   0.0645241
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0070822    0.0008961   0.0132682
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0097450    0.0075203   0.0119697
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0057891    0.0011531   0.0104250
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0141926    0.0120245   0.0163608
6 months    kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0118871   -0.0018575   0.0256316
6 months    kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0064612    0.0017114   0.0112109
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0729473    0.0581876   0.0877071
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0394698    0.0349990   0.0439405
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0216406    0.0056720   0.0376093
24 months   kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0282469    0.0220718   0.0344219


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA        NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1119695-PROBIT     BELARUS      NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0613439   0.0571889   0.0654990
6 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0095157   0.0074139   0.0116175
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0137109   0.0116412   0.0157807
6 months    kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.0069119   0.0024186   0.0114051
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0390712   0.0347380   0.0434044
24 months   kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.0277292   0.0218670   0.0335914


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC        INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC        INDIA        1                    0                 0.6799267   0.4087641   1.130971
Birth       ki1119695-PROBIT     BELARUS      0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT     BELARUS      1                    0                 1.0292459   0.7761880   1.364807
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 0.7323454   0.6089571   0.880735
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 1.3759978   0.5578710   3.393921
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    0                 2.4516236   1.0918385   5.504897
6 months    kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4    BANGLADESH   1                    0                 0.5435456   0.1374955   2.148738
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    0                 0.5410719   0.4287570   0.682808
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4    BANGLADESH   1                    0                 1.3052684   0.6079128   2.802582


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA        0                    NA                -0.0564875   -0.1358395    0.0228645
Birth       ki1119695-PROBIT     BELARUS      0                    NA                 0.0007763   -0.0158931    0.0174457
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.0208982   -0.0342203   -0.0075761
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                 0.0024335   -0.0035742    0.0084412
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0079219    0.0032250    0.0126187
6 months    kiGH5241-JiVitA-4    BANGLADESH   0                    NA                -0.0049752   -0.0183393    0.0083889
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                -0.0338762   -0.0484116   -0.0193408
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                 0.0060886   -0.0095125    0.0216896


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA        0                    NA                -0.3588003   -0.9701810    0.0628586
Birth       ki1119695-PROBIT     BELARUS      0                    NA                 0.0117803   -0.2724858    0.2325430
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.3406728   -0.5774050   -0.1394686
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                 0.2557383   -0.7325140    0.6802765
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.5777768    0.0736951    0.8075446
6 months    kiGH5241-JiVitA-4    BANGLADESH   0                    NA                -0.7198047   -4.5871655    0.4706210
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                -0.8670371   -1.3046665   -0.5125084
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                 0.2195719   -0.5968567    0.6185832
