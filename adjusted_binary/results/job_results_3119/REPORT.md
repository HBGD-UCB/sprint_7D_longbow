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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        vagbrth    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       65      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       14      90
Birth       ki1000108-IRC              INDIA                          0                0       58     388
Birth       ki1000108-IRC              INDIA                          0                1       10     388
Birth       ki1000108-IRC              INDIA                          1                0      285     388
Birth       ki1000108-IRC              INDIA                          1                1       35     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       15      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3      19
Birth       ki1119695-PROBIT           BELARUS                        0                0     1594   13884
Birth       ki1119695-PROBIT           BELARUS                        0                1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        1                0    12257   13884
Birth       ki1119695-PROBIT           BELARUS                        1                1       30   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1073   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       89   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11233   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1321   13716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0        4   39172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        2   39172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    26512   39172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1    12654   39172
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        2    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     1148    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      494    1644
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       17     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      241     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1      103     369
6 months    ki1000108-IRC              INDIA                          0                0       50     407
6 months    ki1000108-IRC              INDIA                          0                1       19     407
6 months    ki1000108-IRC              INDIA                          1                0      257     407
6 months    ki1000108-IRC              INDIA                          1                1       81     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      112     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       22     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      377     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       72     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      151     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       36     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      198     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       72     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      172    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1636    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      180    2005
6 months    ki1119695-PROBIT           BELARUS                        0                0     1699   15761
6 months    ki1119695-PROBIT           BELARUS                        0                1      100   15761
6 months    ki1119695-PROBIT           BELARUS                        1                0    13074   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1      888   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      597    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      110    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     6259    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1262    8228
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0     1818   33458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      336   33458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    23226   33458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     8078   33458
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      561    8094
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      110    8094
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     5511    8094
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1     1912    8094
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       98     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1      249     372
24 months   ki1000108-IRC              INDIA                          0                0       42     409
24 months   ki1000108-IRC              INDIA                          0                1       27     409
24 months   ki1000108-IRC              INDIA                          1                0      197     409
24 months   ki1000108-IRC              INDIA                          1                1      143     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0       99     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       38     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      288     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1      152     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       75     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       24     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      104     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       57     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1       6
24 months   ki1119695-PROBIT           BELARUS                        0                0      437    4035
24 months   ki1119695-PROBIT           BELARUS                        0                1       35    4035
24 months   ki1119695-PROBIT           BELARUS                        1                0     3254    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1      309    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       11     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       18     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      145     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      276     450
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      648   17155
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      312   17155
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     8088   17155
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     8107   17155
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      475    8030
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      170    8030
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     4415    8030
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     2970    8030


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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/12b92148-3608-433a-b828-66457819c8e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/12b92148-3608-433a-b828-66457819c8e2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/12b92148-3608-433a-b828-66457819c8e2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/12b92148-3608-433a-b828-66457819c8e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1564885   0.0726259   0.2403511
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1087343   0.0746051   0.1428635
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0782260   0.0649623   0.0914898
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1056963   0.1003342   0.1110585
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368964   0.5031036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2994186   0.2509538   0.3478835
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2580653   0.1604829   0.3556477
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2384547   0.1930555   0.2838538
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1315523   0.0792429   0.1838617
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1552208   0.1221715   0.1882701
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1881357   0.1321621   0.2441092
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2702960   0.2179270   0.3226650
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0886902   0.0509921   0.1263884
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0997527   0.0860085   0.1134969
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0536118   0.0374560   0.0697675
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0633531   0.0495459   0.0771603
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1496784   0.1285610   0.1707958
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1694095   0.1609798   0.1778392
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1910650   0.1690013   0.2131287
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2569907   0.2487283   0.2652532
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1779609   0.1382934   0.2176285
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2569754   0.2400223   0.2739284
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6800000   0.4968984   0.8631016
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7175793   0.6701495   0.7650090
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3957975   0.2909712   0.5006239
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4179408   0.3656611   0.4702204
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2975744   0.2396435   0.3555052
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3386385   0.2959832   0.3812937
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2328222   0.1516894   0.3139550
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3601426   0.2871368   0.4331484
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0804522   0.0411067   0.1197977
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0865527   0.0571003   0.1160051
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.5750365   0.4204984   0.7295746
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6578803   0.6125322   0.7032284
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3884005   0.3565033   0.4202977
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4980878   0.4847553   0.5114202
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2599643   0.1850054   0.3349233
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3995114   0.3803912   0.4186317


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1027997   0.0977170   0.1078823
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2363239   0.1973320   0.2753157
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0982544   0.0852222   0.1112865
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1667477   0.1586931   0.1748023
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514795   0.2433525   0.2596064
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2498147   0.2337133   0.2659161
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3115385   0.2551365   0.3679404
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6533333   0.6093135   0.6973532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907607   0.4776332   0.5038882
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3910336   0.3723737   0.4096935


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.6948391   0.3736130   1.292250
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3511657   1.1321604   1.612535
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9356831   0.5162674   1.695832
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.9240090   0.6051853   1.410795
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1799170   0.7564088   1.840544
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4367077   1.0105111   2.042658
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1247315   0.7201428   1.756625
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1817012   0.9445061   1.478463
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1318232   0.9752038   1.313596
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3450435   1.1938699   1.515360
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.4439989   1.1475170   1.817082
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0552636   0.7997388   1.392431
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0559459   0.7883693   1.414339
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1379961   0.9080687   1.426142
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5468569   1.0421567   2.295975
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0758284   0.7285041   1.588744
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1440671   0.8688432   1.506474
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2824077   1.1778459   1.396252
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5367932   1.1486097   2.056167


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0405091   -0.1150597   0.0340415
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0245736    0.0115871   0.0375601
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0191870   -0.1957642   0.1573902
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0123650   -0.1007269   0.0759968
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0296827   -0.0160353   0.0754007
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0481882    0.0031571   0.0932192
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0095641   -0.0264882   0.0456164
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0090746   -0.0019553   0.0201045
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0170693   -0.0033728   0.0375113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0604145    0.0382835   0.0825454
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0718538    0.0331102   0.1105973
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0350538   -0.1413823   0.2114898
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0198504   -0.0761094   0.1158101
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0317151   -0.0197138   0.0831439
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0787163    0.0122339   0.1451986
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0048019   -0.0238452   0.0334490
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0782969   -0.0705507   0.2271445
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1023602    0.0703104   0.1344101
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1310693    0.0594798   0.2026588


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3492785   -1.1693723   0.1607930
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2390438    0.1029379   0.3544991
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0637838   -0.8471227   0.3873521
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0503257   -0.4794080   0.2543070
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1840958   -0.1535097   0.4228920
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2039074   -0.0100968   0.3725715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0973406   -0.3547280   0.3985552
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1447621   -0.0474422   0.3016971
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1023659   -0.0284725   0.2165596
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2402362    0.1482295   0.3223044
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2876282    0.1164441   0.4256464
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0490226   -0.2327896   0.2664133
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0477577   -0.2131992   0.2525832
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0963137   -0.0720704   0.2382506
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2526695    0.0074284   0.4373173
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0563243   -0.3454685   0.3381310
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1198421   -0.1402067   0.3205812
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2085746    0.1415577   0.2703597
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3351868    0.1223568   0.4964051
