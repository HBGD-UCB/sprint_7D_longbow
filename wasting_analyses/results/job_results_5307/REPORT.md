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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        vagbrth    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       11     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        9     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0      109     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      197     326
0-24 months   ki1000108-IRC              INDIA                          0                    0       24     395
0-24 months   ki1000108-IRC              INDIA                          0                    1       39     395
0-24 months   ki1000108-IRC              INDIA                          1                    0      138     395
0-24 months   ki1000108-IRC              INDIA                          1                    1      194     395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       26     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       43     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      102     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1      136     307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       18     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       43     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       58     190
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       71     190
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       24     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       32     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      240     705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      409     705
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0       68    4431
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1      391    4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      547    4431
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1     3425    4431
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0      119    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      182    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0     1494    3543
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1748    3543
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      412   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1      482   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     8303   15099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5902   15099
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      168    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       94    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2414    3577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      901    3577
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        8     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        8     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       58     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1      129     203
0-6 months    ki1000108-IRC              INDIA                          0                    0       16     240
0-6 months    ki1000108-IRC              INDIA                          0                    1       31     240
0-6 months    ki1000108-IRC              INDIA                          1                    0       71     240
0-6 months    ki1000108-IRC              INDIA                          1                    1      122     240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0        6     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       40     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0       33     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1      105     184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0        4     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       37     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       10     112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       61     112
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0        8     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       17     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       91     335
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      219     335
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0       50    4263
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1      388    4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      438    4263
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1     3387    4263
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       42    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1      177    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      600    2499
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1     1680    2499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0      164    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1      482    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0     2906    9454
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1     5902    9454
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0       34    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1       66    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      368    1020
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1      552    1020
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0        3     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1        1     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0       51     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1       68     123
6-24 months   ki1000108-IRC              INDIA                          0                    0        8     155
6-24 months   ki1000108-IRC              INDIA                          0                    1        8     155
6-24 months   ki1000108-IRC              INDIA                          1                    0       67     155
6-24 months   ki1000108-IRC              INDIA                          1                    1       72     155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0       20     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1        3     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       69     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       31     123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0       14      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        6      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       48      78
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       10      78
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0       16     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       15     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      149     370
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1      190     370
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0       18     168
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1        3     168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      109     168
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1       38     168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0       77    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1        5    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      894    1044
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1       68    1044
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0      248    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        0    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0     5397    5645
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        0    5645
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      134    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       28    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2046    2557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      349    2557


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

* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/15471b83-fd74-4f12-9b57-c3a1f7d935b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15471b83-fd74-4f12-9b57-c3a1f7d935b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15471b83-fd74-4f12-9b57-c3a1f7d935b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15471b83-fd74-4f12-9b57-c3a1f7d935b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4500000   0.2006580   0.6993420
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6437908   0.5870303   0.7005514
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.6190775   0.4773295   0.7608255
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5843315   0.5284031   0.6402600
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.7683787   0.6472900   0.8894673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5860307   0.5222840   0.6497773
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7111012   0.5898039   0.8323986
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5541648   0.4715431   0.6367865
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5247804   0.4164641   0.6330967
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6281103   0.5890544   0.6671662
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.8686169   0.8422311   0.8950028
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.8634857   0.8529142   0.8740571
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6362701   0.5971970   0.6753433
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5399142   0.5227609   0.5570675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4591034   0.4287728   0.4894340
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4151486   0.4037966   0.4265006
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3869893   0.3018363   0.4721423
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2719770   0.2499635   0.2939904
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5000000   0.2472620   0.7527380
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6898396   0.6225361   0.7571431
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.6450716   0.5063712   0.7837721
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6316154   0.5621443   0.7010865
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.8695652   0.7703543   0.9687761
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.7608696   0.6908322   0.8309069
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6800000   0.4929570   0.8670430
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7064516   0.6550297   0.7578735
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.9043785   0.8803276   0.9284293
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.8862850   0.8761788   0.8963912
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7711542   0.7383306   0.8039778
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7363193   0.7185593   0.7540794
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.6909849   0.6632345   0.7187353
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6723905   0.6586909   0.6860902
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6941848   0.5800311   0.8083385
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6006534   0.5559550   0.6453518
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5000000   0.2294903   0.7705097
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5179856   0.4297875   0.6061838
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3000000   0.0725547   0.5274453
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1724138   0.0793318   0.2654957
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4594723   0.3031603   0.6157844
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5603389   0.5059031   0.6147748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0609756   0.0065400   0.1154112
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0706861   0.0547411   0.0866311
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1770114   0.0993197   0.2547030
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1458392   0.1261112   0.1655672


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6000000   0.5288495   0.6711505
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6255319   0.5876598   0.6634040
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5447361   0.5281997   0.5612725
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4228095   0.4116714   0.4339475
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2781661   0.2567200   0.2996121
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7044776   0.6548846   0.7540707
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7430972   0.7259776   0.7602169
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6752697   0.6619203   0.6886192
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.6058824   0.5634305   0.6483342
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2051282   0.1132549   0.2970015
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5540541   0.5015831   0.6065250
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0699234   0.0546210   0.0852257
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1474384   0.1282205   0.1666563


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.4306463   0.8163766   2.5071137
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9438746   0.7364395   1.2097386
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.7626847   0.6295576   0.9239632
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.7793051   0.6232224   0.9744778
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1969013   0.9655340   1.4837103
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.9940926   0.9622737   1.0269637
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8485613   0.7923983   0.9087049
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9042595   0.8421250   0.9709784
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7028023   0.5559025   0.8885210
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3796791   0.8245122   2.3086554
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9791400   0.7691642   1.2464375
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8750000   0.7556881   1.0131495
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0388994   0.7816335   1.3808416
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.9799935   0.9522076   1.0085902
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9548276   0.9112830   1.0004530
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9730901   0.9306827   1.0174298
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8652644   0.7223597   1.0364399
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0359712   0.5874383   1.8269773
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 0.5747126   0.2266054   1.4575764
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2195271   0.8573885   1.7346237
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1592516   0.4616155   2.9112199
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.8238976   0.5204739   1.3042101


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1819018   -0.0576922    0.4214959
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0292041   -0.1572861    0.0988780
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1853168   -0.2916471   -0.0789865
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1111012   -0.2093608   -0.0128417
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1007515   -0.0028579    0.2043609
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0074118   -0.0323983    0.0175747
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0915340   -0.1294977   -0.0535703
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0362939   -0.0662912   -0.0062966
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1088232   -0.1901593   -0.0274871
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1748768   -0.0657175    0.4154712
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0075716   -0.1319318    0.1167886
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0815217   -0.1728369    0.0097935
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0244776   -0.1550298    0.2039850
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0188518   -0.0417787    0.0040750
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0280569   -0.0599755    0.0038616
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0157152   -0.0437826    0.0123522
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0883024   -0.1979176    0.0213127
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0161290   -0.2390237    0.2712818
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0948718   -0.2780930    0.0883494
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0945817   -0.0546223    0.2437858
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0089478   -0.0433206    0.0612162
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0295730   -0.1043232    0.0451773


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2878641   -0.2169136    0.5832592
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0495090   -0.2904034    0.1464148
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.3178338   -0.5160353   -0.1455446
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1851687   -0.3624803   -0.0309323
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1610654   -0.0217393    0.3111635
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0086063   -0.0380474    0.0199998
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1680337   -0.2408492   -0.0994913
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0858399   -0.1595696   -0.0167982
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3912168   -0.7166638   -0.1274684
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.2591241   -0.2023404    0.5434761
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0118771   -0.2270393    0.1655563
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1034483   -0.2274251    0.0080062
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0347458   -0.2569309    0.2587375
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0212888   -0.0475329    0.0042977
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0377568   -0.0818148    0.0045070
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0232724   -0.0658206    0.0175772
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1457419   -0.3430711    0.0225949
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0312500   -0.6139924    0.4185372
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.4625000   -1.6271554    0.1858471
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1707085   -0.1472946    0.4005686
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1279653   -1.0561158    0.6301548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2005783   -0.8313552    0.2129389
