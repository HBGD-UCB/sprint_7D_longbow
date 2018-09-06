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

**Outcome Variable:** y_rate_haz

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
![](/tmp/9c3cc49b-cd26-439b-865c-867fb3f1714f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9c3cc49b-cd26-439b-865c-867fb3f1714f/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1194888   -0.1012668    0.3402444
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0976194   -0.2137988    0.0185599
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.3233356   -0.4546268   -0.1920444
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2523862   -0.3108659   -0.1939064
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0553393   -0.0826656   -0.0280130
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0514929   -0.0702584   -0.0327275
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0679478   -0.1049223   -0.0309732
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1192578   -0.1507614   -0.0877542
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4573188   -0.5107289   -0.4039088
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.4369452   -0.4972370   -0.3766535
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2403509   -0.2676279   -0.2130739
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1348266   -0.1457253   -0.1239279
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0797915    0.0590080    0.1005750
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0704176    0.0653431    0.0754922
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0499797   -0.0026175    0.1025770
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0697036    0.0543328    0.0850745
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1496943   -0.3217145    0.0223260
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0941629   -0.1436800   -0.0446459
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0390748   -0.1080555    0.0299059
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0513310   -0.0840670   -0.0185950
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0527762   -0.0755320   -0.0300204
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0211361   -0.0387425   -0.0035296
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0173362   -0.0444021    0.0097297
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0117837   -0.0339263    0.0103588
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0532932   -0.0921682   -0.0144182
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0857574   -0.1029967   -0.0685180
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0694939    0.0477117    0.0912761
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.0441763    0.0235022    0.0648503
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0066930   -0.0164857    0.0298718
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0026562   -0.0124553    0.0071428
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0011602   -0.0180048    0.0203251
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0034987   -0.0085298    0.0015324
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0041730   -0.0430355    0.0346895
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0098819   -0.0242246    0.0044607
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1137676   -0.1681992   -0.0593360
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0980733   -0.1195319   -0.0766146
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0282145   -0.0577263    0.0012974
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0277903   -0.0417439   -0.0138367
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0281398   -0.0378635   -0.0184162
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0669301   -0.0743003   -0.0595598
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0101613   -0.0224431    0.0021206
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0144436   -0.0260396   -0.0028475
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0659153   -0.0848476   -0.0469829
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0603898   -0.0699812   -0.0507984
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0338600    0.0178451    0.0498749
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0428568    0.0260118    0.0597019
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0336438   -0.0477258   -0.0195618
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0497046   -0.0545307   -0.0448786
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0789782   -0.0879505   -0.0700059
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0749276   -0.0778437   -0.0720114
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0287945   -0.0402877   -0.0173013
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0381379   -0.0428893   -0.0333865
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0278590   -0.0724343    0.0167164
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0468763   -0.0572541   -0.0364985
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0238797   -0.0371945   -0.0105650
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0321084   -0.0397031   -0.0245137
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0017050   -0.0071107    0.0037006
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0070974   -0.0111457   -0.0030490
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0121695   -0.0223633   -0.0019757
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0167064   -0.0234612   -0.0099516
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0346937   -0.0736055    0.0042182
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0435331   -0.0614895   -0.0255768
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0743988   -0.1178516   -0.0309460
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0505685   -0.0599943   -0.0411427
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0253129   -0.0298139   -0.0208120
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0190496   -0.0209093   -0.0171899
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0063665   -0.0132918    0.0005588
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0145979   -0.0167228   -0.0124730


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0982500   -0.1228099   -0.0736901
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1438320   -0.1542778   -0.1333861
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705665    0.0656128    0.0755202
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0672843    0.0522760    0.0822927
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0114860   -0.0302773    0.0073054
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0845892   -0.1013959   -0.0677825
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0019119   -0.0112787    0.0074549
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034796   -0.0083626    0.0014034
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0091589   -0.0232046    0.0048867
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0233651   -0.0330011   -0.0137291
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0595829   -0.0688798   -0.0502860
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0488507   -0.0535137   -0.0441878
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748712   -0.0777013   -0.0720410
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0374351   -0.0419740   -0.0328961
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0149351   -0.0207045   -0.0091656
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0516964   -0.0610161   -0.0423766
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188086   -0.0206601   -0.0169571
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0141711   -0.0162327   -0.0121095


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2171082   -0.4658805    0.0316641
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0709494   -0.0724482    0.2143470
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0038464   -0.0270238    0.0347165
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0513100   -0.0992514   -0.0033686
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0203736   -0.0103060    0.0510532
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1055243    0.0762593    0.1347893
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0093739   -0.0307183    0.0119705
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0197239   -0.0352077    0.0746555
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0555313   -0.1234727    0.2345353
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0122562   -0.0883408    0.0638284
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0316401    0.0030030    0.0602773
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0055525   -0.0271436    0.0382485
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0324642   -0.0744221    0.0094936
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0253176   -0.0512602    0.0006250
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0093493   -0.0343731    0.0156746
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0046589   -0.0245285    0.0152107
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0057089   -0.0466367    0.0352188
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0156944   -0.0424136    0.0738023
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                  0.0004242   -0.0321310    0.0329794
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0387902   -0.0510009   -0.0265795
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0042823   -0.0203564    0.0117918
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0055254   -0.0151977    0.0262485
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0089968   -0.0037844    0.0217781
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0160608   -0.0308797   -0.0012420
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0040506   -0.0055235    0.0136247
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0093434   -0.0216563    0.0029696
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0190173   -0.0647589    0.0267243
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0082287   -0.0229066    0.0064493
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0053923   -0.0120874    0.0013027
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0045369   -0.0166979    0.0076241
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0088394   -0.0504241    0.0327452
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0238303   -0.0206356    0.0682962
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0062634    0.0015180    0.0110087
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0082314   -0.0153820   -0.0010808
