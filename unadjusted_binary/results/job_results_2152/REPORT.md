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
      W: []
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

unadjusted

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
##       ever_stunted
## hdlvry    0
##      0 2477
##      1 1333
```




# Results Detail

## Results Plots
![](/tmp/470be2ce-96f6-45de-b650-3ed3c333363a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/470be2ce-96f6-45de-b650-3ed3c333363a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/470be2ce-96f6-45de-b650-3ed3c333363a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/470be2ce-96f6-45de-b650-3ed3c333363a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8814229   0.8415336   0.9213123
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8790323   0.8215609   0.9365036
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5783133   0.5106121   0.6460144
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6245387   0.5910646   0.6580129
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.6666667   0.5638841   0.7694492
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7655786   0.7202944   0.8108628
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3641618   0.3227337   0.4055900
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4088398   0.3371680   0.4805116
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3661017   0.3272044   0.4049990
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4642857   0.3888218   0.5397496
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2269472   0.2095744   0.2443199
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2250000   0.0955638   0.3544362
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5357143   0.4530285   0.6184001
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5890736   0.5420343   0.6361130
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2010178   0.1870079   0.2150277
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.2951407   0.2749206   0.3153608
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3809524   0.2436755   0.5182293
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5176849   0.4420873   0.5932824
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4910333   0.4553742   0.5266924
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5612613   0.5407614   0.5817612
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3596838   0.3004701   0.4188975
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.3145161   0.2326821   0.3963502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3192771   0.2601325   0.3784217
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2846580   0.2470410   0.3222751
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2839506   0.1856353   0.3822659
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4059701   0.3533200   0.4586203
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0963391   0.0709365   0.1217418
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0883978   0.0470128   0.1297828
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1288136   0.1017649   0.1558622
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1726190   0.1154347   0.2298034
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0928571   0.0447381   0.1409762
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1187648   0.0878345   0.1496952
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1125286   0.1013251   0.1237321
0-6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1312336   0.1160694   0.1463978
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1951220   0.1047691   0.2854748
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2765273   0.2060273   0.3470273
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2482877   0.2181615   0.2784138
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3046098   0.2865867   0.3226330
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7461538   0.6711402   0.8211675
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7543860   0.6423394   0.8664325
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2818182   0.1927648   0.3708715
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3545455   0.3311494   0.3779415
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4583333   0.3170642   0.5996024
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5898876   0.5174712   0.6623041
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2321900   0.1896385   0.2747414
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2627119   0.1832236   0.3422001
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1849593   0.1506238   0.2192949
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2031250   0.1333708   0.2728792
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4396552   0.3492305   0.5300799
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4534535   0.3999243   0.5069826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2857143   0.1463426   0.4250860
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2758621   0.2072349   0.3444892
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2674180   0.2336542   0.3011819
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3102119   0.2882688   0.3321551


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.9972877   0.9210591   1.079825
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.0799316   0.9491681   1.228710
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.1483680   0.9735662   1.354555
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1226870   0.9109582   1.383627
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2681878   1.0443620   1.539984
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9914201   0.5549043   1.771321
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0996041   0.9241974   1.308302
0-24 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          1                    0                 1.4682314   1.3315310   1.618966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3589228   0.9376458   1.969477
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1430208   1.0532436   1.240450
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.8744240   0.6426932   1.189708
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.8915705   0.7454198   1.066376
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.4297210   0.9878216   2.069303
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9175691   0.5361493   1.570333
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3400689   0.9052918   1.983653
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2790059   0.7161368   2.284279
0-6 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          1                    0                 1.1662241   1.0012452   1.358387
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4172026   0.8153391   2.463347
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2268423   1.0707962   1.405629
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0110327   0.8450327   1.209642
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2580645   0.9027143   1.753297
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.2870276   0.9236367   1.793389
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1314522   0.7943442   1.611624
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0982143   0.7432784   1.622642
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0313843   0.8136380   1.307404
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 0.9655172   0.5551173   1.679327
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1600263   1.0028903   1.341783


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0007863   -0.0237966   0.0222240
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0400867   -0.0250105   0.1051840
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0797448   -0.0108844   0.1703741
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0115524   -0.0099021   0.0330070
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0217611    0.0027216   0.0408006
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0000343   -0.0023315   0.0022630
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0400433   -0.0313719   0.1114585
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0360875    0.0265726   0.0456024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1204640   -0.0091143   0.2500424
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0519571    0.0212756   0.0826387
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0148562   -0.0481489   0.0184365
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0300143   -0.0778716   0.0178431
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0982609    0.0083305   0.1881913
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0020534   -0.0146121   0.0105053
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0097089   -0.0043713   0.0237891
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0194423   -0.0234951   0.0623797
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0071812   -0.0000616   0.0144239
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0719235   -0.0346467   0.1784937
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0416611    0.0154862   0.0678359
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0025093   -0.0385949   0.0436134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0623377   -0.0163485   0.1410239
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1036136   -0.0216160   0.2288431
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0072466   -0.0141903   0.0286836
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0037503   -0.0123111   0.0198117
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0102335   -0.0677016   0.0881685
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0085607   -0.1450295   0.1279080
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0310978    0.0016246   0.0605710


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0008929   -0.0273664   0.0248985
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0648233   -0.0460717   0.1639623
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1068376   -0.0239385   0.2209112
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0307479   -0.0280845   0.0862136
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0561052    0.0056649   0.1039867
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001509   -0.0103262   0.0099219
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0695489   -0.0633073   0.1858051
0-24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.1522003    0.1114544   0.1910778
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2402475   -0.0630298   0.4570013
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0956870    0.0372381   0.1505876
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0430830   -0.1442614   0.0491489
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.1037613   -0.2835427   0.0508388
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.2570852   -0.0194967   0.4586325
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0217785   -0.1639642   0.1030384
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0700888   -0.0367225   0.1658956
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1731292   -0.3103036   0.4782008
0-6 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0599882   -0.0023696   0.1184666
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2693306   -0.2114217   0.5592965
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1436843    0.0482745   0.2295293
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0033516   -0.0530959   0.0567735
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1811321   -0.0879933   0.3836868
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1843832   -0.0733386   0.3802229
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0302654   -0.0634747   0.1157428
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0198735   -0.0690063   0.1013637
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0227467   -0.1667992   0.1815009
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0308880   -0.6641395   0.3613936
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1041747    0.0000047   0.1974932
