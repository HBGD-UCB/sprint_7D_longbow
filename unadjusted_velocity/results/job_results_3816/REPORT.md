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

unadjusted

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
![](/tmp/fd2e82e4-0405-4741-9038-da62ae26d53f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/fd2e82e4-0405-4741-9038-da62ae26d53f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                3.8938384   3.3665210   4.4211557
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                3.4754400   3.2381366   3.7127435
0-3 months     ki1000108-IRC              INDIA                          0                    NA                3.1253662   2.8041234   3.4466090
0-3 months     ki1000108-IRC              INDIA                          1                    NA                3.1830123   3.0656764   3.3003481
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                3.5524444   3.4638391   3.6410497
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                3.4614226   3.4181857   3.5046595
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                3.4057588   3.3251286   3.4863891
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                3.3364376   3.2680765   3.4047987
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.8212933   2.7126366   2.9299501
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.8373702   2.7209815   2.9537589
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                3.1793891   3.1122542   3.2465239
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                3.3872186   3.3652016   3.4092355
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                3.6717382   3.6227170   3.7207595
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                3.7205595   3.7099493   3.7311697
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                3.4612284   3.3159590   3.6064978
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                3.6486804   3.6166723   3.6806885
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.6578641   1.2908296   2.0248986
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.8145027   1.7098177   1.9191877
3-6 months     ki1000108-IRC              INDIA                          0                    NA                1.8759992   1.7211905   2.0308079
3-6 months     ki1000108-IRC              INDIA                          1                    NA                1.8816229   1.8116032   1.9516427
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.9456179   1.8703805   2.0208553
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.9714251   1.9318413   2.0110089
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.9313578   1.8651680   1.9975475
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.9292976   1.8773436   1.9812517
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.8306837   1.7088686   1.9524987
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.7914936   1.7535968   1.8293904
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                2.1376883   2.0843983   2.1909783
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                2.0857364   2.0412890   2.1301838
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.9826170   1.9179644   2.0472696
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.9718828   1.9508331   1.9929325
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.9492534   1.9054729   1.9930339
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.9182274   1.9073485   1.9291064
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.9218509   1.7977473   2.0459545
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.8966601   1.8655086   1.9278117
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                1.0035607   0.8418885   1.1652330
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                1.0667514   1.0168949   1.1166079
6-12 months    ki1000108-IRC              INDIA                          0                    NA                1.2740636   1.2042323   1.3438949
6-12 months    ki1000108-IRC              INDIA                          1                    NA                1.2433446   1.2111839   1.2755052
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                1.2203239   1.1837061   1.2569416
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                1.1597213   1.1402687   1.1791739
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                1.2467213   1.2127400   1.2807026
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                1.2430948   1.2117560   1.2744337
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                1.2195076   1.1466372   1.2923781
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                1.1941688   1.1713434   1.2169943
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                1.4594079   1.4183158   1.5005001
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                1.4723743   1.4332105   1.5115381
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                1.2239650   1.1840817   1.2638482
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                1.1968469   1.1854988   1.2081950
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.1393116   1.1088523   1.1697708
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1048069   1.0978980   1.1117159
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2435684   1.2118068   1.2753301
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2017422   1.1904658   1.2130186
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7919631   0.6659181   0.9180081
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7357079   0.7085235   0.7628922
12-24 months   ki1000108-IRC              INDIA                          0                    NA                0.8413934   0.7969510   0.8858359
12-24 months   ki1000108-IRC              INDIA                          1                    NA                0.8270610   0.8054090   0.8487129
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8653966   0.8386663   0.8921270
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.8553325   0.8419419   0.8687232
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.8632019   0.8322712   0.8941325
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.8497761   0.8285904   0.8709618
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8757655   0.7783640   0.9731670
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8580664   0.8024708   0.9136620
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6774452   0.5535950   0.8012954
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7120189   0.6853451   0.7386927
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8218959   0.7975005   0.8462913
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7951069   0.7897200   0.8004939
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8767003   0.8564739   0.8969268
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8488420   0.8427571   0.8549269


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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.4183983   -0.9966513    0.1598547
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0576461   -0.2843549    0.3996470
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0910218   -0.1896136    0.0075700
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0693213   -0.1750307    0.0363881
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0160769   -0.0470403    0.0791941
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.2078295    0.1371766    0.2784824
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0488212   -0.0013595    0.0990020
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1874520    0.0384123    0.3364916
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.1566386   -0.2250331    0.5383103
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                  0.0056238   -0.1642835    0.1755311
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0258072   -0.0592077    0.1108222
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0020601   -0.0862047    0.0820845
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0391901   -0.1667639    0.0883837
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0519519   -0.1143680    0.0104642
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0107342   -0.0787272    0.0572588
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0310260   -0.0764744    0.0144225
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0251908   -0.1520654    0.1016839
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0631906   -0.1059944    0.2323757
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0307190   -0.1076002    0.0461622
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0606025   -0.1020666   -0.0191385
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0036265   -0.0498526    0.0425996
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0253388   -0.1017004    0.0510229
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0129663   -0.0178261    0.0437588
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0271181   -0.0685844    0.0143482
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0345046   -0.0659658   -0.0030434
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0418262   -0.0751252   -0.0085273
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0562553   -0.1851984    0.0726879
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0143325   -0.0637687    0.0351037
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0100641   -0.0399610    0.0198328
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0134258   -0.0509163    0.0240647
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0176991   -0.1171797    0.0817815
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0345737   -0.0921163    0.1612637
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0267890   -0.0516412   -0.0019368
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0278583   -0.0487040   -0.0070126
