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
      Y: ['haz']
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

**Outcome Variable:** haz

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

agecat      studyid                    country                        vagbrth    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              11      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              79      90
Birth       ki1000108-IRC              INDIA                          0              68     388
Birth       ki1000108-IRC              INDIA                          1             320     388
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1      19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              18      19
Birth       ki1119695-PROBIT           BELARUS                        0            1597   13884
Birth       ki1119695-PROBIT           BELARUS                        1           12287   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1162   13716
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           12554   13716
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               3   19586
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           19583   19586
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             821     822
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             344     369
6 months    ki1000108-IRC              INDIA                          0              69     407
6 months    ki1000108-IRC              INDIA                          1             338     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             134     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             449     583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1816    2005
6 months    ki1119695-PROBIT           BELARUS                        0            1799   15761
6 months    ki1119695-PROBIT           BELARUS                        1           13962   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             707    8228
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7521    8228
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1077   16732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           15655   16732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0             336    4052
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            3716    4052
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     372
24 months   ki1000108-IRC              INDIA                          0              69     409
24 months   ki1000108-IRC              INDIA                          1             340     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             440     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ki1119695-PROBIT           BELARUS                        0             472    4035
24 months   ki1119695-PROBIT           BELARUS                        1            3563    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              29     450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             421     450
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             480    8584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8104    8584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             323    4020
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            3697    4020


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

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/b647b75b-6d3b-481e-99de-38c80db420ed/be6b5489-37f0-44a1-9b0c-194a42f145e7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.0851727   -1.4538439   -0.7165014
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.2882031   -0.6687685    0.0923623
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed           1.3826721    1.2180273    1.5473169
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1719707   -0.2467061   -0.0972354
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -1.1440031   -1.3604884   -0.9275178
6 months    ki1000108-IRC              INDIA                          optimal              observed          -1.1603377   -1.4584457   -0.8622296
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9915897   -1.1813772   -0.8018023
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.1731186   -1.3127569   -1.0334803
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.4030525   -0.5858904   -0.2202146
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.1845412    0.0822789    0.2868035
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.8840488   -0.9493699   -0.8187278
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.0214181   -1.1271044   -0.9157318
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.0840110   -1.2046977   -0.9633244
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -2.5630183   -2.9958447   -2.1301920
24 months   ki1000108-IRC              INDIA                          optimal              observed          -1.6474280   -1.8751870   -1.4196690
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -1.4245876   -1.5886706   -1.2605047
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -1.4732614   -1.6616450   -1.2848778
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1205049   -0.4183248    0.1773149
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -2.3880546   -2.7215325   -2.0545767
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.6573204   -1.7948044   -1.5198364
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.4603063   -1.5884052   -1.3322075


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.9654444   -1.1742112   -0.7566777
Birth       ki1000108-IRC              INDIA                          observed             observed          -0.3080412   -0.4687931   -0.1472894
Birth       ki1119695-PROBIT           BELARUS                        observed             observed           1.3254775    1.1669293    1.4840258
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.4977661   -0.5184205   -0.4771117
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          observed             observed          -1.2344062   -1.3658524   -1.1029600
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.0871041   -1.1635539   -1.0106543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.2731619   -1.3626957   -1.1836282
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed          -0.5455565   -0.5948696   -0.4962435
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.8916778   -0.9177946   -0.8655610
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.3134013   -1.3366073   -1.2901952
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.3500888   -1.3921730   -1.3080047
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -2.5593683   -2.6601027   -2.4586339
24 months   ki1000108-IRC              INDIA                          observed             observed          -1.7824776   -1.8765600   -1.6883952
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -1.5861179   -1.6693668   -1.5028689
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -1.5552692   -1.6759022   -1.4346363
24 months   ki1119695-PROBIT           BELARUS                        observed             observed          -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -2.3985333   -2.5145993   -2.2824674
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -2.0134681   -2.0411635   -1.9857727
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.7509129   -1.7892403   -1.7125856


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1197282   -0.1588728    0.3983293
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0198381   -0.3605834    0.3209071
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0571946   -0.1310822    0.0166930
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.3257954   -0.3975251   -0.2540656
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2794477   -0.4807240   -0.0781714
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.0740686   -0.3409149    0.1927778
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0955143   -0.2637767    0.0727481
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1000433   -0.2067272    0.0066405
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.1425040   -0.3173289    0.0323209
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0775426   -0.1473644   -0.0077207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0076290   -0.0674660    0.0522081
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.2919832   -0.3942994   -0.1896670
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2660778   -0.3807319   -0.1514237
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0036501   -0.4022778    0.4095779
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.1350496   -0.3444877    0.0743885
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1615302   -0.3063018   -0.0167587
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.0820078   -0.2328258    0.0688101
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0108999   -0.2238792    0.2020795
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0104787   -0.3369340    0.3159765
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3561477   -0.4883768   -0.2239186
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.2906066   -0.4115544   -0.1696588
