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

**Outcome Variable:** ever_stunted

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
![](/tmp/3f239698-963f-40fd-b399-bc698c231a9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f239698-963f-40fd-b399-bc698c231a9f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f239698-963f-40fd-b399-bc698c231a9f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f239698-963f-40fd-b399-bc698c231a9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5045188   0.3913168   0.6177208
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4767617   0.4237731   0.5297503
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3553864   0.3103792   0.4003937
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3847226   0.3462883   0.4231568
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3401385   0.2765488   0.4037281
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4543359   0.3990871   0.5095848
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1916894   0.1531616   0.2302172
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2305511   0.2129450   0.2481573
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0956034   0.0796354   0.1115714
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1008538   0.0846129   0.1170947
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2739896   0.2519590   0.2960201
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2941076   0.2862383   0.3019770
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3481407   0.3236899   0.3725914
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4501239   0.4424890   0.4577588
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4095148   0.3449899   0.4740396
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5546597   0.5362189   0.5731006
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1998007   0.0453884   0.3542131
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2068439   0.1639659   0.2497220
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1494680   0.0689381   0.2299979
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1142945   0.0805167   0.1480722
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0629771   0.0339019   0.0920522
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0857030   0.0630048   0.1084012
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1398998   0.0947159   0.1850837
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1318577   0.0946873   0.1690281
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0803824   0.0538407   0.1069241
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0650885   0.0547563   0.0754207
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0083474   0.0043628   0.0123320
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0090412   0.0058292   0.0122532
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0730271   0.0601945   0.0858597
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1074804   0.1021211   0.1128397
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2457544   0.2244267   0.2670822
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3281507   0.3211832   0.3351182
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2258378   0.1769093   0.2747662
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2954969   0.2792112   0.3117825
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6500265   0.4408822   0.8591707
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6641677   0.6075303   0.7208051
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.2354874   0.1333841   0.3375907
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2425654   0.1927540   0.2923767
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1263612   0.0793970   0.1733253
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2323791   0.1913396   0.2734186
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1609443   0.1065478   0.2153408
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2388305   0.1851390   0.2925219
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0934891   0.0631731   0.1238052
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1369629   0.1205351   0.1533908
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0432257   0.0320726   0.0543788
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0380339   0.0279284   0.0481393
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1464276   0.1262599   0.1665953
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1357311   0.1284566   0.1430055
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1029188   0.0853030   0.1205346
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2009952   0.1927015   0.2092888
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2000710   0.1398769   0.2602651
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3078771   0.2887764   0.3269779


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
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9449830   0.7359174   1.213442
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0825472   0.9312673   1.258402
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3357382   1.0731203   1.662625
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2027329   0.9717125   1.488678
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0549188   0.9046399   1.230162
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0734264   0.9865087   1.168002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2929369   1.2037325   1.388752
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3544316   1.1527985   1.591332
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0352511   0.4655280   2.302214
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.7646750   0.4143839   1.411078
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3608601   0.8132912   2.277093
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.9425150   0.6216169   1.429071
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8097353   0.5633018   1.163979
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0831203   0.7256155   1.616765
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4717886   1.2262728   1.766460
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3352791   1.2220832   1.458960
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3084476   1.0425739   1.642124
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0217549   0.7324868   1.425258
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0300567   0.6376834   1.663861
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.8390069   1.2250602   2.760637
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4839326   0.9971533   2.208342
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4650146   1.0379529   2.067789
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.8798907   0.6380109   1.213471
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9269499   0.8000588   1.073966
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9529486   1.6400050   2.325608
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5388392   1.1313478   2.093102


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0289090   -0.1320993   0.0742812
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0203279   -0.0200799   0.0607357
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0678615    0.0187605   0.1169626
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0343351   -0.0031535   0.0718237
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0050062   -0.0084496   0.0184619
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0178861   -0.0033060   0.0390782
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0956234    0.0716272   0.1196196
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1334056    0.0715215   0.1952897
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0067210   -0.1423559   0.1557979
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0275168   -0.0990450   0.0440114
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0313086    0.0057636   0.0568537
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0038998   -0.0373121   0.0295125
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0127863   -0.0379370   0.0123644
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0007096   -0.0022813   0.0037006
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0315148    0.0189107   0.0441189
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0758271    0.0547783   0.0968759
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0639980    0.0158281   0.1121679
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0131680   -0.1884351   0.2147710
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0093504   -0.0840663   0.1027670
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1130754    0.0693253   0.1568256
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0446395    0.0014194   0.0878595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0390410    0.0089345   0.0691475
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0051959   -0.0166887   0.0062970
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0108069   -0.0301502   0.0085365
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0940440    0.0761865   0.1119016
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0980864    0.0402496   0.1559232


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0607831   -0.3017704   0.1355920
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0541046   -0.0581374   0.1544405
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1663273    0.0364662   0.2786863
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1519088   -0.0295109   0.3013588
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0497586   -0.0904203   0.1719167
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0612798   -0.0141167   0.1310708
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2154825    0.1597447   0.2675231
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2457186    0.1222622   0.3518104
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0325438   -1.0401444   0.5412229
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.2256376   -0.9750119   0.2394033
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3320612    0.0105278   0.5491109
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0286752   -0.3061947   0.1898814
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1891577   -0.6297936   0.1323466
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0783518   -0.3142016   0.3536491
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3014563    0.1715301   0.4110066
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2357943    0.1678993   0.2981495
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2208079    0.0366252   0.3697776
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0198554   -0.3365657   0.2812299
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0381900   -0.4297168   0.3529638
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.4722562    0.2686221   0.6191934
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2171352   -0.0214833   0.4000125
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2945820    0.0346958   0.4844997
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1366266   -0.5045949   0.1413503
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0796845   -0.2325098   0.0541912
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4774708    0.3819202   0.5582500
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3289753    0.1033221   0.4978418
