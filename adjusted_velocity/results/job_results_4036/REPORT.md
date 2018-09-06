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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* brthmon
* impfloor
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_impfloor
* delta_impsan

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/bfac5f33-71e0-4ea8-9f86-b69f1d6f6e0d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/bfac5f33-71e0-4ea8-9f86-b69f1d6f6e0d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-IRC              INDIA                          0                    NA                -0.2570446   -0.3133181   -0.2007712
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.3890887   -0.8631374    0.0849601
0-3 months     ki1000109-EE               PAKISTAN                       0                    NA                -0.3869272   -0.4440923   -0.3297622
0-3 months     ki1000109-EE               PAKISTAN                       1                    NA                -0.4053041   -0.4651269   -0.3454813
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0228130   -0.0218478    0.0674739
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0034404   -0.0076868    0.0145675
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0309691   -0.0521539   -0.0097843
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0802096   -0.1124994   -0.0479198
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1137850   -0.1344735   -0.0930965
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1399778   -0.1738725   -0.1060831
0-3 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0558488   -0.0663087   -0.0453888
0-3 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0989377   -0.1118977   -0.0859777
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0431009   -0.1197318    0.0335300
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0360682    0.0078452    0.0642913
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0654942    0.0220740    0.1089145
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0683134    0.0524306    0.0841961
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0970669   -0.1454070   -0.0487268
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0276755   -0.3500119    0.2946609
3-6 months     ki1000108-IRC              INDIA                          0                    NA                -0.0508820   -0.0813924   -0.0203717
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.1009918   -0.2683302    0.0663466
3-6 months     ki1000109-EE               PAKISTAN                       0                    NA                 0.0681485    0.0333584    0.1029386
3-6 months     ki1000109-EE               PAKISTAN                       1                    NA                 0.0770265    0.0323733    0.1216798
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0125462   -0.0340600    0.0089676
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0349547   -0.0665479   -0.0033615
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0312291   -0.0502404   -0.0122179
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0055448   -0.0345302    0.0234406
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0303438    0.0110586    0.0496289
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                 0.0152570   -0.0141503    0.0446643
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0859565   -0.1031341   -0.0687789
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2364793   -0.3120825   -0.1608761
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1637237   -0.1956877   -0.1317597
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1639957   -0.1859777   -0.1420137
3-6 months     ki1135781-COHORTS          INDIA                          0                    NA                -0.0544297   -0.0628758   -0.0459837
3-6 months     ki1135781-COHORTS          INDIA                          1                    NA                -0.0850318   -0.0951678   -0.0748959
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0991758    0.0463608    0.1519908
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0260167   -0.0543823    0.0023489
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0148088   -0.0468193    0.0172017
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0093761   -0.0240291    0.0052768
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1006331   -0.1216225   -0.0796436
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0320275   -0.1157735    0.0517186
6-12 months    ki1000108-IRC              INDIA                          0                    NA                -0.0256573   -0.0387196   -0.0125950
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0435471   -0.1211440    0.0340497
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0833583   -0.1016392   -0.0650775
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0864312   -0.0938828   -0.0789795
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.1095827   -0.1750878   -0.0440775
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.1076451   -0.1422404   -0.0730497
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0615159   -0.0696801   -0.0533516
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0655002   -0.0781451   -0.0528554
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0321361   -0.0405717   -0.0237004
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0296161   -0.0439413   -0.0152909
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0603615   -0.0697573   -0.0509658
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1247121   -0.2131417   -0.0362826
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0750207   -0.0882511   -0.0617903
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0644619   -0.0744434   -0.0544804
6-12 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0904940   -0.0956561   -0.0853319
6-12 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1028694   -0.1093475   -0.0963914
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0930467   -0.1270067   -0.0590867
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0980818   -0.1195613   -0.0766023
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0307805   -0.0387482   -0.0228127
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0393138   -0.0445364   -0.0340913
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0450653   -0.0551951   -0.0349355
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0998494   -0.1614239   -0.0382749
12-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0314316   -0.0386198   -0.0242435
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0481150   -0.0746149   -0.0216151
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0089253   -0.0133840   -0.0044667
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0097760   -0.0165961   -0.0029560
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0065121   -0.0111005   -0.0019238
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0028515   -0.0096999    0.0039969
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0300335   -0.0373648   -0.0227022
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0175823   -0.0238782   -0.0112864
12-24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0326008   -0.0350129   -0.0301887
12-24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0436488   -0.0468001   -0.0404976
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0036770   -0.0078587    0.0152128
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0197782   -0.0296548   -0.0099016
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0134625   -0.0173675   -0.0095576
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0143657   -0.0166797   -0.0120517


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
0-3 months     ki1000109-EE               PAKISTAN                       1                    0                 -0.0183768   -0.1009031    0.0641495
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0193727   -0.0631344    0.0243891
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0492405   -0.0877765   -0.0107045
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0261928   -0.0657553    0.0133697
0-3 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0430889   -0.0596628   -0.0265150
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0791692    0.0054521    0.1528863
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0028191   -0.0439231    0.0495614
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0693914   -0.2565496    0.3953324
3-6 months     ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          1                    0                 -0.0501098   -0.2202069    0.1199873
3-6 months     ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       1                    0                  0.0088780   -0.0470767    0.0648328
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0224085   -0.0662154    0.0213984
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1                    0                  0.0256843   -0.0089253    0.0602940
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0150867   -0.0497064    0.0195329
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.1505228   -0.2280028   -0.0730427
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0002720   -0.0388238    0.0382797
3-6 months     ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          1                    0                 -0.0306021   -0.0437860   -0.0174182
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1251925   -0.1825914   -0.0677935
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0054327   -0.0291505    0.0400159
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0686056   -0.0177307    0.1549419
6-12 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          1                    0                 -0.0178898   -0.0965784    0.0607987
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0030728   -0.0253644    0.0192188
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  0.0019376   -0.0715320    0.0754072
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0039843   -0.0189444    0.0109757
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0025199   -0.0140901    0.0191300
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0643506   -0.1532823    0.0245810
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0105588   -0.0060309    0.0271486
6-12 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0123754   -0.0206284   -0.0041224
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0050351   -0.0489537    0.0388835
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0085333   -0.0179137    0.0008470
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0547841   -0.1171862    0.0076181
12-24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          1                    0                 -0.0166834   -0.0441409    0.0107741
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0008507   -0.0089555    0.0072540
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.0036606   -0.0043813    0.0117026
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0124512    0.0027745    0.0221279
12-24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.0110480   -0.0150013   -0.0070948
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.0234552   -0.0361360   -0.0107745
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0009032   -0.0052800    0.0034737
