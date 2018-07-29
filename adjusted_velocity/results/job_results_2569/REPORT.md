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

**Outcome Variable:** y_rate_len

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
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        vagbrth    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             148     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             486     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             193     469
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             276     469
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             852   20010
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           19158   20010
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             100    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1705    1805
0-3 months     ki1119695-PROBIT           BELARUS                        0            1424   12745
0-3 months     ki1119695-PROBIT           BELARUS                        1           11321   12745
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              77      87
0-3 months     ki1000108-IRC              INDIA                          0              66     377
0-3 months     ki1000108-IRC              INDIA                          1             311     377
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             683    7802
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            7119    7802
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             133     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             441     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             182     443
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             261     443
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             769   12550
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           11781   12550
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             128    1762
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1634    1762
3-6 months     ki1119695-PROBIT           BELARUS                        0            1473   13309
3-6 months     ki1119695-PROBIT           BELARUS                        1           11836   13309
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              21     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             286     307
3-6 months     ki1000108-IRC              INDIA                          0              67     397
3-6 months     ki1000108-IRC              INDIA                          1             330     397
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             159    1641
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1482    1641
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             509    5842
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            5333    5842
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             121     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             424     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             176     420
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             244     420
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             591    9804
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            9213    9804
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             237    2808
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            2571    2808
6-12 months    ki1119695-PROBIT           BELARUS                        0            1444   12896
6-12 months    ki1119695-PROBIT           BELARUS                        1           11452   12896
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              22     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             301     323
6-12 months    ki1000108-IRC              INDIA                          0              68     400
6-12 months    ki1000108-IRC              INDIA                          1             332     400
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             102    1065
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             963    1065
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             369    4533
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            4164    4533
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             101     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             357     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              94     241
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             147     241
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             262    4628
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            4366    4628
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             257    3115
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            2858    3115
12-24 months   ki1119695-PROBIT           BELARUS                        0             298    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1            2235    2533
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              23     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             301     324
12-24 months   ki1000108-IRC              INDIA                          0              67     396
12-24 months   ki1000108-IRC              INDIA                          1             329     396
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              20     297
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             277     297


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/485bc593-703a-4931-b1fd-f03e1fb3105c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/485bc593-703a-4931-b1fd-f03e1fb3105c/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.8938384   3.3665210   4.4211557
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.4754400   3.2381366   3.7127435
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.0555252   2.7408198   3.3702307
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1801078   3.0629164   3.2972993
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5837422   3.5278729   3.6396114
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4610779   3.4201358   3.5020201
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.4057490   3.3251581   3.4863400
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3364427   3.2681046   3.4047807
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.7983244   2.6979557   2.8986932
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.8364653   2.7206575   2.9522732
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.1780015   3.1234753   3.2325277
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.3852230   3.3633385   3.4071074
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6547316   3.6134523   3.6960108
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7218778   3.7112803   3.7324752
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.4997023   3.3891169   3.6102878
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6482535   3.6163615   3.6801455
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.6578641   1.2908296   2.0248986
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8145027   1.7098177   1.9191877
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.9533886   1.8260373   2.0807399
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8800762   1.8113463   1.9488061
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.8836418   1.8415269   1.9257567
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9715657   1.9352354   2.0078960
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.9318961   1.8657728   1.9980194
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9289222   1.8770118   1.9808326
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8975996   1.8121605   1.9830387
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7934360   1.7561342   1.8307377
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.1401878   2.0935049   2.1868706
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.0851453   2.0408436   2.1294469
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9815850   1.9293660   2.0338039
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.9716063   1.9506516   1.9925610
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.9333583   1.8938796   1.9728370
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9189374   1.9081155   1.9297592
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.9126481   1.8259433   1.9993529
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8963814   1.8652482   1.9275147
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0081895   0.8541081   1.1622709
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0665390   1.0167479   1.1163301
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2682347   1.2075017   1.3289677
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2437047   1.2119284   1.2754811
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.2522327   1.2288776   1.2755879
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1604673   1.1420422   1.1788924
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2965123   1.2637523   1.3292722
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2699824   1.2389767   1.3009882
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2166289   1.1693733   1.2638845
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1945387   1.1720308   1.2170466
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4540095   1.4170608   1.4909581
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4718338   1.4328074   1.5108602
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.2382654   1.2048902   1.2716406
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.1967858   1.1854846   1.2080870
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.1112827   1.0896181   1.1329473
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1060431   1.0991702   1.1129160
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2326028   1.2055529   1.2596526
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2027656   1.1915167   1.2140146
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6445233   0.5446708   0.7443759
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7350451   0.7078925   0.7621976
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8429795   0.7991456   0.8868134
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8267380   0.8051035   0.8483726
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8801696   0.8629403   0.8973988
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8562360   0.8433292   0.8691429
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8634105   0.8328731   0.8939479
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8496372   0.8285284   0.8707460
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8932808   0.7742681   1.0122936
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8588043   0.8038272   0.9137814
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6744181   0.5562805   0.7925556
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7122383   0.6855860   0.7388907
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8038479   0.7911224   0.8165734
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7950916   0.7897375   0.8004457
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8832342   0.8625876   0.9038809
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8491622   0.8430913   0.8552331


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3649642   3.3127253   3.4172032
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3690248   3.3480527   3.3899969
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184807   3.7081255   3.7288360
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6382952   3.6070008   3.6695897
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.9301440   1.8892000   1.9710881
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7952908   1.7590835   1.8314981
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9728181   1.9527936   1.9928426
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9201286   1.9096400   1.9306171
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8984901   1.8679171   1.9290631
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2446145   1.2215001   1.2677288
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1965957   1.1748037   1.2183876
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1990544   1.1881340   1.2099748
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069052   1.1001881   1.1136222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2052595   1.1944986   1.2160203
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8550127   0.8373147   0.8727107
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7096907   0.6834338   0.7359476
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966279   0.7913026   0.8019533
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8510893   0.8452149   0.8569636


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.4183983   -0.9966513    0.1598547
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.1245826   -0.2111395    0.4603047
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1226642   -0.1920009   -0.0533276
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0693064   -0.1749419    0.0363292
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0381409   -0.0207591    0.0970409
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.2072215    0.1488230    0.2656199
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0671462    0.0248983    0.1093941
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1485512    0.0340373    0.2630652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1566386   -0.2250331    0.5383103
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0733124   -0.2168879    0.0702631
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0879239    0.0369311    0.1389167
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0029739   -0.0869639    0.0810161
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1041637   -0.1963814   -0.0119459
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0550425   -0.1112323    0.0011473
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0099786   -0.0658952    0.0459379
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0144209   -0.0554557    0.0266139
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0162667   -0.1070616    0.0745283
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0583495   -0.1032085    0.2199075
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0245300   -0.0920173    0.0429573
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0917654   -0.1213408   -0.0621899
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0265298   -0.0720051    0.0189454
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0220902   -0.0732226    0.0290423
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0178243   -0.0128364    0.0484850
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0414796   -0.0765061   -0.0064532
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0052396   -0.0283305    0.0178513
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0298371   -0.0588579   -0.0008164
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0905217   -0.0128521    0.1938955
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0162414   -0.0649733    0.0324904
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0239335   -0.0454764   -0.0023906
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0137733   -0.0506184    0.0230718
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0344766   -0.1600070    0.0910539
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0378203   -0.0828176    0.1584581
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0087563   -0.0221578    0.0046452
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0340720   -0.0553928   -0.0127512
