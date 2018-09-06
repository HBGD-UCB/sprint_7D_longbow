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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        hdlvry    n_cell      n
-------------  -------------------------  -----------------------------  -------  -------  -----
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0             87     87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              0     87
0-3 months     ki1000108-IRC              INDIA                          0            370    377
0-3 months     ki1000108-IRC              INDIA                          1              7    377
0-3 months     ki1000109-EE               PAKISTAN                       0            386    590
0-3 months     ki1000109-EE               PAKISTAN                       1            204    590
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0            127    976
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1            849    976
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0            474    634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1            160    634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            557    720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            163    720
0-3 months     ki1135781-COHORTS          INDIA                          0           2863   4580
0-3 months     ki1135781-COHORTS          INDIA                          1           1717   4580
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0             66    626
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1            560    626
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0            738   3592
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1           2854   3592
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0            298    305
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1              7    305
3-6 months     ki1000108-IRC              INDIA                          0            389    397
3-6 months     ki1000108-IRC              INDIA                          1              8    397
3-6 months     ki1000109-EE               PAKISTAN                       0            436    658
3-6 months     ki1000109-EE               PAKISTAN                       1            222    658
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0            124    919
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1            795    919
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0            428    574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1            146    574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0            536    695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1            159    695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1549   1577
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             28   1577
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0            204    876
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1            672    876
3-6 months     ki1135781-COHORTS          INDIA                          0           2754   4481
3-6 months     ki1135781-COHORTS          INDIA                          1           1727   4481
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0             56    550
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1            494    550
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0            824   3504
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1           2680   3504
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            314    321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              7    321
6-12 months    ki1000108-IRC              INDIA                          0            392    400
6-12 months    ki1000108-IRC              INDIA                          1              8    400
6-12 months    ki1000109-EE               PAKISTAN                       0              8      8
6-12 months    ki1000109-EE               PAKISTAN                       1              0      8
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0            131    936
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1            805    936
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             67    332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1            265    332
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0            404    545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1            141    545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            523    676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            153    676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1015   1025
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             10   1025
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0            210    892
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1            682    892
6-12 months    ki1135781-COHORTS          INDIA                          0           2239   3598
6-12 months    ki1135781-COHORTS          INDIA                          1           1359   3598
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0             57    485
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1            428    485
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0           1498   5600
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1           4102   5600
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            315    322
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              7    322
12-24 months   ki1000108-IRC              INDIA                          0            388    396
12-24 months   ki1000108-IRC              INDIA                          1              8    396
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0            340    458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118    458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            379    495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            116    495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              2      2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0      2
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0            172    682
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1            510    682
12-24 months   ki1135781-COHORTS          INDIA                          0           1876   2999
12-24 months   ki1135781-COHORTS          INDIA                          1           1123   2999
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0             47    381
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            334    381
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           1607   6207
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1           4600   6207


The following strata were considered:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c37cf364-3968-49f2-93cc-fad5d6143385/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c37cf364-3968-49f2-93cc-fad5d6143385/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2570446   -0.3133181   -0.2007712
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.3890887   -0.8631374    0.0849601
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3871578   -0.4443395   -0.3299761
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.4048678   -0.4652013   -0.3445344
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0376248   -0.0139335    0.0891830
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0043839   -0.0071256    0.0158934
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0300680   -0.0513691   -0.0087669
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0746315   -0.1086256   -0.0406374
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1151092   -0.1360011   -0.0942173
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1459098   -0.1825794   -0.1092401
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0511395   -0.0617068   -0.0405722
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.1012847   -0.1148179   -0.0877514
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0268147   -0.0793486    0.1329779
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0358638    0.0073526    0.0643750
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0644870    0.0220638    0.1069101
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0677412    0.0516917    0.0837907
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0970669   -0.1454070   -0.0487268
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0276755   -0.3500119    0.2946609
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0508820   -0.0813924   -0.0203717
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.1009918   -0.2683302    0.0663466
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0691071    0.0337732    0.1044410
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0743440    0.0270057    0.1216823
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0062338   -0.0321697    0.0197022
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0358496   -0.0673995   -0.0042996
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0320220   -0.0511816   -0.0128624
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0132325   -0.0452066    0.0187416
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0307744    0.0111518    0.0503971
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0132884   -0.0186490    0.0452258
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0860756   -0.1032606   -0.0688905
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1506207   -0.2839698   -0.0172717
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1581992   -0.1968130   -0.1195854
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1649823   -0.1874439   -0.1425206
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0512191   -0.0597589   -0.0426793
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0814174   -0.0918884   -0.0709463
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0359489   -0.1106242    0.0387264
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0281992   -0.0564910    0.0000927
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0104120   -0.0442624    0.0234385
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0086175   -0.0236174    0.0063824
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1006331   -0.1216225   -0.0796436
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0320275   -0.1157735    0.0517186
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0256573   -0.0387196   -0.0125950
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0435471   -0.1211440    0.0340497
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0854289   -0.1049513   -0.0659066
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0864163   -0.0936018   -0.0792308
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1072723   -0.1752556   -0.0392891
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1081981   -0.1430427   -0.0733534
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0615562   -0.0697751   -0.0533374
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0656492   -0.0784998   -0.0527985
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0320503   -0.0404914   -0.0236092
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0299095   -0.0442562   -0.0155629
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0603803   -0.0697767   -0.0509839
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1106831   -0.2403074    0.0189412
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0600948   -0.0758344   -0.0443553
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0628613   -0.0729520   -0.0527707
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0897502   -0.0949622   -0.0845383
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1068516   -0.1137820   -0.0999212
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0906688   -0.1284238   -0.0529138
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0978751   -0.1194670   -0.0762833
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0291111   -0.0377142   -0.0205080
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0401249   -0.0453658   -0.0348841
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0450653   -0.0551951   -0.0349355
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0998494   -0.1614239   -0.0382749
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0314316   -0.0386198   -0.0242435
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0481150   -0.0746149   -0.0216151
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0086164   -0.0131194   -0.0041133
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0068907   -0.0142308    0.0004494
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0062285   -0.0108923   -0.0015648
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0041121   -0.0117344    0.0035102
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0132068   -0.0218538   -0.0045598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0157653   -0.0221391   -0.0093915
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0319005   -0.0343311   -0.0294698
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0440490   -0.0474212   -0.0406768
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0199028   -0.0446811    0.0048755
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0210767   -0.0309476   -0.0112058
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0135429   -0.0176561   -0.0094296
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0145289   -0.0168520   -0.0122059


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3932813   -0.4361258   -0.3504368
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0087093   -0.0074467    0.0248652
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0699385   -0.0782973   -0.0615796
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0349097    0.0045006    0.0653188
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0670726    0.0519630    0.0821823
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0954743   -0.1432951   -0.0476535
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0708740    0.0425313    0.0992167
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0318535   -0.0595705   -0.0041366
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0872216   -0.1042720   -0.0701712
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1634027   -0.1828407   -0.1439647
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0628577   -0.0694923   -0.0562230
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0289883   -0.0560864   -0.0018901
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090395   -0.0231928    0.0051138
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0991370   -0.1197790   -0.0784950
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862781   -0.0919075   -0.0806486
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0608711   -0.0702662   -0.0514759
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0622100   -0.0707695   -0.0536506
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0962096   -0.1003863   -0.0920329
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0970282   -0.1154305   -0.0786258
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0371787   -0.0417252   -0.0326323
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0462563   -0.0562940   -0.0362186
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0151200   -0.0203629   -0.0098772
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0364496   -0.0384372   -0.0344620
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0209319   -0.0306931   -0.0111706
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0142736   -0.0163604   -0.0121869


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          1                    0                 -0.1320440   -0.6094212    0.3453331
0-3 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0177100   -0.1008356    0.0654156
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0332409   -0.0818800    0.0153983
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0445635   -0.0846800   -0.0044470
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0308006   -0.0730041    0.0114029
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0501451   -0.0673154   -0.0329749
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0090491   -0.0936069    0.1117052
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0032543   -0.0427851    0.0492937
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0693914   -0.2565496    0.3953324
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0501098   -0.2202069    0.1199873
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0052369   -0.0538342    0.0643080
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0296158   -0.0760253    0.0167937
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0187895   -0.0184856    0.0560646
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0174860   -0.0549700    0.0199980
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0645452   -0.1989970    0.0699067
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0067830   -0.0514546    0.0378886
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0301983   -0.0437102   -0.0166864
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0077497   -0.0697913    0.0852907
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0017945   -0.0348238    0.0384128
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0686056   -0.0177307    0.1549419
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0178898   -0.0965784    0.0607987
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0009873   -0.0243369    0.0223623
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.0009257   -0.0773186    0.0754671
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0040929   -0.0193471    0.0111613
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0021408   -0.0145049    0.0187864
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0503028   -0.1802672    0.0796616
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0027665   -0.0214629    0.0159298
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0171014   -0.0257729   -0.0084299
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0072063   -0.0550558    0.0406432
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0110138   -0.0209580   -0.0010697
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0547841   -0.1171862    0.0076181
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0166834   -0.0441409    0.0107741
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0017257   -0.0068857    0.0103370
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0021164   -0.0068195    0.0110524
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0025585   -0.0133007    0.0081837
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0121485   -0.0163054   -0.0079917
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0011739   -0.0258693    0.0235215
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0009861   -0.0055645    0.0035924
