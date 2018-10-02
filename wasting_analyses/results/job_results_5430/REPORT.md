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

unadjusted

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
![](/tmp/171514fc-09e3-4294-a80b-5e42b62f715c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/171514fc-09e3-4294-a80b-5e42b62f715c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/171514fc-09e3-4294-a80b-5e42b62f715c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/171514fc-09e3-4294-a80b-5e42b62f715c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC        INDIA        0                    NA                0.2121212    0.1133497   0.3108928
Birth       ki1000108-IRC        INDIA        1                    NA                0.1444043    0.1029503   0.1858583
Birth       ki1119695-PROBIT     BELARUS      0                    NA                0.0577527    0.0294460   0.0860593
Birth       ki1119695-PROBIT     BELARUS      1                    NA                0.0669610    0.0326677   0.1012543
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0755232    0.0599006   0.0911458
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0600137    0.0557124   0.0643149
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                0.0070822    0.0008961   0.0132682
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0097450    0.0075203   0.0119697
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0065116    0.0016107   0.0114125
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0142062    0.0120365   0.0163758
6 months    kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0118871   -0.0018575   0.0256316
6 months    kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0064612    0.0017114   0.0112109
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                0.0357895    0.0189151   0.0526638
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0392643    0.0347786   0.0437499
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                0.0217054    0.0057003   0.0377105
24 months   kiGH5241-JiVitA-4    BANGLADESH   1                    NA                0.0282570    0.0220794   0.0344346


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


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC        INDIA        1                    0                 0.6807633   0.3939399   1.1764196
Birth       ki1119695-PROBIT     BELARUS      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT     BELARUS      1                    0                 1.1594443   0.8449585   1.5909788
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 0.7946387   0.6383995   0.9891152
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    0                 1.3759978   0.5578710   3.3939209
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    0                 2.1816635   1.0198110   4.6671935
6 months    kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4    BANGLADESH   1                    0                 0.5435456   0.1374955   2.1487376
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    0                 1.0970896   0.6748246   1.7835830
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4    BANGLADESH   1                    0                 1.3018417   0.6068829   2.7926178


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC        INDIA        0                    NA                -0.0546868   -0.1412394   0.0318658
Birth       ki1119695-PROBIT     BELARUS      0                    NA                 0.0081472   -0.0100292   0.0263236
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.0141793   -0.0289935   0.0006350
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                 0.0024335   -0.0035742   0.0084412
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0071993    0.0022798   0.0121188
6 months    kiGH5241-JiVitA-4    BANGLADESH   0                    NA                -0.0049752   -0.0183393   0.0083889
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0032817   -0.0132377   0.0198011
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                 0.0060238   -0.0095944   0.0216419


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC        INDIA        0                    NA                -0.3473625   -1.0213073    0.1018754
Birth       ki1119695-PROBIT     BELARUS      0                    NA                 0.1236302   -0.1649149    0.3407038
Birth       ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                -0.2311435   -0.4974336   -0.0122081
6 months    ki1126311-ZVITAMBO   ZIMBABWE     0                    NA                 0.2557383   -0.7325140    0.6802765
6 months    kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.5250777    0.0074749    0.7727501
6 months    kiGH5241-JiVitA-4    BANGLADESH   0                    NA                -0.7198047   -4.5871655    0.4706210
24 months   kiGH5241-JiVitA-3    BANGLADESH   0                    NA                 0.0839931   -0.4527542    0.4224290
24 months   kiGH5241-JiVitA-4    BANGLADESH   0                    NA                 0.2172358   -0.5998562    0.6170157
