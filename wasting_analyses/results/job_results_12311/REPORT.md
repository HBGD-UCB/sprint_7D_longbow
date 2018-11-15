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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        hdlvry    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -------  ----------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      339    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       23    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        8    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    370
0-24 months   ki1000108-IRC              INDIA                          0                 0      354    410
0-24 months   ki1000108-IRC              INDIA                          0                 1       48    410
0-24 months   ki1000108-IRC              INDIA                          1                 0        8    410
0-24 months   ki1000108-IRC              INDIA                          1                 1        0    410
0-24 months   ki1000109-EE               PAKISTAN                       0                 0      235    375
0-24 months   ki1000109-EE               PAKISTAN                       0                 1       17    375
0-24 months   ki1000109-EE               PAKISTAN                       1                 0      113    375
0-24 months   ki1000109-EE               PAKISTAN                       1                 1       10    375
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0      142   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        9   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      872   1116
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       93   1116
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       64    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1       10    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      246    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       55    375
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      156    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      118    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      352    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       63    551
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       36    322
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    322
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      273    322
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       12    322
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1077   4426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       72   4426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2998   4426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      279   4426
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      299    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       49    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    355
0-6 months    ki1000108-IRC              INDIA                          0                 0      331    402
0-6 months    ki1000108-IRC              INDIA                          0                 1       63    402
0-6 months    ki1000108-IRC              INDIA                          1                 0        7    402
0-6 months    ki1000108-IRC              INDIA                          1                 1        1    402
0-6 months    ki1000109-EE               PAKISTAN                       0                 0      226    364
0-6 months    ki1000109-EE               PAKISTAN                       0                 1       20    364
0-6 months    ki1000109-EE               PAKISTAN                       1                 0      111    364
0-6 months    ki1000109-EE               PAKISTAN                       1                 1        7    364
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      466    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       11    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      157    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        3    637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1876   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       48   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       31   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   1956
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      106    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      341    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       46    507
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      336    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       26    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1    370
6-24 months   ki1000108-IRC              INDIA                          0                 0      354    410
6-24 months   ki1000108-IRC              INDIA                          0                 1       48    410
6-24 months   ki1000108-IRC              INDIA                          1                 0        8    410
6-24 months   ki1000108-IRC              INDIA                          1                 1        0    410
6-24 months   ki1000109-EE               PAKISTAN                       0                 0      225    366
6-24 months   ki1000109-EE               PAKISTAN                       0                 1       24    366
6-24 months   ki1000109-EE               PAKISTAN                       1                 0       99    366
6-24 months   ki1000109-EE               PAKISTAN                       1                 1       18    366
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0      112    989
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1       16    989
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      709    989
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1      152    989
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       63    348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1        9    348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0      226    348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       50    348
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      422    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       26    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      141    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       12    601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      513    697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       28    697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      142    697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       14    697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1509   1612
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       82   1612
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       20   1612
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   1612
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      113    538
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       19    538
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      322    538
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       84    538
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      994   4235
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      101   4235
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     2785   4235
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      355   4235


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7c3cec2a-873f-49dc-8e88-fcdb734e733f/5d835d36-27cd-4e1c-a5aa-68610ee52eec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7c3cec2a-873f-49dc-8e88-fcdb734e733f/5d835d36-27cd-4e1c-a5aa-68610ee52eec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7c3cec2a-873f-49dc-8e88-fcdb734e733f/5d835d36-27cd-4e1c-a5aa-68610ee52eec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7c3cec2a-873f-49dc-8e88-fcdb734e733f/5d835d36-27cd-4e1c-a5aa-68610ee52eec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0674603   0.0364515   0.0984692
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.0813008   0.0329382   0.1296634
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1351351   0.0571395   0.2131308
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1827243   0.1390096   0.2264389
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080632   0.0336904
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0310559   0.0042398   0.0578720
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0282187   0.0145789   0.0418585
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0613497   0.0244850   0.0982143
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1323529   0.0753481   0.1893577
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1518072   0.1172521   0.1863623
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0805397   0.0697540   0.0913253
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1299663   0.1128613   0.1470713
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0626632   0.0465229   0.0788035
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0851388   0.0742362   0.0960415
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.0813008   0.0471019   0.1154997
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.0593220   0.0166412   0.1020029
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1166667   0.0591728   0.1741606
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1188630   0.0865880   0.1511381
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0963855   0.0596793   0.1330918
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.1538462   0.0883799   0.2193124
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1250000   0.0674147   0.1825853
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1765389   0.1513735   0.2017043
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1250000   0.0484992   0.2015008
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1811594   0.1356555   0.2266633
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0580357   0.0363669   0.0797046
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0784314   0.0357957   0.1210670
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0517560   0.0330749   0.0704371
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0897436   0.0448607   0.1346265
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1439394   0.0840007   0.2038781
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2068966   0.1674571   0.2463360
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0922374   0.0720185   0.1124564
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1130573   0.0990735   0.1270412


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.0720000   0.0458029   0.0981971
0-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.0913978   0.0593363   0.1234594
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1470054   0.1174112   0.1765996
0-24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0793041   0.0701363   0.0884719
0-6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.0741758   0.0472177   0.1011340
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1183432   0.0901986   0.1464877
6-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.1147541   0.0820564   0.1474518
6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1698686   0.1413755   0.1983616
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1914498   0.1581730   0.2247266
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1076741   0.0959797   0.1193686


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.205165   0.5682775   2.555833
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.616926   0.8882404   2.943402
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.352159   0.7239137   2.525626
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.487578   0.5156933   4.291091
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.174080   1.0054462   4.701020
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.146988   0.7046784   1.866924
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.613694   1.3374458   1.947000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.358674   1.0210158   1.807999
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 0.729661   0.3170816   1.679080
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.018826   0.5804169   1.788381
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.596154   0.9017123   2.825410
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.412311   0.9221162   2.163093
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.449275   0.7479025   2.808386
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.351433   0.6988545   2.613378
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.733974   0.9357996   3.212939
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.437387   0.9092392   2.272318
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.225720   0.9542728   1.574383


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0045397   -0.0143154   0.0233947
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0381982   -0.0335945   0.1099909
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0025607   -0.0049237   0.0100450
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0073977   -0.0014360   0.0162315
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0146525   -0.0355594   0.0648644
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0186717    0.0109961   0.0263474
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0166409    0.0023182   0.0309636
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0071250   -0.0248864   0.0106364
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0016765   -0.0486515   0.0520045
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0183686   -0.0057812   0.0425184
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0448686   -0.0018925   0.0916296
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0445402   -0.0260953   0.1151758
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0051922   -0.0070039   0.0173883
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0085022   -0.0024421   0.0194466
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0475104   -0.0066842   0.1017051
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0154367   -0.0026911   0.0335645


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0630511   -0.2379464   0.2908634
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.2203742   -0.3229179   0.5405487
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1092554   -0.2683734   0.3744540
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2077059   -0.0672795   0.4118411
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0996732   -0.3151219   0.3836401
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1882016    0.1088814   0.2604613
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.2098369    0.0082102   0.3704737
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0960554   -0.3610553   0.1173486
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0141667   -0.5175618   0.3595863
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.1600688   -0.0740890   0.3431789
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.2641369   -0.0824334   0.4997434
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.2627119   -0.2917963   0.5791954
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0821194   -0.1307393   0.2549079
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1410967   -0.0559235   0.3013558
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.2481612   -0.0924812   0.4825892
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1433649   -0.0410189   0.2950910
