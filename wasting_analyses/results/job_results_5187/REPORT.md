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
![](/tmp/eca78772-f815-453a-a64b-bcd4d34ad8e5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eca78772-f815-453a-a64b-bcd4d34ad8e5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/eca78772-f815-453a-a64b-bcd4d34ad8e5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/eca78772-f815-453a-a64b-bcd4d34ad8e5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.1798256   0.1655833   0.1940679
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.1759777   0.1581730   0.1937825
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.1255333   0.0841574   0.1669093
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.1056789   0.0486214   0.1627365
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0848194   0.0514590   0.1181798
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1270434   0.1032523   0.1508344
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.1052632   0.0361757   0.1743506
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.2006579   0.1555785   0.2457373
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0288809   0.0149256   0.0428361
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0310559   0.0042420   0.0578698
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0871883   0.0425337   0.1318429
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0919032   0.0638560   0.1199504
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.1141639   0.1025970   0.1257307
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.1564322   0.1401853   0.1726791
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0468417   0.0306369   0.0630466
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0573159   0.0459568   0.0686749
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1086896   0.0793367   0.1380425
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1226685   0.0701275   0.1752096
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0792912   0.0524921   0.1060903
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1139374   0.0578978   0.1699771
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.3291831   0.2697709   0.3885953
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1835687   0.1447460   0.2223914
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0676840   0.0572644   0.0781036
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.1480599   0.1297183   0.1664016
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.2089552   0.0716538   0.3462566
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.2196078   0.1604795   0.2787362
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.2009681   0.1710133   0.2309229
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.2013312   0.1849215   0.2177409


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


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 0.9786024   0.8609052   1.1123904
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 0.8418396   0.4468674   1.5859155
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 1.4978112   1.0026068   2.2376053
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.9062500   0.9525832   3.8146685
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0753106   0.3997909   2.8922438
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0540774   0.5807296   1.9132467
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.3702424   1.1856394   1.5835879
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.2236072   0.8274131   1.8095126
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.1286133   0.6804859   1.8718508
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.4369498   0.7910487   2.6102371
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.5576493   0.4220971   0.7367325
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 2.1875165   1.7959310   2.6644835
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.0509804   0.5166767   2.1378161
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.0018066   0.8443265   1.1886592


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                -0.0064376   -0.0152138    0.0023387
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0028089   -0.0205085    0.0261263
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.0365042    0.0031034    0.0699049
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.0763158    0.0102090    0.1424226
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0004898   -0.0063172    0.0072967
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0038933   -0.0357623    0.0435489
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.0183457    0.0102955    0.0263959
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0069110   -0.0068481    0.0206702
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0037672   -0.0116048    0.0191391
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0082575   -0.0066957    0.0232106
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1489256   -0.2007512   -0.0971001
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.0265701    0.0182233    0.0349170
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0094157   -0.1226613    0.1414927
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0011382   -0.0243056    0.0265820


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                -0.0371281   -0.0890551    0.0123230
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0218862   -0.1779457    0.1878177
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                 0.3008828   -0.0139620    0.5179653
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                 0.4202899   -0.0708179    0.6861615
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0166753   -0.2445475    0.2230690
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0427453   -0.5070707    0.3919751
6 months    ki1135781-COHORTS          INDIA        0                    NA                 0.1384481    0.0763495    0.1963717
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.1285709   -0.1679741    0.3498240
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0334988   -0.1131428    0.1608223
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0943185   -0.0915862    0.2485624
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.8261826   -1.2039251   -0.5131834
24 months   ki1135781-COHORTS          INDIA        0                    NA                 0.2818989    0.1934267    0.3606667
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                 0.0431177   -0.7983670    0.4908583
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                 0.0056317   -0.1286010    0.1238992
