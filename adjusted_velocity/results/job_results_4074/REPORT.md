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

agecat         studyid                    country                        vagbrth    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              77      87
0-3 months     ki1000108-IRC              INDIA                          0              66     377
0-3 months     ki1000108-IRC              INDIA                          1             311     377
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             148     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             486     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             193     469
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             276     469
0-3 months     ki1119695-PROBIT           BELARUS                        0            1424   12745
0-3 months     ki1119695-PROBIT           BELARUS                        1           11321   12745
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             683    7802
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            7119    7802
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0            1704   40020
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           38316   40020
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             200    3610
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            3410    3610
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              21     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             286     307
3-6 months     ki1000108-IRC              INDIA                          0              67     397
3-6 months     ki1000108-IRC              INDIA                          1             330     397
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             133     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             441     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             182     443
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             261     443
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             159    1641
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1482    1641
3-6 months     ki1119695-PROBIT           BELARUS                        0            1473   13309
3-6 months     ki1119695-PROBIT           BELARUS                        1           11836   13309
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             509    5842
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            5333    5842
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0            1538   25100
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           23562   25100
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             256    3524
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            3268    3524
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              22     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             301     323
6-12 months    ki1000108-IRC              INDIA                          0              68     400
6-12 months    ki1000108-IRC              INDIA                          1             332     400
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             121     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             424     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             176     420
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             244     420
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             102    1065
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             963    1065
6-12 months    ki1119695-PROBIT           BELARUS                        0            1444   12896
6-12 months    ki1119695-PROBIT           BELARUS                        1           11452   12896
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             369    4533
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            4164    4533
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0            1182   19606
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1           18424   19606
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             474    5610
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            5136    5610
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              23     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             301     324
12-24 months   ki1000108-IRC              INDIA                          0              67     396
12-24 months   ki1000108-IRC              INDIA                          1             329     396
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             101     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             357     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              94     241
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             147     241
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       2
12-24 months   ki1119695-PROBIT           BELARUS                        0             298    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1            2235    2533
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              20     297
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             277     297
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             524    9252
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            8728    9252
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             513    6223
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            5710    6223


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
![](/tmp/f8dc1312-0d28-4b15-bdf0-2cbbf4471c9d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f8dc1312-0d28-4b15-bdf0-2cbbf4471c9d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.8965379   3.3944153   4.3986606
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.4767071   3.2396575   3.7137568
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.0654328   2.7818586   3.3490070
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1810441   3.0646765   3.2974116
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5575271   3.4992076   3.6158466
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4634928   3.4222488   3.5047368
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.4057654   3.3251571   3.4863737
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3364332   3.2680865   3.4047799
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8002882   2.7002584   2.9003180
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.8365204   2.7206822   2.9523587
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.1959587   3.1415291   3.2503882
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.3853172   3.3634339   3.4072004
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6489640   3.6081827   3.6897453
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7218768   3.7112944   3.7324592
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.5015197   3.3949244   3.6081151
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6485127   3.6166469   3.6803784
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.6531731   1.2863204   2.0200258
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8148469   1.7101730   1.9195209
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8806920   1.7351791   2.0262049
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8813645   1.8115527   1.9511764
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9133606   1.8642383   1.9624828
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9740606   1.9366309   2.0114904
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.9390102   1.8742810   2.0037394
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9331770   1.8818087   1.9845452
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8654566   1.7819224   1.9489908
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7915799   1.7544446   1.8287152
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.1408714   2.0936311   2.1881117
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.0850639   2.0407385   2.1293892
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                2.0147032   1.9642022   2.0652042
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.9717225   1.9507894   1.9926555
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.9381394   1.8963447   1.9799342
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9191061   1.9082767   1.9299355
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.9118636   1.8242653   1.9994620
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8964878   1.8653622   1.9276135
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0105956   0.8811072   1.1400841
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0660951   1.0163975   1.1157927
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2449522   1.1781546   1.3117497
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2436747   1.2116164   1.2757330
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.2554349   1.2318667   1.2790031
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1595874   1.1410502   1.1781246
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2867596   1.2552862   1.3182331
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2654349   1.2352426   1.2956271
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.1719351   1.1271564   1.2167138
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1930170   1.1705062   1.2155278
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4533847   1.4165367   1.4902327
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4719232   1.4328293   1.5110171
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.2393336   1.2072682   1.2713991
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.1968142   1.1855199   1.2081085
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.1114194   1.0903687   1.1324701
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1059911   1.0991300   1.1128522
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2338838   1.2064761   1.2612915
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2027400   1.1914601   1.2140200
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7771361   0.6752682   0.8790040
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7356397   0.7085700   0.7627094
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8527339   0.8199705   0.8854973
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8280078   0.8068943   0.8491213
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8944448   0.8780987   0.9107908
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8575350   0.8447140   0.8703560
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8632686   0.8325553   0.8939819
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8497298   0.8286017   0.8708580
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8897570   0.7768576   1.0026563
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8587489   0.8037777   0.9137201
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6786932   0.5553927   0.8019936
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7119261   0.6852550   0.7385972
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7913696   0.7795307   0.8032085
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7949909   0.7896483   0.8003335
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8810909   0.8611308   0.9010510
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8491393   0.8430708   0.8552077


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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1068872   1.1001712   1.1136032
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2052762   1.1944943   1.2160580
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8550127   0.8373147   0.8727107
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7096907   0.6834338   0.7359476
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966242   0.7913016   0.8019468
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8511386   0.8452639   0.8570132


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.4198308   -0.9730629    0.1334013
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.1156113   -0.1905618    0.4217844
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0940343   -0.1642326   -0.0238360
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0693322   -0.1749905    0.0363261
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0362323   -0.0222854    0.0947499
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1893585    0.1310509    0.2476662
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0729128    0.0311586    0.1146670
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1469929    0.0363689    0.2576170
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1616739   -0.2197655    0.5431132
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0006725   -0.1607163    0.1620614
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0607001   -0.0006700    0.1220701
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0058333   -0.0884697    0.0768032
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0738767   -0.1640484    0.0162949
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0558075   -0.1125232    0.0009081
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0429807   -0.0972746    0.0113132
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0190333   -0.0623425    0.0242759
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0153758   -0.1070253    0.0762737
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0554995   -0.0824521    0.1934510
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0012775   -0.0751822    0.0726272
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0958475   -0.1258501   -0.0658449
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0213248   -0.0651309    0.0224814
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0210819   -0.0279158    0.0700795
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0185385   -0.0118487    0.0489257
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0425194   -0.0762994   -0.0087394
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0054283   -0.0277807    0.0169241
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0311437   -0.0604449   -0.0018426
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0414963   -0.1465759    0.0635832
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0247261   -0.0620850    0.0126328
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0369097   -0.0577411   -0.0160784
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0135388   -0.0506511    0.0235735
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0310081   -0.1504628    0.0884467
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0332329   -0.0928794    0.1593453
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0036213   -0.0089953    0.0162379
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0319517   -0.0526007   -0.0113026
