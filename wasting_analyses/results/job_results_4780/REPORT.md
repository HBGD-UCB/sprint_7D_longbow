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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        vagbrth    wasted   n_cell       n
----------  -------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               0        8      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0               1        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               0       66      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1               1       12      88
Birth       ki1000108-IRC              INDIA                          0               0       45     343
Birth       ki1000108-IRC              INDIA                          0               1       21     343
Birth       ki1000108-IRC              INDIA                          1               0      206     343
Birth       ki1000108-IRC              INDIA                          1               1       71     343
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               0        0      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0               1        1      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               0       15      17
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1               1        1      17
Birth       ki1119695-PROBIT           BELARUS                        0               0     1303   13824
Birth       ki1119695-PROBIT           BELARUS                        0               1      290   13824
Birth       ki1119695-PROBIT           BELARUS                        1               0     9633   13824
Birth       ki1119695-PROBIT           BELARUS                        1               1     2598   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0      906   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1      193   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     9861   12813
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1     1853   12813
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               0        4   31378
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0               1        0   31378
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0    28366   31378
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1     3008   31378
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0        2    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1        0    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0     1292    1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1       72    1366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               0       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0               1        4     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               0      301     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1               1       42     368
6 months    ki1000108-IRC              INDIA                          0               0       61     408
6 months    ki1000108-IRC              INDIA                          0               1        7     408
6 months    ki1000108-IRC              INDIA                          1               0      293     408
6 months    ki1000108-IRC              INDIA                          1               1       47     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               0      129     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0               1        5     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      429     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1       19     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               0      185     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0               1        2     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               0      257     457
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1               1       13     457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0      181    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        8    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0     1737    2004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       78    2004
6 months    ki1119695-PROBIT           BELARUS                        0               0     1779   15757
6 months    ki1119695-PROBIT           BELARUS                        0               1       19   15757
6 months    ki1119695-PROBIT           BELARUS                        1               0    13848   15757
6 months    ki1119695-PROBIT           BELARUS                        1               1      111   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0      682    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1       24    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     7253    8197
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      238    8197
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               0     2002   33404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0               1      148   33404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0    28570   33404
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1     2684   33404
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0      645    8102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1       28    8102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0     7023    8102
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1      406    8102
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               0       23     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0               1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               0      326     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1               1       21     372
24 months   ki1000108-IRC              INDIA                          0               0       64     409
24 months   ki1000108-IRC              INDIA                          0               1        5     409
24 months   ki1000108-IRC              INDIA                          1               0      314     409
24 months   ki1000108-IRC              INDIA                          1               1       26     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               0      124     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0               1       13     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      389     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1       52     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               0       90     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0               1        9     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               0      143     260
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1               1       18     260
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1119695-PROBIT           BELARUS                        0               0      459    3971
24 months   ki1119695-PROBIT           BELARUS                        0               1        4    3971
24 months   ki1119695-PROBIT           BELARUS                        1               0     3468    3971
24 months   ki1119695-PROBIT           BELARUS                        1               1       40    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0       27     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1        1     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      314     417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       75     417
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               0      792   17097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               1      158   17097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0    12572   17097
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1     3575   17097
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0      525    8006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1      120    8006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0     5861    8006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1     1500    8006


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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b700a320-57a0-43f7-b8a1-1400c99bfd94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b700a320-57a0-43f7-b8a1-1400c99bfd94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b700a320-57a0-43f7-b8a1-1400c99bfd94/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b700a320-57a0-43f7-b8a1-1400c99bfd94/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.4252858   0.3222363   0.5283353
Birth       ki1000108-IRC              INDIA                          1                    NA                0.2616311   0.2103663   0.3128959
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                0.1863027   0.1247338   0.2478716
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                0.2123234   0.1461357   0.2785110
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1808064   0.1611749   0.2004379
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1586065   0.1520114   0.1652015
6 months    ki1000108-IRC              INDIA                          0                    NA                0.1029412   0.0306257   0.1752567
6 months    ki1000108-IRC              INDIA                          1                    NA                0.1382353   0.1015032   0.1749674
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0373134   0.0051958   0.0694311
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0424107   0.0237336   0.0610878
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0423280   0.0136171   0.0710390
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0429752   0.0336429   0.0523075
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0108964   0.0061472   0.0156456
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0079219   0.0063468   0.0094971
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0422567   0.0300967   0.0544168
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0321249   0.0281382   0.0361116
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0747122   0.0612212   0.0882032
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0855484   0.0806601   0.0904368
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0403682   0.0154216   0.0653147
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0546386   0.0442046   0.0650726
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0724638   0.0112173   0.1337102
24 months   ki1000108-IRC              INDIA                          1                    NA                0.0764706   0.0481884   0.1047528
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1128270   0.0669478   0.1587063
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1213361   0.0913759   0.1512963
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0909091   0.0341710   0.1476472
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1118012   0.0630315   0.1605710
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1981584   0.1729900   0.2233268
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2215387   0.2112552   0.2318222
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1912293   0.1471049   0.2353536
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2037862   0.1883759   0.2191965


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1596816   0.1533387   0.1660245
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0429142   0.0340389   0.0517895
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0319629   0.0281547   0.0357711
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0847803   0.0799876   0.0895729
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0535670   0.0439013   0.0632327
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1038462   0.0666939   0.1409984
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2183424   0.2084016   0.2282832
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2023482   0.1877608   0.2169356


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.6151889   0.4501019   0.8408260
Birth       ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 1.1396688   0.9608909   1.3517093
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.8772172   0.7811867   0.9850526
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 1.3428571   0.6336429   2.8458701
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1366071   0.4322192   2.9889368
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0152893   0.4980591   2.0696586
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.7270200   0.4839658   1.0921392
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.7602320   0.5556791   1.0400836
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1450399   0.9532727   1.3753843
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3535077   0.7090098   2.5838614
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0552941   0.4194722   2.6548739
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0754172   0.6681257   1.7309949
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2298137   0.5743075   2.6335048
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1179878   0.9772317   1.2790178
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0656642   0.8357639   1.3588052


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.1570642   -0.2494186   -0.0647099
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0226093   -0.0073985    0.0526172
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0211248   -0.0398811   -0.0023685
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0294118   -0.0381917    0.0970152
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0039237   -0.0246761    0.0325234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005861   -0.0267563    0.0279285
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0026461   -0.0065733    0.0012811
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0102938   -0.0219541    0.0013665
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0100681   -0.0029262    0.0230623
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0131989   -0.0115338    0.0379316
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0033309   -0.0527495    0.0594112
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003703   -0.0417705    0.0410299
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0129371   -0.0334089    0.0592830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0201840   -0.0051904    0.0455584
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0111190   -0.0318173    0.0540552


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.5855765   -0.9904178   -0.2630779
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.1082242   -0.0380774    0.2339068
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.1322932   -0.2563551   -0.0204821
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.2222222   -0.4955071    0.5954962
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0951493   -0.9453954    0.5791319
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0136582   -0.8817567    0.4829989
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.3207281   -0.8683844    0.0664005
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.3220553   -0.7462881   -0.0008830
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1187550   -0.0481961    0.2591150
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2463992   -0.3803869    0.5885833
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0439458   -1.0726677    0.5590033
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0032926   -0.4481970    0.3049315
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1245791   -0.4545902    0.4731425
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0924420   -0.0305883    0.2007852
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0549497   -0.1825622    0.2447585
