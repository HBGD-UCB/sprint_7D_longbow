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
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hdlvry    ever_stunted   n_cell      n
------------  -------------------------  -----------------------------  -------  -------------  -------  -----
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      284    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       74    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        5    365
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        2    365
0-6 months    ki1000108-IRC              INDIA                          0                    0      353    410
0-6 months    ki1000108-IRC              INDIA                          0                    1       49    410
0-6 months    ki1000108-IRC              INDIA                          1                    0        7    410
0-6 months    ki1000108-IRC              INDIA                          1                    1        1    410
0-6 months    ki1000109-EE               PAKISTAN                       0                    0      162    377
0-6 months    ki1000109-EE               PAKISTAN                       0                    1       91    377
0-6 months    ki1000109-EE               PAKISTAN                       1                    0       85    377
0-6 months    ki1000109-EE               PAKISTAN                       1                    1       39    377
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0      113   1248
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    1       53   1248
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0      774   1248
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1      308   1248
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       58    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       23    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0      199    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      136    416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0      469    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    1       50    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0      165    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    1       16    700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      514    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       76    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      139    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       29    758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2091   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      143   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       38   2274
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        2   2274
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0      127    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    1       13    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0      371    561
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1       50    561
0-6 months    ki1135781-COHORTS          INDIA                          0                    0     2713   4962
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      344   4962
0-6 months    ki1135781-COHORTS          INDIA                          1                    0     1655   4962
0-6 months    ki1135781-COHORTS          INDIA                          1                    1      250   4962
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       33    352
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        8    352
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      225    352
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1       86    352
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      878   4487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    1      290   4487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0     2308   4487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1011   4487
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       94    286
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      185    286
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        3    286
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        4    286
6-24 months   ki1000108-IRC              INDIA                          0                    0      253    339
6-24 months   ki1000108-IRC              INDIA                          0                    1       81    339
6-24 months   ki1000108-IRC              INDIA                          1                    0        3    339
6-24 months   ki1000108-IRC              INDIA                          1                    1        2    339
6-24 months   ki1000109-EE               PAKISTAN                       0                    0       33    187
6-24 months   ki1000109-EE               PAKISTAN                       0                    1       97    187
6-24 months   ki1000109-EE               PAKISTAN                       1                    0       14    187
6-24 months   ki1000109-EE               PAKISTAN                       1                    1       43    187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       79    770
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1       31    770
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      426    770
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1      234    770
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       26    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       22    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       73    226
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      105    226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      291    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1       88    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0       87    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       31    497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      401    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       91    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      102    620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       26    620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1485   1748
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      238   1748
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       23   1748
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        2   1748
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       65    449
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       51    449
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      182    449
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      151    449
6-24 months   ki1135781-COHORTS          INDIA                          0                    0     2477   3810
6-24 months   ki1135781-COHORTS          INDIA                          1                    0     1333   3810
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       25    267
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1       10    267
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      168    267
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1       64    267
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      715   3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      261   3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1790   3571
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1      805   3571
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0       74    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1      288    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        2    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        6    370
0-24 months   ki1000108-IRC              INDIA                          0                    0      213    410
0-24 months   ki1000108-IRC              INDIA                          0                    1      189    410
0-24 months   ki1000108-IRC              INDIA                          1                    0        2    410
0-24 months   ki1000108-IRC              INDIA                          1                    1        6    410
0-24 months   ki1000109-EE               PAKISTAN                       0                    0       30    377
0-24 months   ki1000109-EE               PAKISTAN                       0                    1      223    377
0-24 months   ki1000109-EE               PAKISTAN                       1                    0       15    377
0-24 months   ki1000109-EE               PAKISTAN                       1                    1      109    377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0       70   1250
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    1       96   1250
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0      407   1250
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1      677   1250
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       27    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1       54    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       79    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1      258    418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0      330    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    1      189    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0      107    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1       74    700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      374    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1      216    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0       90    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1       78    758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1727   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      507   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       31   2274
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        9   2274
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0       65    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    1       75    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0      173    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1      248    561
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     2512   5099
0-24 months   ki1135781-COHORTS          INDIA                          0                    1      632   5099
0-24 months   ki1135781-COHORTS          INDIA                          1                    0     1378   5099
0-24 months   ki1135781-COHORTS          INDIA                          1                    1      577   5099
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       26    353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    1       16    353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      150    353
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1      161    353
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      596   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    1      575   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0     1461   4501
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1     1869   4501


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA

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

```
##       ever_stunted
## hdlvry    0
##      0 2477
##      1 1333
```




# Results Detail

## Results Plots
![](/tmp/51252851-99ad-4572-ae2c-5cc3171dd620/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/51252851-99ad-4572-ae2c-5cc3171dd620/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/51252851-99ad-4572-ae2c-5cc3171dd620/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/51252851-99ad-4572-ae2c-5cc3171dd620/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8862520   0.8466776   0.9258263
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.9005869   0.8464646   0.9547091
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6300452   0.5727600   0.6873303
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6256821   0.5925423   0.6588218
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7502141   0.6767621   0.8236661
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7710394   0.7272958   0.8147830
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3641618   0.3227337   0.4055900
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4088398   0.3371680   0.4805116
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3661695   0.3275320   0.4048069
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4628646   0.3903110   0.5354182
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2270032   0.2096319   0.2443745
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2219209   0.0922200   0.3516217
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5357261   0.4697331   0.6017191
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5868062   0.5410119   0.6326004
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2138081   0.1993866   0.2282295
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3001853   0.2810573   0.3193132
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.7310184   0.6603163   0.8017205
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5305261   0.4556573   0.6053949
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4957885   0.4614957   0.5300814
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5577228   0.5373368   0.5781087
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3499521   0.2916891   0.4082151
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.3025058   0.2243770   0.3806347
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3327871   0.2799700   0.3856041
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2854065   0.2479105   0.3229025
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3512317   0.2786664   0.4237970
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4215558   0.3700884   0.4730231
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0929968   0.0677202   0.1182734
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0642701   0.0253085   0.1032317
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1306142   0.1036109   0.1576176
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2003757   0.1446773   0.2560741
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0567091   0.0200110   0.0934073
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1135027   0.0836069   0.1433984
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1145766   0.1032368   0.1259163
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1347345   0.1200089   0.1494600
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.6410687   0.5885319   0.6936054
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2981459   0.2286055   0.3676864
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2539306   0.2246076   0.2832536
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3044886   0.2865730   0.3224042
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7582170   0.6854374   0.8309966
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8154645   0.7202463   0.9106826
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4009749   0.3168801   0.4850698
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3578012   0.3345045   0.3810979
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4821954   0.3808705   0.5835202
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5929297   0.5231933   0.6626661
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2337432   0.1914928   0.2759936
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2743334   0.1975790   0.3510877
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1855011   0.1513108   0.2196914
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2166252   0.1498919   0.2833585
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5327065   0.4592602   0.6061528
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4621025   0.4100978   0.5141072
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.6545695   0.5718076   0.7373314
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2851349   0.2169415   0.3533282
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2695466   0.2356230   0.3034703
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3046140   0.2829713   0.3262566


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8806366   0.8478657   0.9134075
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6184000   0.5869018   0.6498982
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3878628   0.3531521   0.4225735
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2269129   0.2096946   0.2441313
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5757576   0.5348239   0.6166913
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2371053   0.2254305   0.2487802
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5014164   0.4307597   0.5720732
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5429904   0.5252738   0.5607071
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.3448276   0.2967843   0.3928709
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2892628   0.2523312   0.3261944
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1385224   0.1139141   0.1631308
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1122995   0.0861492   0.1384497
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1197098   0.1106766   0.1287430
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2670455   0.2046982   0.3293927
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2899487   0.2745556   0.3053419
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7486631   0.6863237   0.8110026
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3441558   0.3190986   0.3692131
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1887097   0.1578857   0.2195336
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4498886   0.4038220   0.4959553
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2771536   0.2152294   0.3390778
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2985158   0.2801281   0.3169036


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0161748   0.9427717   1.0952929
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9930750   0.8910827   1.1067411
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.0277592   0.9193222   1.1489867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1226870   0.9109582   1.3836268
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2640721   1.0478862   1.5248585
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9776113   0.5422369   1.7625577
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0953474   0.9466648   1.2673820
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.4039940   1.2801239   1.5398503
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.7257357   0.6130656   0.8591124
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1249206   1.0397939   1.2170166
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.8644207   0.6350716   1.1765966
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.8576250   0.7282464   1.0099887
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.2002214   0.9434783   1.5268305
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.6910995   0.3555791   1.3432132
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.5341035   1.0846917   2.1697166
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.0014878   0.9966055   4.0195980
0-6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.1759337   1.0150056   1.3623769
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.4650764   0.3588628   0.6027264
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1991019   1.0519729   1.3668084
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0755027   0.9239151   1.2519615
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.8923281   0.7000795   1.1373700
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.2296462   0.9688761   1.5606018
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1736526   0.8433483   1.6333233
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1677839   0.8160801   1.6710605
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.8674617   0.7266473   1.0355641
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.4356067   0.3289129   0.5769100
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1300974   0.9771571   1.3069752


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0056153   -0.0287137    0.0174830
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0116452   -0.0691365    0.0458461
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0038026   -0.0690007    0.0613955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0115524   -0.0099021    0.0330070
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0216933    0.0029795    0.0404072
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0000903   -0.0023924    0.0022119
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0400315   -0.0182094    0.0982723
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0232972    0.0132911    0.0333034
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2296020   -0.3159249   -0.1432791
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0472019    0.0175325    0.0768713
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0051245   -0.0380323    0.0277832
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0435242   -0.0879230    0.0008745
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0309799   -0.0383810    0.1003407
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0012889   -0.0112410    0.0138188
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0079082   -0.0061611    0.0219775
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0555903    0.0215250    0.0896556
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0051332   -0.0024601    0.0127265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3740232   -0.4553632   -0.2926832
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0360182    0.0102935    0.0617429
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0095539   -0.0505633    0.0314555
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0568191   -0.1331779    0.0195397
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0797515   -0.0114799    0.1709830
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0056934   -0.0152770    0.0266637
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0032086   -0.0127426    0.0191597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0828179   -0.1468561   -0.0187796
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3774160   -0.4710117   -0.2838202
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0289692   -0.0009238    0.0588622


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0063765   -0.0329581    0.0195212
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0188311   -0.1164723    0.0702708
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0050945   -0.0963860    0.0785955
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0307479   -0.0280845    0.0862136
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0559305    0.0064066    0.1029859
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003977   -0.0105949    0.0096966
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0695284   -0.0366393    0.1648229
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0982569    0.0553804    0.1391873
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.4579068   -0.6926172   -0.2557430
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0869295    0.0305946    0.1399907
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0148611   -0.1149468    0.0762401
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1504661   -0.3196304   -0.0029870
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0810542   -0.1166675    0.2437666
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0136700   -0.1287173    0.1380952
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0570898   -0.0494988    0.1528531
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.4950186    0.0981095    0.7172536
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0428806   -0.0225187    0.1040969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.4005976   -2.0734063   -0.8750755
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1242225    0.0309383    0.2085270
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0127613   -0.0691169    0.0406236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1650969   -0.4075601    0.0356001
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1419201   -0.0340062    0.2879142
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0237782   -0.0677711    0.1074783
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0170026   -0.0712060    0.0979476
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1840852   -0.3396784   -0.0465630
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.3617577   -1.9878950   -0.8668324
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0970441   -0.0085662    0.1915955
