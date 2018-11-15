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

unadjusted

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
0-24 months   ki1000109-EE               PAKISTAN                       0                   0       97    255
0-24 months   ki1000109-EE               PAKISTAN                       0                   1       72    255
0-24 months   ki1000109-EE               PAKISTAN                       1                   0       51    255
0-24 months   ki1000109-EE               PAKISTAN                       1                   1       35    255
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       57    513
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       54    513
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      188    513
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      214    513
0-24 months   ki1135781-COHORTS          INDIA                          0                   0      784   1881
0-24 months   ki1135781-COHORTS          INDIA                          0                   1      294   1881
0-24 months   ki1135781-COHORTS          INDIA                          1                   0      643   1881
0-24 months   ki1135781-COHORTS          INDIA                          1                   1      160   1881
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0        5    129
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        7    129
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0       67    129
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       50    129
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      302   1779
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1      136   1779
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      984   1779
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      357   1779
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       65    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      132    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        1    201
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    201
0-6 months    ki1000108-IRC              INDIA                          0                   0       86    240
0-6 months    ki1000108-IRC              INDIA                          0                   1      147    240
0-6 months    ki1000108-IRC              INDIA                          1                   0        1    240
0-6 months    ki1000108-IRC              INDIA                          1                   1        6    240
0-6 months    ki1000109-EE               PAKISTAN                       0                   0       31    107
0-6 months    ki1000109-EE               PAKISTAN                       0                   1       41    107
0-6 months    ki1000109-EE               PAKISTAN                       1                   0       15    107
0-6 months    ki1000109-EE               PAKISTAN                       1                   1       20    107
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0       18    167
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       16    167
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0       52    167
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       81    167
0-6 months    ki1135781-COHORTS          INDIA                          0                   0      462   1241
0-6 months    ki1135781-COHORTS          INDIA                          0                   1      294   1241
0-6 months    ki1135781-COHORTS          INDIA                          1                   0      325   1241
0-6 months    ki1135781-COHORTS          INDIA                          1                   1      160   1241
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   0        2     78
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                   1        7     78
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   0       19     78
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       50     78
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   0       53    505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                   1       94    505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      146    505
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                   1      212    505
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       50    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       68    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        3    121
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        0    121
6-24 months   ki1000108-IRC              INDIA                          0                   0       73    155
6-24 months   ki1000108-IRC              INDIA                          0                   1       80    155
6-24 months   ki1000108-IRC              INDIA                          1                   0        2    155
6-24 months   ki1000108-IRC              INDIA                          1                   1        0    155
6-24 months   ki1000109-EE               PAKISTAN                       0                   0       66    148
6-24 months   ki1000109-EE               PAKISTAN                       0                   1       31    148
6-24 months   ki1000109-EE               PAKISTAN                       1                   0       36    148
6-24 months   ki1000109-EE               PAKISTAN                       1                   1       15    148
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0       39    346
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       38    346
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      136    346
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1      133    346
6-24 months   ki1135781-COHORTS          INDIA                          0                   0      322    640
6-24 months   ki1135781-COHORTS          INDIA                          0                   1        0    640
6-24 months   ki1135781-COHORTS          INDIA                          1                   0      318    640
6-24 months   ki1135781-COHORTS          INDIA                          1                   1        0    640
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   0        3     51
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        0     51
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   0       48     51
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                   1        0     51
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      249   1274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       42   1274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      838   1274
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      145   1274


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
![](/tmp/e05c7680-0268-48ae-bb8c-0e83d43b2592/a96ecb85-36a8-4ae6-a9c8-d5b93f46b6bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e05c7680-0268-48ae-bb8c-0e83d43b2592/a96ecb85-36a8-4ae6-a9c8-d5b93f46b6bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e05c7680-0268-48ae-bb8c-0e83d43b2592/a96ecb85-36a8-4ae6-a9c8-d5b93f46b6bc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e05c7680-0268-48ae-bb8c-0e83d43b2592/a96ecb85-36a8-4ae6-a9c8-d5b93f46b6bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.4260355   0.3447151   0.5073559
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.4069767   0.2968559   0.5170976
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4687500   0.3418739   0.5956261
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3682488   0.3281413   0.4083562
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5840708   0.5180764   0.6500652
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5802469   0.4690699   0.6914239
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.6376147   0.5719009   0.7033285
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.5913978   0.4963057   0.6864900
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4864865   0.3848752   0.5880978
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5323383   0.4799301   0.5847465
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                0.2727273   0.2455889   0.2998656
0-24 months   ki1135781-COHORTS         INDIA        1                    NA                0.1992528   0.1723873   0.2261183
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.5833333   0.3560459   0.8106207
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4273504   0.3351375   0.5195633
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3105023   0.2642678   0.3567368
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2662192   0.2420868   0.2903517
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.5694444   0.4519225   0.6869663
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.5714286   0.4056972   0.7371600
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5416667   0.3534523   0.7298810
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.5078740   0.4454740   0.5702741
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8115942   0.7470000   0.8761884
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7173913   0.5887014   0.8460812
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.9000000   0.8497106   0.9502894
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.8793103   0.7944001   0.9642206
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4705882   0.3002632   0.6409133
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.6090226   0.5257202   0.6923250
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                0.3888889   0.3541245   0.4236533
0-6 months    ki1135781-COHORTS         INDIA        1                    NA                0.3298969   0.2880357   0.3717582
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6394558   0.5617588   0.7171528
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.5921788   0.5412224   0.6431351
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3195876   0.2279106   0.4112647
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.2941176   0.1610529   0.4271824
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4250000   0.2781131   0.5718869
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.2689076   0.2212043   0.3166108
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2272727   0.1407608   0.3137846
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.4000000   0.2229552   0.5770448
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4935065   0.3707222   0.6162908
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4944238   0.4305291   0.5583185
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1443299   0.1023657   0.1862941
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1475076   0.1259260   0.1690892


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
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2771220   0.2556194   0.2986246
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
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1467818   0.1275683   0.1659953


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.9552649   0.6858937   1.3304261
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.7855974   0.5868019   1.0517404
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9934530   0.7953971   1.2408254
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9275161   0.7659250   1.1231988
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0942510   0.8686441   1.3784532
0-24 months   ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS         INDIA        1                    0                 0.7305936   0.6178743   0.8638764
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.7326007   0.4692527   1.1437415
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8573826   0.7202330   1.0206487
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.0034843   0.7029104   1.4325876
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.9376136   0.6485807   1.3554507
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.8839286   0.7264161   1.0755953
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 0.9770115   0.8738707   1.0923258
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.2941729   0.8789283   1.9055975
0-6 months    ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS         INDIA        1                    0                 0.8483063   0.7263434   0.9907484
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9260668   0.7979593   1.0747412
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 0.9203036   0.5386238   1.5724495
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6327237   0.4290456   0.9330925
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.7600000   0.9815984   3.1556693
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0018587   0.7568662   1.3261537
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0220171   0.7380855   1.4151735


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0064277   -0.0526847    0.0398294
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0909722   -0.2114429    0.0294984
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0010089   -0.0351062    0.0330884
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0138205   -0.0482218    0.0205808
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0359307   -0.0536762    0.1255376
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.0313663   -0.0477776   -0.0149549
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.1414729   -0.3635901    0.0806444
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0333803   -0.0726883    0.0059277
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0006490   -0.0658124    0.0671104
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0308753   -0.2120406    0.1502900
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0235507   -0.0599719    0.0128705
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0060606   -0.0350005    0.0228793
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.1102501   -0.0409878    0.2614880
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0230549   -0.0443811   -0.0017287
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0335152   -0.0994110    0.0323806
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0087768   -0.0645714    0.0470177
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1403652   -0.2794203   -0.0013102
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0491500   -0.0086958    0.1069959
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0007132   -0.1069217    0.1083480
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0024519   -0.0339565    0.0388603


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0153183   -0.1317083    0.0891017
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.2408088   -0.6052517    0.0408940
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0017304   -0.0619525    0.0550767
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0221555   -0.0787330    0.0314546
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0687777   -0.1198009    0.2255990
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                -0.1299559   -0.1993209   -0.0646028
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.3201754   -0.9499839    0.1062166
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1204535   -0.2711988    0.0124157
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0011384   -0.1225208    0.1111751
0-6 months    ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.0604460   -0.4821519    0.2412750
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0298851   -0.0775203    0.0156444
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                -0.0067797   -0.0397071    0.0251050
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.1898120   -0.1195631    0.4136958
0-6 months    ki1135781-COHORTS         INDIA        0                    NA                -0.0630201   -0.1229865   -0.0062558
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0553110   -0.1700349    0.0481640
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                -0.0282385   -0.2249279    0.1368681
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4931416   -1.0785098   -0.0726299
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.1778075   -0.0510358    0.3568244
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0014430   -0.2419243    0.1971201
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0167043   -0.2655766    0.2360239
