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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        hdlvry    sstunted   n_cell      n
----------  -------------------------  -----------------------------  -------  ---------  -------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                0       87     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                1        3     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                0        0     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                1        0     90
Birth       ki1000108-IRC              INDIA                          0                0      365    388
Birth       ki1000108-IRC              INDIA                          0                1       16    388
Birth       ki1000108-IRC              INDIA                          1                0        7    388
Birth       ki1000108-IRC              INDIA                          1                1        0    388
Birth       ki1000109-EE               PAKISTAN                       0                0        4      4
Birth       ki1000109-EE               PAKISTAN                       0                1        0      4
Birth       ki1000109-EE               PAKISTAN                       1                0        0      4
Birth       ki1000109-EE               PAKISTAN                       1                1        0      4
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                0       10    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                1        1    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                0      160    180
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                1        9    180
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                0       21     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                1        1     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                0        5     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                1        0     27
Birth       ki1135781-COHORTS          INDIA                          0                0     2855   4694
Birth       ki1135781-COHORTS          INDIA                          0                1       83   4694
Birth       ki1135781-COHORTS          INDIA                          1                0     1702   4694
Birth       ki1135781-COHORTS          INDIA                          1                1       54   4694
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                0       22    600
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                1        0    600
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                0      548    600
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                1       30    600
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                0       90   1640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                1        4   1640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                0     1422   1640
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                1      124   1640
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                0      318    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                1       40    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                0        7    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                1        1    366
6 months    ki1000108-IRC              INDIA                          0                0      370    407
6 months    ki1000108-IRC              INDIA                          0                1       29    407
6 months    ki1000108-IRC              INDIA                          1                0        8    407
6 months    ki1000108-IRC              INDIA                          1                1        0    407
6 months    ki1000109-EE               PAKISTAN                       0                0      372    740
6 months    ki1000109-EE               PAKISTAN                       0                1      124    740
6 months    ki1000109-EE               PAKISTAN                       1                0      180    740
6 months    ki1000109-EE               PAKISTAN                       1                1       64    740
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                0      141   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                1        6   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                0      839   1091
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                1      105   1091
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                0       69    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                1        7    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                0      257    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                1       47    380
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                0      426    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                1        7    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                0      143    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                1        7    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                0      535    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                1       19    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                0      157    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                1        4    715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1873   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       16   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       30   1921
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        2   1921
6 months    ki1113344-GMS-Nepal        NEPAL                          0                0      254   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          0                1        4   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          1                0      766   1054
6 months    ki1113344-GMS-Nepal        NEPAL                          1                1       30   1054
6 months    ki1135781-COHORTS          INDIA                          0                0     2788   4699
6 months    ki1135781-COHORTS          INDIA                          0                1      112   4699
6 months    ki1135781-COHORTS          INDIA                          1                0     1680   4699
6 months    ki1135781-COHORTS          INDIA                          1                1      119   4699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                0       73    663
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                1        4    663
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                0      566    663
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                1       20    663
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                0     2054   8066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                1      105   8066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                0     5575   8066
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                1      332   8066
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                0      241    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                1      120    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                0        6    369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                1        2    369
24 months   ki1000108-IRC              INDIA                          0                0      362    409
24 months   ki1000108-IRC              INDIA                          0                1       39    409
24 months   ki1000108-IRC              INDIA                          1                0        6    409
24 months   ki1000108-IRC              INDIA                          1                1        2    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                0      398    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                1       34    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                0      130    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                1       15    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                0      365    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                1       26    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                0      114    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                1        9    514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0      6
24 months   ki1113344-GMS-Nepal        NEPAL                          0                0      214    934
24 months   ki1113344-GMS-Nepal        NEPAL                          0                1       26    934
24 months   ki1113344-GMS-Nepal        NEPAL                          1                0      626    934
24 months   ki1113344-GMS-Nepal        NEPAL                          1                1       68    934
24 months   ki1135781-COHORTS          INDIA                          0                0     1912   3559
24 months   ki1135781-COHORTS          INDIA                          0                1      321   3559
24 months   ki1135781-COHORTS          INDIA                          1                0      904   3559
24 months   ki1135781-COHORTS          INDIA                          1                1      422   3559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                0       61    581
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                1        8    581
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                0      410    581
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                1      102    581
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                0     1946   8000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                1      117   8000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                0     5333   8000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                1      604   8000


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
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b8a982bb-1d1b-457d-90d4-515b6869342f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8a982bb-1d1b-457d-90d4-515b6869342f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b8a982bb-1d1b-457d-90d4-515b6869342f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8a982bb-1d1b-457d-90d4-515b6869342f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0283581   0.0223524   0.0343638
Birth       ki1135781-COHORTS          INDIA        1                    NA                0.0286100   0.0210082   0.0362118
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.2436038   0.1902006   0.2970070
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.2420138   0.1653029   0.3187246
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0408163   0.0221750   0.0594577
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    NA                0.1112288   0.0906768   0.1317809
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0921053   0.0270064   0.1572041
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    NA                0.1546053   0.1139117   0.1952988
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0161663   0.0042773   0.0280552
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0466667   0.0128834   0.0804499
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0425699   0.0351716   0.0499681
6 months    ki1135781-COHORTS          INDIA        1                    NA                0.0613466   0.0507668   0.0719265
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0520398   0.0387809   0.0652986
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0559665   0.0457763   0.0661566
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0787413   0.0533510   0.1041317
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1033628   0.0539061   0.1528194
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0664962   0.0417767   0.0912156
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0731707   0.0271040   0.1192374
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0890749   0.0387151   0.1394346
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0949344   0.0641749   0.1256938
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.1533275   0.1385226   0.1681323
24 months   ki1135781-COHORTS          INDIA        1                    NA                0.2928914   0.2696642   0.3161186
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.1159420   0.0158485   0.2160356
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    NA                0.1992188   0.1442695   0.2541680
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0591980   0.0424057   0.0759904
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    NA                0.0995814   0.0875063   0.1116565


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA        NA                   NA                0.0291862   0.0243703   0.0340021
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2540541   0.2096368   0.2984713
6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.1017415   0.0806841   0.1227990
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1135781-COHORTS          INDIA        NA                   NA                0.0491594   0.0429771   0.0553417
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0541780   0.0458161   0.0625400
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1006424   0.0733267   0.1279581
24 months   ki1135781-COHORTS          INDIA        NA                   NA                0.2087665   0.1954120   0.2221210
24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1893287   0.1393793   0.2392781
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0901250   0.0799382   0.1003118


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA        1                    0                 1.0088822   0.7183106   1.416996
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 0.9934729   0.6752217   1.461725
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA        1                    0                 2.7251056   1.6370778   4.536254
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        1                    0                 1.6785713   0.7895723   3.568516
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.8866667   1.0285604   8.101463
6 months    ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA        1                    0                 1.4410809   1.1295148   1.838590
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.0754556   0.7937372   1.457163
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 1.3126875   0.7372546   2.337251
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.1003752   0.5296782   2.285965
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.0657820   0.5554281   2.045074
24 months   ki1135781-COHORTS          INDIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA        1                    0                 1.9102344   1.6881909   2.161483
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH   1                    0                 1.7182617   0.6986312   4.226011
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   1                    0                 1.6821743   1.2391973   2.283503


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0008281   -0.0029865   0.0046427
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.0104503   -0.0206449   0.0415455
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.0609252    0.0357423   0.0861081
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.0500000   -0.0114686   0.1114686
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0078474   -0.0014306   0.0171255
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.0065895    0.0012048   0.0119742
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0021383   -0.0096309   0.0139074
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0061807   -0.0078477   0.0202091
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0015972   -0.0109158   0.0141102
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0115675   -0.0315561   0.0546912
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.0554390    0.0443115   0.0665666
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.0733867   -0.0269076   0.1736811
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0309270    0.0155256   0.0463283


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA        0                    NA                0.0283730   -0.1113765   0.1505498
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.0411341   -0.0893970   0.1560249
6 months    ki1000304b-SAS-CompFeed    INDIA        0                    NA                0.5988233    0.3630716   0.7473142
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0                    NA                0.3518518   -0.2498734   0.6638891
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.3267898   -0.1300269   0.5989370
6 months    ki1135781-COHORTS          INDIA        0                    NA                0.1340439    0.0194093   0.2352773
6 months    kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.0394674   -0.2031277   0.2331464
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0727806   -0.1068447   0.2232553
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0234563   -0.1785745   0.1908551
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.1149371   -0.4365900   0.4547252
24 months   ki1135781-COHORTS          INDIA        0                    NA                0.2655553    0.2125017   0.3150347
24 months   kiGH5241-JiVitA-3          BANGLADESH   0                    NA                0.3876153   -0.4163761   0.7352292
24 months   kiGH5241-JiVitA-4          BANGLADESH   0                    NA                0.3431565    0.1517506   0.4913720
