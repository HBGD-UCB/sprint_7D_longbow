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
![](/tmp/78be1776-b4a7-44e7-b515-d3ea975dc77a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/78be1776-b4a7-44e7-b515-d3ea975dc77a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1143379   -0.0983840    0.3270597
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0980496   -0.2136600    0.0175609
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2969431   -0.4374931   -0.1563932
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.2504907   -0.3090180   -0.1919634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0042560   -0.0298326    0.0213206
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0464420   -0.0649757   -0.0279083
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0673390   -0.1051141   -0.0295639
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1198687   -0.1518281   -0.0879093
0-3 months     ki1119695-PROBIT           BELARUS                        0                    NA                -0.4581064   -0.5117011   -0.4045116
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.4369647   -0.4972339   -0.3766956
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2468354   -0.2741317   -0.2195391
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1351131   -0.1460155   -0.1242106
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0799251    0.0584859    0.1013643
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0703080    0.0652253    0.0753908
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0506409   -0.0014989    0.1027807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0697457    0.0543736    0.0851177
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1498299   -0.3218283    0.0221686
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0941530   -0.1436696   -0.0446364
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0154603   -0.0762797    0.0453592
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0509386   -0.0832506   -0.0186266
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0711907   -0.0920573   -0.0503242
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0229326   -0.0401506   -0.0057146
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0110097   -0.0381959    0.0161765
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0119068   -0.0341360    0.0103223
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0340145   -0.0730697    0.0050408
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0852031   -0.1024699   -0.0679362
3-6 months     ki1119695-PROBIT           BELARUS                        0                    NA                 0.0697767    0.0478638    0.0916896
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.0441779    0.0235082    0.0648476
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000364   -0.0241358    0.0242085
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0027129   -0.0125210    0.0070952
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0038211   -0.0144382    0.0220805
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0035789   -0.0086137    0.0014560
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0049789   -0.0444083    0.0344506
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0098890   -0.0242347    0.0044566
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1167907   -0.1677095   -0.0658720
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0978503   -0.1192716   -0.0764289
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0198661   -0.0482311    0.0084988
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0276088   -0.0414757   -0.0137419
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0338327   -0.0436525   -0.0240129
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0676810   -0.0750423   -0.0603197
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0037811   -0.0180448    0.0104825
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0115482   -0.0243934    0.0012969
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0673698   -0.0880305   -0.0467091
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0602208   -0.0698430   -0.0505987
6-12 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0339290    0.0179091    0.0499489
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0428312    0.0260073    0.0596552
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0338661   -0.0474889   -0.0202432
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0497380   -0.0545633   -0.0449127
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0783319   -0.0875263   -0.0691375
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0748801   -0.0777987   -0.0719616
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0292915   -0.0405900   -0.0179930
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0380907   -0.0428309   -0.0333505
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0724498   -0.1097453   -0.0351543
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0471995   -0.0575704   -0.0368287
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0282588   -0.0429378   -0.0135797
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0323298   -0.0400365   -0.0246231
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0058096   -0.0109278   -0.0006914
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0074822   -0.0115145   -0.0034499
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0122832   -0.0225680   -0.0019984
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0166308   -0.0234145   -0.0098471
12-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0329829   -0.0771166    0.0111508
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0435155   -0.0614295   -0.0256014
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0673960   -0.1113486   -0.0234433
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0505627   -0.0599885   -0.0411370
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0193287   -0.0243458   -0.0143115
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0190149   -0.0208801   -0.0171496
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0052553   -0.0129559    0.0024454
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0145690   -0.0166950   -0.0124431


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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748634   -0.0776939   -0.0720329
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0374375   -0.0419664   -0.0329085
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0149351   -0.0207045   -0.0091656
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0516964   -0.0610161   -0.0423766
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187996   -0.0206536   -0.0169456
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0141850   -0.0162455   -0.0121244


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.2123874   -0.4532005    0.0284257
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                  0.0464524   -0.1041589    0.1970637
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0421860   -0.0713959   -0.0129762
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0525297   -0.1018972   -0.0031623
0-3 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        1                    0                  0.0211416   -0.0097041    0.0519873
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.1117224    0.0824310    0.1410137
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0096171   -0.0316119    0.0123778
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0191048   -0.0354381    0.0736476
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0556769   -0.1233027    0.2346565
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0354784   -0.1036079    0.0326511
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0482581    0.0228960    0.0736202
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0008971   -0.0334967    0.0317025
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0511886   -0.0933027   -0.0090745
3-6 months     ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        1                    0                 -0.0255988   -0.0516038    0.0004063
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0027492   -0.0286992    0.0232007
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0074000   -0.0263690    0.0115689
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0049102   -0.0463614    0.0365411
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0189405   -0.0358329    0.0737138
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0077427   -0.0388449    0.0233595
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0338483   -0.0461138   -0.0215827
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0077671   -0.0271067    0.0115726
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0071490   -0.0151973    0.0294952
6-12 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0089022   -0.0040557    0.0218601
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0158719   -0.0302495   -0.0014944
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0034518   -0.0063860    0.0132895
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0087992   -0.0209550    0.0033567
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0252502   -0.0134155    0.0639159
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0040710   -0.0204545    0.0123125
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0016726   -0.0080619    0.0047168
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0043476   -0.0166679    0.0079728
12-24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.0105325   -0.0574554    0.0363904
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0168332   -0.0280199    0.0616864
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0003138   -0.0049224    0.0055501
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0093138   -0.0172209   -0.0014066
