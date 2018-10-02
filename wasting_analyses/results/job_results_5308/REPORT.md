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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
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

agecat        studyid                    country                        hdlvry    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      115    322
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      200    322
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        4    322
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    322
0-24 months   ki1000108-IRC              INDIA                          0                   0      159    395
0-24 months   ki1000108-IRC              INDIA                          0                   1      227    395
0-24 months   ki1000108-IRC              INDIA                          1                   0        3    395
0-24 months   ki1000108-IRC              INDIA                          1                   1        6    395
0-24 months   ki1000109-EE               PAKISTAN                       0                   0      194    510
0-24 months   ki1000109-EE               PAKISTAN                       0                   1      144    510
0-24 months   ki1000109-EE               PAKISTAN                       1                   0      102    510
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       70    510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   0       34    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   1       30    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      386    675
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1      225    675
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       40    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      181    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       13    234
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       94    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1      132    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       34    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       47    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       79    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1      139    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       38    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       55    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      250    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      423    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        5    682
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4    682
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      114   1026
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1      108   1026
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      376   1026
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      428   1026
0-24 months   ki1135781-COHORTS          INDIA                          0                   0      784   1881
0-24 months   ki1135781-COHORTS          INDIA                          0                   1      294   1881
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      643   1881
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      160   1881
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       10    258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1       14    258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      134    258
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1      100    258
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      604   3555
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      272   3555
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1966   3555
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      713   3555
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       65    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      132    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        1    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    201
0-6 months    ki1000108-IRC              INDIA                          0                   0       86    240
0-6 months    ki1000108-IRC              INDIA                          0                   1      147    240
0-6 months    ki1000108-IRC              INDIA                          1                   0        1    240
0-6 months    ki1000108-IRC              INDIA                          1                   1        6    240
0-6 months    ki1000109-EE               PAKISTAN                       0                   0       62    214
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       82    214
0-6 months    ki1000109-EE               PAKISTAN                       1                   0       30    214
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       40    214
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   0       11    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                   1       13    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   0      125    278
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                   1      129    278
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       14     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       64     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     78
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0       26    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1      112    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       13    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1       33    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       14    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1      126    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0        7    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       51    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0       97    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      224    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        2    326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        3    326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       36    334
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       32    334
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      104    334
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1      162    334
0-6 months    ki1135781-COHORTS          INDIA                          0                   0      462   1241
0-6 months    ki1135781-COHORTS          INDIA                          0                   1      294   1241
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      325   1241
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      160   1241
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0        4    156
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1       14    156
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0       38    156
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1      100    156
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      106   1010
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1      188   1010
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      292   1010
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      424   1010
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       50    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       68    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0    121
6-24 months   ki1000108-IRC              INDIA                          0                   0       73    155
6-24 months   ki1000108-IRC              INDIA                          0                   1       80    155
6-24 months   ki1000108-IRC              INDIA                          1                   0        2    155
6-24 months   ki1000108-IRC              INDIA                          1                   1        0    155
6-24 months   ki1000109-EE               PAKISTAN                       0                   0      132    296
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       62    296
6-24 months   ki1000109-EE               PAKISTAN                       1                   0       72    296
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       30    296
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   0       23    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                   1       17    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   0      261    397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                   1       96    397
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       26    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0      117    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       13    156
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0       68    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       20    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       21    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1       14    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0       65    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       13    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0       31    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0      153    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      199    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        3    356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        1    356
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       78    692
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       76    692
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      272    692
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      266    692
6-24 months   ki1135781-COHORTS          INDIA                          0                   0      322    640
6-24 months   ki1135781-COHORTS          INDIA                          0                   1        0    640
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      318    640
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    640
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0        6    102
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        0    102
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0       96    102
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0    102
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      498   2545
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       84   2545
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0     1674   2545
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      289   2545


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

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1e7144f5-9197-484d-992f-860ba42cb3b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1e7144f5-9197-484d-992f-860ba42cb3b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1e7144f5-9197-484d-992f-860ba42cb3b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1e7144f5-9197-484d-992f-860ba42cb3b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.4255404   0.3465641   0.5045167
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3923461   0.2903713   0.4943208
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4710755   0.3455539   0.5965972
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3680134   0.3279210   0.4081058
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5830038   0.5179307   0.6480769
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5858308   0.4806273   0.6910344
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.6373946   0.5719688   0.7028204
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.5935854   0.4999513   0.6872194
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4851576   0.4084468   0.5618684
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5359924   0.4849201   0.5870647
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                0.2780348   0.2514316   0.3046379
0-24 months   ki1135781-COHORTS         INDIA        1                    NA                0.2106953   0.1843541   0.2370364
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5828538   0.3636751   0.8020324
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4256686   0.3336747   0.5176624
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3125487   0.2682177   0.3568796
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2665924   0.2424910   0.2906938
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.5709638   0.4539569   0.6879708
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5685256   0.4039872   0.7330641
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5416667   0.3534523   0.7298810
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.5078740   0.4454740   0.5702741
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8173253   0.7538502   0.8808005
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7498661   0.6334455   0.8662866
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.9000000   0.8497106   0.9502894
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.8793103   0.7944001   0.9642206
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.7379650   0.6152961   0.8606339
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6343939   0.5531972   0.7155905
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                0.3951339   0.3610950   0.4291727
0-6 months    ki1135781-COHORTS         INDIA        1                    NA                0.3479382   0.3079130   0.3879635
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6393753   0.5618510   0.7168995
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5921817   0.5413118   0.6430515
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3196995   0.2289684   0.4104305
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.2919754   0.1601639   0.4237869
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4244104   0.2793410   0.5694797
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2690089   0.2213539   0.3166638
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2251211   0.1389098   0.3113324
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.4047328   0.2299796   0.5794859
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4414423   0.3421786   0.5407059
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4906672   0.4281963   0.5531381
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1491559   0.1088245   0.1894873
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1476818   0.1261359   0.1692277


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3777778   0.3394240   0.4161316
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5224172   0.4758292   0.5690051
0-24 months   ki1135781-COHORTS         INDIA        NA                   NA                0.2413610   0.2219406   0.2607813
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4418605   0.3551361   0.5285849
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2770745   0.2555719   0.2985771
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5700935   0.4742263   0.6659606
0-6 months    ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.5107914   0.4514901   0.5700927
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5808383   0.5055058   0.6561709
0-6 months    ki1135781-COHORTS         INDIA        NA                   NA                0.3658340   0.3390250   0.3926430
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.6059406   0.5632798   0.6486014
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3108108   0.2352987   0.3863229
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.2846348   0.2390527   0.3302168
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4942197   0.4375393   0.5509000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1465619   0.1273484   0.1657754


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.9219949   0.6734325   1.2623010
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.7812195   0.5859362   1.0415877
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0048490   0.8169093   1.2360264
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9312683   0.7715370   1.1240689
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1047800   0.9185689   1.3287396
0-24 months   ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA        1                    0                 0.7578018   0.6474977   0.8868968
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7303179   0.4738830   1.1255190
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8529628   0.7209087   1.0092061
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 0.9957296   0.6989266   1.4185717
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9376136   0.6485807   1.3554507
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9174634   0.7707423   1.0921147
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9770115   0.8738707   1.0923258
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.8596531   0.6948128   1.0636008
0-6 months    ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA        1                    0                 0.8805578   0.7630146   1.0162087
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9261880   0.7985287   1.0742559
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.9132809   0.5373708   1.5521536
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6338414   0.4311867   0.9317425
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.7978444   1.0092389   3.2026553
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1115093   0.8585855   1.4389399
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9901170   0.7281983   1.3462426


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0059325   -0.0503504    0.0384853
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0932978   -0.2124606    0.0258650
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0000581   -0.0322411    0.0323572
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0136003   -0.0477647    0.0205640
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0372596   -0.0319332    0.1064523
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.0366738   -0.0528773   -0.0204703
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1409933   -0.3554077    0.0734211
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0354741   -0.0733262    0.0023779
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0008704   -0.0670161    0.0652754
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0308753   -0.2120406    0.1502900
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0292819   -0.0660249    0.0074612
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0060606   -0.0350005    0.0228793
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1571267   -0.2691311   -0.0451223
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0292999   -0.0502767   -0.0083230
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0334347   -0.0990731    0.0322037
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0088887   -0.0639907    0.0462134
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1397756   -0.2771075   -0.0024437
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0513016   -0.0067189    0.1093222
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0527774   -0.0349110    0.1404657
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0025940   -0.0376729    0.0324849


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0141383   -0.1257480    0.0864061
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.2469647   -0.6068616    0.0323243
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0000996   -0.0568593    0.0539887
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0218026   -0.0779917    0.0314576
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0713215   -0.0699878    0.1939685
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.1519458   -0.2208536   -0.0869273
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.3190901   -0.9245796    0.0959071
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1280310   -0.2731859    0.0005749
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0015267   -0.1245384    0.1080288
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0604460   -0.4821519    0.2412750
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0371577   -0.0854245    0.0089628
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0067797   -0.0397071    0.0251050
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.2705170   -0.4899103   -0.0834300
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0800906   -0.1392964   -0.0239615
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0551782   -0.1694266    0.0479087
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0285983   -0.2227411    0.1347192
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4910701   -1.0686585   -0.0747496
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.1855912   -0.0437922    0.3645654
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.1067893   -0.0884254    0.2669912
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0176990   -0.2874870    0.1955559
