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
![](/tmp/e84922c8-b9f4-4cfd-8b46-ee2cb62d05d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e84922c8-b9f4-4cfd-8b46-ee2cb62d05d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e84922c8-b9f4-4cfd-8b46-ee2cb62d05d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e84922c8-b9f4-4cfd-8b46-ee2cb62d05d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.4257534   0.3465593   0.5049476
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3941301   0.2912233   0.4970369
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3532483   0.2475815   0.4589151
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3660614   0.3260972   0.4060255
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5832111   0.5179810   0.6484412
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5847793   0.4785151   0.6910434
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.6374064   0.5720048   0.7028080
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.5934056   0.4996093   0.6872019
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4847078   0.4043513   0.5650642
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5349624   0.4836373   0.5862875
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                0.2769775   0.2505024   0.3034525
0-24 months   ki1135781-COHORTS         INDIA        1                    NA                0.2106242   0.1845055   0.2367429
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4651103   0.2850769   0.6451436
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4199319   0.3285018   0.5113620
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3125703   0.2682298   0.3569107
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2665663   0.2424694   0.2906632
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.5710354   0.4538076   0.6882632
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5681502   0.4023337   0.7339667
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5416530   0.3534377   0.7298682
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.5078753   0.4454753   0.5702753
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8156795   0.7518685   0.8794906
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7453698   0.6246178   0.8661219
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.9000000   0.8497106   0.9502894
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.8793103   0.7944001   0.9642206
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.6949892   0.5627304   0.8272479
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6280148   0.5466693   0.7093604
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                0.3961124   0.3619056   0.4303191
0-6 months    ki1135781-COHORTS         INDIA        1                    NA                0.3479130   0.3074807   0.3883454
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6550383   0.5785991   0.7314775
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5949162   0.5441056   0.6457267
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3177764   0.2275852   0.4079676
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.2888306   0.1599455   0.4177157
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4246645   0.2786374   0.5706915
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2689626   0.2212821   0.3166430
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2255057   0.1391151   0.3118964
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.4061663   0.2294011   0.5829315
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4424762   0.3426642   0.5422883
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4907340   0.4282194   0.5532485
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1491812   0.1088361   0.1895262
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1476819   0.1261367   0.1692270


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
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.9257238   0.6750531   1.2694773
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.0362721   0.7536555   1.4248684
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0026890   0.8129555   1.2367039
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9309689   0.7711500   1.1239098
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1036803   0.9113127   1.3366544
0-24 months   ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA        1                    0                 0.7604380   0.6504494   0.8890252
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9028653   0.5783373   1.4094989
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8528203   0.7207796   1.0090498
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 0.9949474   0.6967228   1.4208238
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9376397   0.6485928   1.3555010
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9138023   0.7629395   1.0944966
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9770115   0.8738707   1.0923258
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9036325   0.7173696   1.1382582
0-6 months    ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA        1                    0                 0.8783190   0.7600569   1.0149823
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9082158   0.7859873   1.0494521
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.9089113   0.5365721   1.5396248
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6333532   0.4301064   0.9326441
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.8011354   1.0094566   3.2136979
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1090629   0.8561279   1.4367252
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9899497   0.7280476   1.3460666


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0061456   -0.0506474    0.0383562
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0245295   -0.0762902    0.1253492
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0001492   -0.0327594    0.0324611
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0136122   -0.0477738    0.0205494
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0377094   -0.0341755    0.1095943
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.0356165   -0.0517224   -0.0195106
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0232498   -0.2042391    0.1577395
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0354958   -0.0733331    0.0023416
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0009420   -0.0672763    0.0653924
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0308616   -0.2120275    0.1503043
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0276360   -0.0641430    0.0088709
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0060606   -0.0350005    0.0228793
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1141508   -0.2326090    0.0043073
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0302783   -0.0514015   -0.0091552
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0490977   -0.1139842    0.0157887
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0069656   -0.0617989    0.0478676
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1400297   -0.2782662   -0.0017932
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0509170   -0.0069629    0.1087969
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0517434   -0.0363807    0.1398675
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0026193   -0.0377051    0.0324665


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0146461   -0.1264653    0.0860734
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0649310   -0.2435011    0.2968610
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0002558   -0.0577786    0.0541388
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0218216   -0.0780077    0.0314359
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0721825   -0.0753363    0.1994642
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.1475652   -0.2160972   -0.0828952
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0526180   -0.5573504    0.2885323
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1281090   -0.2731902    0.0004400
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0016523   -0.1250337    0.1081980
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0604192   -0.4821282    0.2413012
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0350692   -0.0829535    0.0106979
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0067797   -0.0397071    0.0251050
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.1965277   -0.4244695   -0.0050609
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0827653   -0.1423781   -0.0262632
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0810273   -0.1939746    0.0212355
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0224111   -0.2155146    0.1400148
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4919627   -1.0736298   -0.0734572
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.1841999   -0.0448237    0.3630219
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.1046972   -0.0916095    0.2657016
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0178716   -0.2877119    0.1954236
