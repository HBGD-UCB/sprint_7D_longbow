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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        vagbrth    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       20     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        5     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      272     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       71     368
0-6 months    ki1000108-IRC              INDIA                          0                     0       59     410
0-6 months    ki1000108-IRC              INDIA                          0                     1       11     410
0-6 months    ki1000108-IRC              INDIA                          1                     0      301     410
0-6 months    ki1000108-IRC              INDIA                          1                     1       39     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0      143     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       17     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      491     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1       49     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      175     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       29     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      257     500
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       39     500
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      192    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       20    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2015    2367
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      140    2367
0-6 months    ki1119695-PROBIT           BELARUS                        0                     0     1934   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                     1       17   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                     0    14806   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                     1      136   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     1086   13937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       90   13937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    11394   13937
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1367   13937
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1176   27088
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1      337   27088
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    17201   27088
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     8374   27088
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      286    4506
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     1       84    4506
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2914    4506
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1222    4506
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        7     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       13     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       90     288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      178     288
6-24 months   ki1000108-IRC              INDIA                          0                     0       42     339
6-24 months   ki1000108-IRC              INDIA                          0                     1       14     339
6-24 months   ki1000108-IRC              INDIA                          1                     0      214     339
6-24 months   ki1000108-IRC              INDIA                          1                     1       69     339
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0       98     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       27     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      280     497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       92     497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      140     394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       28     394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      173     394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       53     394
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      160    1826
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       18    1826
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1424    1826
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      224    1826
6-24 months   ki1119695-PROBIT           BELARUS                        0                     0     1811   16303
6-24 months   ki1119695-PROBIT           BELARUS                        0                     1       72   16303
6-24 months   ki1119695-PROBIT           BELARUS                        1                     0    13872   16303
6-24 months   ki1119695-PROBIT           BELARUS                        1                     1      548   16303
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      683    9239
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      113    9239
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     7303    9239
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1140    9239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0      836   13236
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      125   13236
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     9793   13236
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2482   13236
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      259    3582
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       65    3582
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2255    3582
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1003    3582
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        4     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       21     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       72     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      276     373
0-24 months   ki1000108-IRC              INDIA                          0                     0       37     410
0-24 months   ki1000108-IRC              INDIA                          0                     1       33     410
0-24 months   ki1000108-IRC              INDIA                          1                     0      178     410
0-24 months   ki1000108-IRC              INDIA                          1                     1      162     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0      107     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       53     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      330     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      210     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      133     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       71     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      163     500
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      133     500
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      168    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       44    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1664    2367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      491    2367
0-24 months   ki1119695-PROBIT           BELARUS                        0                     0     1763   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                     1      188   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                     0    13434   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                     1     1512   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      842   13958
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      335   13958
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     9042   13958
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     3739   13958
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1018   27109
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      496   27109
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    14061   27109
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1    11534   27109
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      218    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      153    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1848    4520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     2301    4520


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/454ed958-e229-44bf-a08b-98486f32da9e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/454ed958-e229-44bf-a08b-98486f32da9e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/454ed958-e229-44bf-a08b-98486f32da9e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/454ed958-e229-44bf-a08b-98486f32da9e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.4714286   0.3543468   0.5885103
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4764706   0.4233176   0.5296236
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3312500   0.2582692   0.4042308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3888889   0.3477422   0.4300355
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3480392   0.2826069   0.4134716
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4493243   0.3926006   0.5060481
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2075472   0.1529441   0.2621502
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2278422   0.2101295   0.2455550
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0963608   0.0781856   0.1145361
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1011642   0.0848093   0.1175191
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2846219   0.2588422   0.3104016
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2925436   0.2846564   0.3004309
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3276090   0.2998306   0.3553874
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4506349   0.4430078   0.4582620
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4123989   0.3460056   0.4787922
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5545915   0.5361395   0.5730434
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000   0.0429894   0.3570106
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2069971   0.1640621   0.2499321
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1571429   0.0717830   0.2425027
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1147059   0.0807922   0.1486196
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1062500   0.0584673   0.1540327
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0907407   0.0664966   0.1149849
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1421569   0.0941884   0.1901253
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1317568   0.0931872   0.1703263
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0943396   0.0549845   0.1336948
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0649652   0.0545571   0.0753733
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0087135   0.0045803   0.0128466
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0091019   0.0058078   0.0123959
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0765306   0.0613360   0.0917252
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1071233   0.1017572   0.1124894
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2227363   0.1984007   0.2470719
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3274291   0.3204639   0.3343944
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2270270   0.1760489   0.2780052
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2954545   0.2791765   0.3117326
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6500000   0.4405988   0.8594012
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6641791   0.6075379   0.7208203
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.2500000   0.1364215   0.3635785
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2438163   0.1937158   0.2939167
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2160000   0.1437870   0.2882130
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2473118   0.2034240   0.2911996
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1666667   0.1102407   0.2230926
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2345133   0.1792040   0.2898226
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1011236   0.0568206   0.1454266
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1359223   0.1193719   0.1524728
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0382369   0.0250613   0.0514124
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0380028   0.0277925   0.0482131
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1419598   0.1177132   0.1662064
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1350231   0.1277331   0.1423131
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1300728   0.1077131   0.1524326
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2021996   0.1938738   0.2105254
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2006173   0.1391792   0.2620554
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3078576   0.2887519   0.3269633


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4080000   0.3648790   0.4511210
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2260245   0.2091713   0.2428777
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1006096   0.0848963   0.1163228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2918756   0.2843333   0.2994180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4437641   0.4362380   0.4512902
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5429204   0.5251795   0.5606613
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2065217   0.1651060   0.2479375
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1219512   0.0902381   0.1536643
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1360000   0.1059237   0.1660763
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0675961   0.0574802   0.0777120
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0090570   0.0059070   0.0122070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1045419   0.0994621   0.1096217
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3215815   0.3148000   0.3283630
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2898358   0.2745243   0.3051473
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6631944   0.6085159   0.7178730
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2448378   0.1989973   0.2906782
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2055838   0.1656288   0.2455387
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1325301   0.1169740   0.1480862
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1356207   0.1286388   0.1426026
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1969628   0.1889381   0.2049875
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2981575   0.2800007   0.3163142


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0106952   0.7698030   1.326969
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1740042   0.9194423   1.499046
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2910164   1.0293979   1.619124
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0977853   0.8344032   1.444305
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0498475   0.8855095   1.244684
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0278324   0.9351479   1.129703
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3755267   1.2620751   1.499177
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3447937   1.1408040   1.585259
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0349854   0.4595055   2.331190
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.7299465   0.3932802   1.354815
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8540305   0.5061673   1.440962
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9268406   0.5929247   1.448807
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6886311   0.4404667   1.076615
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0445723   0.6640838   1.643063
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3997440   1.1405664   1.717816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4700305   1.3146019   1.643836
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3014069   1.0292889   1.645466
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0218140   0.7322212   1.425940
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9752650   0.5923431   1.605728
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1449622   0.7841718   1.671749
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4070796   0.9313781   2.125746
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3441208   0.8530187   2.117961
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.9938781   0.6696449   1.475101
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9511361   0.7951474   1.137726
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5545105   1.3051178   1.851559
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5345516   1.1221060   2.098597


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0041812   -0.1024481   0.1108104
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0444643   -0.0201916   0.1091202
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0599608    0.0085099   0.1114117
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0184773   -0.0337859   0.0707406
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0042487   -0.0105207   0.0190182
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0072537   -0.0174322   0.0319396
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1161551    0.0891426   0.1431675
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1305214    0.0668081   0.1942348
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0065217   -0.1451954   0.1582389
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0351916   -0.1113758   0.0409925
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0119643   -0.0533013   0.0293728
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0061569   -0.0425981   0.0302843
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0267435   -0.0638072   0.0103202
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003435   -0.0031901   0.0038771
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0280113    0.0132560   0.0427665
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0988452    0.0748294   0.1228610
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0628087    0.0128224   0.1127951
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0131944   -0.1886681   0.2150570
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0051622   -0.1087936   0.0984691
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0234366   -0.0398249   0.0866981
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0389171   -0.0065262   0.0843604
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0314065   -0.0112794   0.0740924
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0002070   -0.0135314   0.0131173
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0063391   -0.0294766   0.0167984
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0668900    0.0450916   0.0886884
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0975402    0.0384748   0.1566056


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0087912   -0.2427848   0.2094408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1183460   -0.0717124   0.2746993
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1469627    0.0108648   0.2643345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0817493   -0.1811501   0.2861327
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0422299   -0.1143484   0.1768072
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0248520   -0.0635005   0.1058645
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2617496    0.1982967   0.3201804
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2404062    0.1130587   0.3494691
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0315789   -1.0677962   0.5464547
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.2885714   -1.0877588   0.2046896
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1268939   -0.6617325   0.2358036
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0452710   -0.3505355   0.1909938
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.3956368   -1.0634820   0.0560605
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0379293   -0.4387922   0.3566965
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2679429    0.1128810   0.3959012
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3073722    0.2288812   0.3778738
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2167046    0.0245596   0.3710004
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0198953   -0.3370621   0.2815553
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0210843   -0.5455571   0.3254127
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0978824   -0.2088303   0.3267738
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1893004   -0.0624750   0.3814124
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2369765   -0.1623467   0.4991125
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0054443   -0.4253232   0.2907445
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0467411   -0.2320224   0.1106761
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3396072    0.2199522   0.4409077
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3271432    0.0959954   0.4991880
