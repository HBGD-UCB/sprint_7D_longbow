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

unadjusted

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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0        2   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        1   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0    13256   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1     6327   19586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0        1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        0     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0      574     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      247     822
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0      909   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1      168   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0    11614   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1     4041   16732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0      281    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1       55    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     2759    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      957    4052
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0      324    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1      156    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0     4046    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1     4058    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0      238    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1       85    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     2210    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1     1487    4020


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
![](/tmp/a516f2c4-82b4-4d9f-8a31-cfd551fa3e23/1b05fe99-91bf-4e93-9c58-5bc12e62cd4e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a516f2c4-82b4-4d9f-8a31-cfd551fa3e23/1b05fe99-91bf-4e93-9c58-5bc12e62cd4e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a516f2c4-82b4-4d9f-8a31-cfd551fa3e23/1b05fe99-91bf-4e93-9c58-5bc12e62cd4e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a516f2c4-82b4-4d9f-8a31-cfd551fa3e23/1b05fe99-91bf-4e93-9c58-5bc12e62cd4e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1470588   0.0627721   0.2313455
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1093750   0.0751345   0.1436155
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0765921   0.0613006   0.0918836
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1052254   0.0998577   0.1105931
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368964   0.5031036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2994186   0.2509538   0.3478835
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2753623   0.1698337   0.3808910
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2396450   0.1940816   0.2852084
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1641791   0.1014045   0.2269537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1603563   0.1263869   0.1943258
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1925134   0.1359414   0.2490853
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2666667   0.2138614   0.3194719
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0899471   0.0491478   0.1307464
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0991189   0.0853719   0.1128660
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0555864   0.0376169   0.0735559
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0636012   0.0497572   0.0774452
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1555870   0.1288675   0.1823065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1677968   0.1593510   0.1762427
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1559889   0.1308441   0.1811336
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2581284   0.2497891   0.2664676
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1636905   0.1215487   0.2058322
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2575350   0.2405496   0.2745204
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6800000   0.4968984   0.8631016
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7175793   0.6701495   0.7650090
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3913043   0.2760088   0.5065999
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4205882   0.3680516   0.4731249
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2773723   0.2023391   0.3524054
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3454545   0.3009849   0.3899242
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2424242   0.1578441   0.3270044
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3540373   0.2800256   0.4280489
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0741525   0.0343208   0.1139843
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0867247   0.0569140   0.1165353
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6206897   0.4438960   0.7974834
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6555819   0.6101411   0.7010228
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3250000   0.2773712   0.3726288
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5007404   0.4874443   0.5140364
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2631579   0.1917231   0.3345927
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4022180   0.3830803   0.4213557


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1027997   0.0977170   0.1078823
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2363239   0.1973320   0.2753157
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0982544   0.0852222   0.1112866
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
Birth       ki1000108-IRC              INDIA                          1                    0                 0.7437500   0.3870802   1.429068
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3738421   1.1180085   1.688218
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9356831   0.5162674   1.695832
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8702896   0.5673744   1.334928
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9767159   0.6308578   1.512186
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3851852   0.9718846   1.974245
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1019693   0.6857631   1.770781
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.1441856   0.9100640   1.438537
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0784760   0.9017580   1.289826
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.6547874   1.4055850   1.948172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5733046   1.2072119   2.050417
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0552636   0.7997388   1.392431
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0748366   0.7804693   1.480230
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2454545   0.9230419   1.680484
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4604037   0.9723728   2.193376
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1695441   0.8016157   1.706346
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0562154   0.7878445   1.416004
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5407396   1.3290362   1.786166
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5284285   1.1616226   2.011061


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0310794   -0.1061249   0.0439660
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0262076    0.0113737   0.0410414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0191870   -0.1957642   0.1573902
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0296621   -0.1251289   0.0658047
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0029441   -0.0579150   0.0520268
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0438105   -0.0020329   0.0896539
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0083073   -0.0306876   0.0473021
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0070999   -0.0041718   0.0183717
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0111607   -0.0144541   0.0367755
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0955651    0.0710596   0.1200705
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0860627    0.0447275   0.1273979
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0350538   -0.1413823   0.2114898
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0243436   -0.0809879   0.1296750
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0519172   -0.0146367   0.1184710
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0691142   -0.0007935   0.1390219
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0111015   -0.0134825   0.0356855
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0326437   -0.1381346   0.2034219
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1659133    0.1198437   0.2119830
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1278869    0.0599295   0.1958443


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.2679739   -1.1075267   0.2371353
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2549383    0.0962734   0.3857468
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0637838   -0.8471227   0.3873521
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1207246   -0.5849288   0.2075204
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0182598   -0.4232000   0.2714636
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1853832   -0.0321265   0.3570551
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0845486   -0.4120665   0.4065072
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1132613   -0.0886262   0.2777084
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0669317   -0.1000260   0.2085492
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3798989    0.2747464   0.4698056
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3445911    0.1585313   0.4895106
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0490226   -0.2327896   0.2664133
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0585678   -0.2322722   0.2807639
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1576642   -0.0705752   0.3372445
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2218481   -0.0368282   0.4159877
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.1302165   -0.2206863   0.3802476
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0499648   -0.2510026   0.2785252
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3379687    0.2368731   0.4256716
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3270390    0.1267624   0.4813822
