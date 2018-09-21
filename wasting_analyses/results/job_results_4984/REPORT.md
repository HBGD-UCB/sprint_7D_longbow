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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        hdlvry    wasted   n_cell      n
----------  -------------------------  -----------------------------  -------  -------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              0       74     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              1       12     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              0        0     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              1        2     88
Birth       ki1000108-IRC              INDIA                          0              0      249    343
Birth       ki1000108-IRC              INDIA                          0              1       88    343
Birth       ki1000108-IRC              INDIA                          1              0        2    343
Birth       ki1000108-IRC              INDIA                          1              1        4    343
Birth       ki1000109-EE               PAKISTAN                       0              0        2      2
Birth       ki1000109-EE               PAKISTAN                       0              1        0      2
Birth       ki1000109-EE               PAKISTAN                       1              0        0      2
Birth       ki1000109-EE               PAKISTAN                       1              1        0      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              0        5    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          0              1        1    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              0      144    160
Birth       ki1000304b-SAS-CompFeed    INDIA                          1              1       10    160
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              0       16     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0              1        3     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              0        4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              1        0     23
Birth       ki1135781-COHORTS          INDIA                          0              0     2284   4389
Birth       ki1135781-COHORTS          INDIA                          0              1      479   4389
Birth       ki1135781-COHORTS          INDIA                          1              0     1344   4389
Birth       ki1135781-COHORTS          INDIA                          1              1      282   4389
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              0       16    526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0              1        0    526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              0      452    526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1              1       58    526
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              0       82   1362
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0              1        4   1362
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              0     1208   1362
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1              1       68   1362
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              0      312    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0              1       45    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              0        7    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              1        1    365
6 months    ki1000108-IRC              INDIA                          0              0      347    408
6 months    ki1000108-IRC              INDIA                          0              1       53    408
6 months    ki1000108-IRC              INDIA                          1              0        7    408
6 months    ki1000108-IRC              INDIA                          1              1        1    408
6 months    ki1000109-EE               PAKISTAN                       0              0      438    748
6 months    ki1000109-EE               PAKISTAN                       0              1       66    748
6 months    ki1000109-EE               PAKISTAN                       1              0      214    748
6 months    ki1000109-EE               PAKISTAN                       1              1       30    748
6 months    ki1000304b-SAS-CompFeed    INDIA                          0              0      135   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          0              1       12   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              0      821   1088
6 months    ki1000304b-SAS-CompFeed    INDIA                          1              1      120   1088
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              0       68    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0              1        8    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              0      243    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1              1       61    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              0      412    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0              1       21    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              0      146    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              1        3    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              0      538    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0              1       16    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              0      156    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1              1        5    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0     1807   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1       81   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0       30   1920
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        2   1920
6 months    ki1113344-GMS-Nepal        NEPAL                          0              0      236   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          0              1       22   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          1              0      722   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          1              1       74   1054
6 months    ki1135781-COHORTS          INDIA                          0              0     2571   4694
6 months    ki1135781-COHORTS          INDIA                          0              1      325   4694
6 months    ki1135781-COHORTS          INDIA                          1              0     1501   4694
6 months    ki1135781-COHORTS          INDIA                          1              1      297   4694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              0       73    667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1        4    667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              0      548    667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1              1       42    667
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              0     2063   8074
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0              1       98   8074
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              0     5577   8074
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1              1      336   8074
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              0      339    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0              1       22    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              0        8    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              1        0    369
24 months   ki1000108-IRC              INDIA                          0              0      370    409
24 months   ki1000108-IRC              INDIA                          0              1       31    409
24 months   ki1000108-IRC              INDIA                          1              0        8    409
24 months   ki1000108-IRC              INDIA                          1              1        0    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              0      385    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0              1       47    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              0      128    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              1       18    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              0      360    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0              1       31    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              0      109    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              1       14    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              0        6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0              0      190    932
24 months   ki1113344-GMS-Nepal        NEPAL                          0              1       50    932
24 months   ki1113344-GMS-Nepal        NEPAL                          1              0      574    932
24 months   ki1113344-GMS-Nepal        NEPAL                          1              1      118    932
24 months   ki1135781-COHORTS          INDIA                          0              0     2075   3533
24 months   ki1135781-COHORTS          INDIA                          0              1      139   3533
24 months   ki1135781-COHORTS          INDIA                          1              0     1125   3533
24 months   ki1135781-COHORTS          INDIA                          1              1      194   3533
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              0       53    577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0              1       14    577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              0      398    577
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              1      112    577
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              0     1643   7976
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0              1      418   7976
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              0     4721   7976
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1              1     1194   7976


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/dd770c34-6183-467b-87fd-d46c20b020ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd770c34-6183-467b-87fd-d46c20b020ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dd770c34-6183-467b-87fd-d46c20b020ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd770c34-6183-467b-87fd-d46c20b020ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.1733623   0.1592453   0.1874793
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.1734317   0.1550265   0.1918370
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.1309524   0.0892455   0.1726593
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.1229508   0.0646026   0.1812990
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0816327   0.0505071   0.1127582
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1275239   0.1035834   0.1514644
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1052632   0.0361757   0.1743506
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.2006579   0.1555785   0.2457373
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0288809   0.0149256   0.0428361
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0310559   0.0042420   0.0578698
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0852713   0.0370307   0.1335120
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0929648   0.0644093   0.1215204
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.1122238   0.1007266   0.1237209
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.1651835   0.1480172   0.1823499
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0453494   0.0264511   0.0642476
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0568239   0.0457824   0.0678655
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1087963   0.0794078   0.1381848
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1232877   0.0699129   0.1766624
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0792839   0.0524775   0.1060903
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1138211   0.0576400   0.1700023
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2083333   0.1355931   0.2810735
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1705202   0.1308498   0.2101907
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0627823   0.0526768   0.0728878
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1470811   0.1279641   0.1661981
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.2089552   0.0716538   0.3462566
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2196078   0.1604795   0.2787362
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.2028142   0.1712941   0.2343342
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2018597   0.1853230   0.2183963


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.1733880   0.1621865   0.1845895
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.1283422   0.0943991   0.1622853
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1213235   0.0974115   0.1452356
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0910816   0.0664930   0.1156701
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.1325096   0.1228094   0.1422097
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0537528   0.0440673   0.0634383
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1802575   0.1453188   0.2151962
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.0942542   0.0846183   0.1038901
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2183709   0.1637859   0.2729559
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2021063   0.1874789   0.2167337


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0004006   0.8751457   1.143582
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 0.9388972   0.5301581   1.662764
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.5621679   1.0634896   2.294680
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.9062500   0.9525832   3.814668
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0753106   0.3997909   2.892244
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0902238   0.5727202   2.075338
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.4719124   1.2720532   1.703172
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2530260   0.7961479   1.972088
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.1331973   0.6802836   1.887648
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.4356150   0.7892324   2.611386
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.8184971   0.5380274   1.245174
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 2.3427166   1.9048892   2.881176
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.0509804   0.5166767   2.137816
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 0.9952938   0.8340957   1.187645


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0000257   -0.0085676   0.0086191
6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0026101   -0.0260090   0.0207887
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0396909    0.0083211   0.0710606
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0763158    0.0102090   0.1424226
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0004898   -0.0063172   0.0072967
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0058103   -0.0365272   0.0481478
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0202858    0.0123377   0.0282340
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0084034   -0.0073962   0.0242031
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0036605   -0.0117389   0.0190598
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0082648   -0.0066858   0.0232153
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0280758   -0.0896128   0.0334612
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0314719    0.0232878   0.0396560
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0094157   -0.1226613   0.1414927
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0007078   -0.0272550   0.0258393


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                 0.0001484   -0.0506619   0.0485015
6 months    ki1000109-EE               PAKISTAN     0                    NA                -0.0203373   -0.2198906   0.1465725
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3271490    0.0376845   0.5295426
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.4202899   -0.0708179   0.6861615
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0166753   -0.2445475   0.2230690
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0637920   -0.5377328   0.4300145
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1530895    0.0917707   0.2102684
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1563344   -0.1989919   0.4063583
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0325499   -0.1143743   0.1601029
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0944018   -0.0914896   0.2486341
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1557540   -0.5520274   0.1393404
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.3339044    0.2479494   0.4100352
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0431177   -0.7983670   0.4908583
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                -0.0035024   -0.1438117   0.1195954
