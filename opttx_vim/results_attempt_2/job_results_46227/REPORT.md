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

**Outcome Variable:** whz

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

agecat      studyid                    country                        vagbrth    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              10      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              78      88
Birth       ki1000108-IRC              INDIA                          0              66     343
Birth       ki1000108-IRC              INDIA                          1             277     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              16      17
Birth       ki1119695-PROBIT           BELARUS                        0             713    6739
Birth       ki1119695-PROBIT           BELARUS                        1            6026    6739
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0            1099   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           11714   12813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0    7676
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            7676    7676
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     185
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             185     185
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              25     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             343     368
6 months    ki1000108-IRC              INDIA                          0              68     408
6 months    ki1000108-IRC              INDIA                          1             340     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             134     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1             448     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             187     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             270     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             189    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1815    2004
6 months    ki1119695-PROBIT           BELARUS                        0             811    7664
6 months    ki1119695-PROBIT           BELARUS                        1            6853    7664
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             706    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            7491    8197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0             526    8273
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            7747    8273
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              72    1054
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1             982    1054
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              25     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             347     372
24 months   ki1000108-IRC              INDIA                          0              69     409
24 months   ki1000108-IRC              INDIA                          1             340     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             137     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1             441     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              99     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             161     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               4       6
24 months   ki1119695-PROBIT           BELARUS                        0             150    1589
24 months   ki1119695-PROBIT           BELARUS                        1            1439    1589
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              28     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             389     417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             224    4257
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            4033    4257
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              69    1061
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1             992    1061


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
![](/tmp/20fad1fe-8371-4b2d-ada1-1f8639e2ca2c/005dec89-90d7-4500-af7a-f43da9806f9a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->




## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6750475   -1.4623318    0.1122367
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.9605162   -1.1616052   -0.7594273
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -1.0035822   -1.3230824   -0.6840821
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.5024596   -0.5343929   -0.4705264
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.6326910   -0.8048272   -0.4605547
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.3861694   -0.7236981   -0.0486407
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.0223436   -0.1590951    0.1144080
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed           0.1911593    0.0524882    0.3298305
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed           0.3137445    0.1396791    0.4878098
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.5455589    0.4706593    0.6204586
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed           0.4072969    0.3117110    0.5028828
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.3910252   -0.5107498   -0.2713007
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -0.3814372   -0.7068926   -0.0559819
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.2163470   -0.6281382    0.1954441
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.5443128   -0.7957606   -0.2928649
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.9073294   -1.0343764   -0.7802823
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.6228275   -0.7912936   -0.4543613
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed           0.8573883    0.5319736    1.1828030
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.7704480   -1.1472107   -0.3936853
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -1.1615418   -1.3197393   -1.0033443
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          -1.3561132   -1.5044522   -1.2077743


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.6275000   -0.9746292   -0.2803708
Birth       ki1000108-IRC              INDIA                          observed             observed          -1.0105831   -1.1973019   -0.8238643
Birth       ki1119695-PROBIT           BELARUS                        observed             observed          -1.1877267   -1.5203042   -0.8551491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -0.5165387   -0.5425056   -0.4905717
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          observed             observed          -0.5989297   -0.7344491   -0.4634104
6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.2083706   -0.2927992   -0.1239419
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed           0.0515536   -0.0469240    0.1500313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             observed           0.0769382    0.0241090    0.1297674
6 months    ki1119695-PROBIT           BELARUS                        observed             observed           0.5810067    0.5014871    0.6605262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed           0.3058247    0.2796439    0.3320055
6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -0.5895117   -0.6169445   -0.5620788
6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -0.3513899   -0.4292990   -0.2734809
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             observed          -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          observed             observed          -0.7458150   -0.8368180   -0.6548120
24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             observed          -0.8879412   -0.9708680   -0.8050144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             observed          -0.8343077   -0.9482310   -0.7203844
24 months   ki1119695-PROBIT           BELARUS                        observed             observed           0.8061601    0.6592496    0.9530705
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             observed          -1.1870743   -1.2881393   -1.0860094
24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             observed          -1.2932441   -1.3257311   -1.2607570
24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             observed          -1.2404241   -1.3064768   -1.1743715


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.0475475   -0.6935648    0.7886598
Birth       ki1000108-IRC              INDIA                          optimal              observed          -0.0500668   -0.1508499    0.0507162
Birth       ki1119695-PROBIT           BELARUS                        optimal              observed          -0.1841444   -0.3363805   -0.0319084
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.0140790   -0.0317149    0.0035568
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed           0.1300143    0.0360350    0.2239937
6 months    ki1000108-IRC              INDIA                          optimal              observed          -0.2127603   -0.5239403    0.0984196
6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          -0.1860270   -0.3110764   -0.0609776
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.1396057   -0.2372831   -0.0419284
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          -0.2368063   -0.4027042   -0.0709084
6 months    ki1119695-PROBIT           BELARUS                        optimal              observed           0.0354477   -0.0136648    0.0845603
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.1014722   -0.1929124   -0.0100321
6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1984864   -0.3128956   -0.0840773
6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.0300473   -0.2812036    0.3412982
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          -0.3408035   -0.7387738    0.0571668
24 months   ki1000108-IRC              INDIA                          optimal              observed          -0.2015022   -0.4264783    0.0234739
24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed           0.0193882   -0.0876717    0.1264480
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          -0.2114802   -0.3454660   -0.0774945
24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          -0.0512283   -0.2685151    0.1660585
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          -0.4166263   -0.7837282   -0.0495245
24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          -0.1317023   -0.2857877    0.0223832
24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed           0.1156891   -0.0169275    0.2483057
