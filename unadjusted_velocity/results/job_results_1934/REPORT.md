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
      W: []
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

**Outcome Variable:** y_rate_lencm

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                    country                        vagbrth    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0             148     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1             486     634
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0             133     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1             441     574
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0             121     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1             424     545
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0             101     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1             357     458
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             193     469
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             276     469
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0             182     443
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1             261     443
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             176     420
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             244     420
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              94     241
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1             147     241
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             852   20010
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1           19158   20010
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             769   12550
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1           11781   12550
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             591    9804
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            9213    9804
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             262    4628
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            4366    4628
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0             100    1805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1705    1805
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0             237    2808
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1            2571    2808
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0             257    3115
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            2858    3115
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0             128    1762
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1            1634    1762
0-3 months     ki1119695-PROBIT           BELARUS                        0            1424   12745
0-3 months     ki1119695-PROBIT           BELARUS                        1           11321   12745
3-6 months     ki1119695-PROBIT           BELARUS                        0            1473   13309
3-6 months     ki1119695-PROBIT           BELARUS                        1           11836   13309
6-12 months    ki1119695-PROBIT           BELARUS                        0            1444   12896
6-12 months    ki1119695-PROBIT           BELARUS                        1           11452   12896
12-24 months   ki1119695-PROBIT           BELARUS                        0             298    2533
12-24 months   ki1119695-PROBIT           BELARUS                        1            2235    2533
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              21     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1             286     307
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              22     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             301     323
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              23     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             301     324
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0              10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              77      87
3-6 months     ki1000108-IRC              INDIA                          0              67     397
3-6 months     ki1000108-IRC              INDIA                          1             330     397
6-12 months    ki1000108-IRC              INDIA                          0              68     400
6-12 months    ki1000108-IRC              INDIA                          1             332     400
12-24 months   ki1000108-IRC              INDIA                          0              67     396
12-24 months   ki1000108-IRC              INDIA                          1             329     396
0-3 months     ki1000108-IRC              INDIA                          0              66     377
0-3 months     ki1000108-IRC              INDIA                          1             311     377
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0              35     530
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1             495     530
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0              29     499
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1             470     499
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         0               2       7
3-6 months     ki1148112-iLiNS-DYAD-M     MALAWI                         1               5       7
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             159    1641
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            1482    1641
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0             102    1065
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             963    1065
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       2
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             683    7802
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            7119    7802
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0             509    5842
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1            5333    5842
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0             369    4533
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1            4164    4533
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0              20     297
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             277     297


The following strata were considered:

* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/67d283f0-509c-4cc9-9601-b1a2a72b4e4b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/67d283f0-509c-4cc9-9601-b1a2a72b4e4b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
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
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                1.2369164   1.1484922   1.3253405
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                1.1960430   1.1715828   1.2205032
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                1.1393116   1.1088493   1.1697739
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                1.1048263   1.0979163   1.1117364
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                1.2435684   1.2118521   1.2752848
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                1.2017281   1.1904743   1.2129818
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
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.8156164   0.7619700   0.8692629
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.8297298   0.8143174   0.8451422
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.8218959   0.7974905   0.8463013
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.7951116   0.7897218   0.8005015
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.8768398   0.8567189   0.8969607
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.8487737   0.8426874   0.8548600


### Parameter: E(Y)


diffcat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
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
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                1.1987422   1.1751469   1.2223374
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1069052   1.1001881   1.1136222
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2052595   1.1944986   1.2160203
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8550127   0.8373147   0.8727107
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7096907   0.6834338   0.7359476
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.8289096   0.8140590   0.8437601
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966279   0.7913026   0.8019533
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8510893   0.8452149   0.8569636


### Parameter: ATE


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
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
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 -0.0408734   -0.1326183    0.0508716
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0344852   -0.0659497   -0.0030208
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0418404   -0.0750892   -0.0085916
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
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  0.0141133   -0.0417032    0.0699298
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0267843   -0.0516468   -0.0019218
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0280661   -0.0488108   -0.0073214
