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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
* W_mhtcm
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        vagbrth    stunted   n_cell       n
----------  -------------------------  -----------------------------  --------  --------  -------  ------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0       17     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1        8     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0      241     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1      103     369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0        8     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1       17     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0       98     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1      249     372
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0        9      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0       65      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1       14      90
6 months    ki1000108-IRC              INDIA                          0                0       50     407
6 months    ki1000108-IRC              INDIA                          0                1       19     407
6 months    ki1000108-IRC              INDIA                          1                0      257     407
6 months    ki1000108-IRC              INDIA                          1                1       81     407
24 months   ki1000108-IRC              INDIA                          0                0       42     409
24 months   ki1000108-IRC              INDIA                          0                1       27     409
24 months   ki1000108-IRC              INDIA                          1                0      197     409
24 months   ki1000108-IRC              INDIA                          1                1      143     409
Birth       ki1000108-IRC              INDIA                          0                0       58     388
Birth       ki1000108-IRC              INDIA                          0                1       10     388
Birth       ki1000108-IRC              INDIA                          1                0      285     388
Birth       ki1000108-IRC              INDIA                          1                1       35     388
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      112     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1       22     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      377     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1       72     583
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0       99     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       38     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      288     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1      152     577
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      151     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       36     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      198     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1       72     457
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0       75     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       24     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      104     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1       57     260
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0        1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        0      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0       15      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        3      19
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0      172    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       17    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0     1636    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1      180    2005
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        1       6
Birth       ki1119695-PROBIT           BELARUS                        0                0     1594   13884
Birth       ki1119695-PROBIT           BELARUS                        0                1        3   13884
Birth       ki1119695-PROBIT           BELARUS                        1                0    12257   13884
Birth       ki1119695-PROBIT           BELARUS                        1                1       30   13884
6 months    ki1119695-PROBIT           BELARUS                        0                0     1699   15761
6 months    ki1119695-PROBIT           BELARUS                        0                1      100   15761
6 months    ki1119695-PROBIT           BELARUS                        1                0    13074   15761
6 months    ki1119695-PROBIT           BELARUS                        1                1      888   15761
24 months   ki1119695-PROBIT           BELARUS                        0                0      437    4035
24 months   ki1119695-PROBIT           BELARUS                        0                1       35    4035
24 months   ki1119695-PROBIT           BELARUS                        1                0     3254    4035
24 months   ki1119695-PROBIT           BELARUS                        1                1      309    4035
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                0     1073   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                1       89   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                0    11233   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1321   13716
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                0      597    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                1      110    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                0     6259    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                1     1262    8228
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                0       11     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                1       18     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                0      145     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                1      276     450
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0        2   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        1   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    13256   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     6327   19586
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0      909   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      168   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    11614   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     4041   16732
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      324    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      156    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4046    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     4058    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      238    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       85    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2210    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1487    4020
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      281    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       55    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2759    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      957    4052
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      574     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      247     822


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/34c87797-ae00-4061-880e-14d0ce3f569a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34c87797-ae00-4061-880e-14d0ce3f569a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34c87797-ae00-4061-880e-14d0ce3f569a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34c87797-ae00-4061-880e-14d0ce3f569a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1479052   0.0655283   0.2302821
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1089870   0.0748392   0.1431348
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0703541   0.0576473   0.0830609
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1055703   0.1002092   0.1109313
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3260304   0.1436800   0.5083808
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2989995   0.2505524   0.3474467
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2803086   0.1797037   0.3809134
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2403207   0.1948882   0.2857533
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1416129   0.1048123   0.1784136
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1623811   0.1304662   0.1942961
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1864542   0.1308558   0.2420525
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2716359   0.2196257   0.3236462
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0765835   0.0494598   0.1037072
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0996992   0.0860757   0.1133227
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0538890   0.0377703   0.0700077
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0633326   0.0495552   0.0771101
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1449873   0.1239210   0.1660536
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1694008   0.1609738   0.1778278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1996682   0.1762844   0.2230520
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2578589   0.2495609   0.2661569
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1584384   0.1187004   0.1981765
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2574724   0.2405346   0.2744102
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6800000   0.4968984   0.8631016
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7175793   0.6701495   0.7650090
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3836099   0.2724447   0.4947751
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4201461   0.3676969   0.4725954
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3292132   0.2824209   0.3760056
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3487180   0.3071931   0.3902428
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2333222   0.1512822   0.3153622
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3603235   0.2868205   0.4338264
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0893452   0.0529353   0.1257551
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0866806   0.0573600   0.1160011
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6204636   0.4651383   0.7757888
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6555949   0.6103265   0.7008632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3714498   0.3389194   0.4039802
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4995689   0.4862303   0.5129075
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2606311   0.1887115   0.3325508
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4023376   0.3832064   0.4214688


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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2515539   0.2434271   0.2596807
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2497532   0.2336426   0.2658638
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3115385   0.2551365   0.3679404
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6533333   0.6093135   0.6973532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4909133   0.4777756   0.5040511
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3910448   0.3723963   0.4096932


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.7368705   0.3893284   1.394653
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5005561   1.2440504   1.809950
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9170909   0.5124965   1.641096
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8573435   0.5716002   1.285930
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1466549   0.8391937   1.566763
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4568511   1.0267151   2.067190
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3018363   0.8938568   1.896028
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1752429   0.9443292   1.462621
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1683838   1.0027464   1.361382
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2914371   1.1455433   1.455912
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.6250625   1.2557086   2.103058
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0552636   0.7997388   1.392431
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0952432   0.7988540   1.501598
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0592465   0.8851304   1.267613
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5443171   1.0348108   2.304687
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.9701761   0.6962985   1.351779
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0566211   0.8176838   1.365379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3449163   1.2289488   1.471827
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5437050   1.1680907   2.040103


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0319258   -0.1050793   0.0412277
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0324456    0.0199613   0.0449298
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0252174   -0.2010012   0.1505664
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0346083   -0.1255877   0.0563711
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0196221   -0.0138057   0.0530499
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0498697    0.0052916   0.0944478
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0216708   -0.0049170   0.0482587
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0087974   -0.0019608   0.0195556
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0217604    0.0013609   0.0421599
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0518857    0.0287845   0.0749869
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0913148    0.0522643   0.1303652
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0350538   -0.1413823   0.2114898
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0320380   -0.0696228   0.1336989
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0000762   -0.0436530   0.0438054
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0782163    0.0106751   0.1457574
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0040911   -0.0308030   0.0226207
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0328698   -0.1164127   0.1821522
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1194635    0.0871360   0.1517910
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1304136    0.0620139   0.1988134


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.2752715   -1.0876000   0.2209631
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3156193    0.1845170   0.4256448
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0838308   -0.8583444   0.3678840
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1408558   -0.5789804   0.1757010
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1216986   -0.1042254   0.3013987
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2110227   -0.0008500   0.3780435
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2205585   -0.0967376   0.4460579
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1403399   -0.0469875   0.2941506
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1304991   -0.0002269   0.2441397
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2062609    0.1096887   0.2923578
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3656200    0.1909727   0.5025656
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0490226   -0.2327896   0.2664133
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0770798   -0.2028716   0.2918764
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0002314   -0.1417798   0.1245797
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2510646    0.0013332   0.4383469
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0479877   -0.4177010   0.2253103
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0503109   -0.2080141   0.2533949
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2433495    0.1755357   0.3055855
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3335005    0.1313687   0.4885960
