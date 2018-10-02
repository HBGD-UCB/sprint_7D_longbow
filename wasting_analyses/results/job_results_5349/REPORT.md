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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_nrooms
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_nrooms
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

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
0-24 months   ki1000109-EE               PAKISTAN                       0                 0      470    750
0-24 months   ki1000109-EE               PAKISTAN                       0                 1       34    750
0-24 months   ki1000109-EE               PAKISTAN                       1                 0      226    750
0-24 months   ki1000109-EE               PAKISTAN                       1                 1       20    750
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      236   1102
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       36   1102
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      704   1102
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1      126   1102
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       72    644
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        2    644
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      546    644
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1       24    644
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     2151   8843
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      144   8843
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     5990   8843
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      558   8843
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      299    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       49    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    355
0-6 months    ki1000108-IRC              INDIA                          0                 0      331    402
0-6 months    ki1000108-IRC              INDIA                          0                 1       63    402
0-6 months    ki1000108-IRC              INDIA                          1                 0        7    402
0-6 months    ki1000108-IRC              INDIA                          1                 1        1    402
0-6 months    ki1000109-EE               PAKISTAN                       0                 0      452    728
0-6 months    ki1000109-EE               PAKISTAN                       0                 1       40    728
0-6 months    ki1000109-EE               PAKISTAN                       1                 0      222    728
0-6 months    ki1000109-EE               PAKISTAN                       1                 1       14    728
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      466    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       11    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      157    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        3    637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1876   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       48   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       31   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   1956
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      212   1014
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       28   1014
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      682   1014
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       92   1014
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      336    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       26    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        1    370
6-24 months   ki1000108-IRC              INDIA                          0                 0      354    410
6-24 months   ki1000108-IRC              INDIA                          0                 1       48    410
6-24 months   ki1000108-IRC              INDIA                          1                 0        8    410
6-24 months   ki1000108-IRC              INDIA                          1                 1        0    410
6-24 months   ki1000109-EE               PAKISTAN                       0                 0      450    732
6-24 months   ki1000109-EE               PAKISTAN                       0                 1       48    732
6-24 months   ki1000109-EE               PAKISTAN                       1                 0      198    732
6-24 months   ki1000109-EE               PAKISTAN                       1                 1       36    732
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      226   1076
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       38   1076
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      644   1076
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1      168   1076
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     1985   8461
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      202   8461
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0     5564   8461
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1      710   8461


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
![](/tmp/b9b27afd-2acf-4a66-91e6-c5a0b7e75c0f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9b27afd-2acf-4a66-91e6-c5a0b7e75c0f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b9b27afd-2acf-4a66-91e6-c5a0b7e75c0f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b9b27afd-2acf-4a66-91e6-c5a0b7e75c0f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0655146   0.0348357   0.0961935
0-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.0765118   0.0290144   0.1240093
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0596026   0.0268592   0.0923461
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.0963731   0.0619791   0.1307670
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1646757   0.0887800   0.2405713
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1823405   0.1389752   0.2257057
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0208768   0.0080632   0.0336904
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0310559   0.0042398   0.0578720
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0282167   0.0145770   0.0418565
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0613616   0.0245289   0.0981943
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1473356   0.0971962   0.1974749
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1518514   0.1182347   0.1854681
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0830694   0.0721617   0.0939770
0-24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1224584   0.1064339   0.1384830
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0657012   0.0488892   0.0825132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0854196   0.0745241   0.0963152
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                0.0815543   0.0474381   0.1156705
0-6 months    ki1000109-EE               PAKISTAN     1                    NA                0.0597450   0.0176172   0.1018729
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1487396   0.0970272   0.2004519
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1218216   0.0899333   0.1537098
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                0.0958126   0.0592374   0.1323877
6-24 months   ki1000109-EE               PAKISTAN     1                    NA                0.1558346   0.0906861   0.2209831
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.1232339   0.0691534   0.1773143
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1761292   0.1511599   0.2010984
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1250000   0.0484992   0.2015008
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1811594   0.1356555   0.2266633
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0581819   0.0365167   0.0798472
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0763592   0.0345384   0.1181799
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0517545   0.0330734   0.0704356
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0897525   0.0448735   0.1346314
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1315465   0.0794315   0.1836615
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.2010898   0.1628127   0.2393669
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0961320   0.0761309   0.1161332
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.1126451   0.0987459   0.1265444


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
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0793848   0.0702123   0.0885573
0-6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.0741758   0.0472177   0.1011340
0-6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1183432   0.0901986   0.1464877
6-24 months   ki1000109-EE               PAKISTAN     NA                   NA                0.1147541   0.0820564   0.1474518
6-24 months   ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1698686   0.1413755   0.1983616
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1914498   0.1581730   0.2247266
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.1077887   0.0960896   0.1194877


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.1678593   0.5366159   2.541660
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.6169257   0.8882404   2.943402
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.1072703   0.6606233   1.855895
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.4875776   0.5156933   4.291091
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 2.1746514   1.0062995   4.699504
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0306499   0.6867889   1.546675
0-24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA        1                    0                 1.4741708   1.2252863   1.773610
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.3001238   0.9778428   1.728624
0-6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN     1                    0                 0.7325799   0.3229173   1.661953
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8190258   0.5299261   1.265843
6-24 months   ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN     1                    0                 1.6264523   0.9244639   2.861493
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.4292266   0.9569573   2.134566
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.4492754   0.7479025   2.808386
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3124209   0.6763673   2.546617
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.7341973   0.9359946   3.213096
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.5286595   0.9848864   2.372659
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.1717752   0.9209958   1.490840


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0064854   -0.0122454   0.0252161
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0317952   -0.0051651   0.0687555
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0086577   -0.0612650   0.0785804
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0025607   -0.0049237   0.0100450
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0073997   -0.0014301   0.0162295
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0003301   -0.0450303   0.0443700
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0161420    0.0083565   0.0239276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0136837   -0.0013291   0.0286964
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0073785   -0.0250829   0.0103260
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0303964   -0.0760547   0.0152620
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0189415   -0.0051337   0.0430167
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0466347    0.0041611   0.0891083
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0445402   -0.0260953   0.1151758
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0050460   -0.0072156   0.0173077
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0085038   -0.0024399   0.0194475
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0599033    0.0116683   0.1081384
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0116566   -0.0064142   0.0297275


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.0900749   -0.2095568   0.3154818
0-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3478769   -0.1175046   0.6194516
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0499481   -0.4509589   0.3779296
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.1092554   -0.2683734   0.3744540
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2077605   -0.0671031   0.4118250
0-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0022456   -0.3575681   0.2600767
0-24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.1627035    0.0821598   0.2361793
0-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1723712   -0.0389660   0.3407202
0-6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0994725   -0.3636157   0.1135040
0-6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.2568494   -0.7214416   0.0823561
6-24 months   ki1000109-EE               PAKISTAN     0                    NA                 0.1650618   -0.0682433   0.3474128
6-24 months   ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.2745338   -0.0380986   0.4930142
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.2627119   -0.2917963   0.5791954
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0798071   -0.1341626   0.2534095
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1411222   -0.0558875   0.3013735
6-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.3128931    0.0177074   0.5193735
6-24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1081434   -0.0746673   0.2598563
