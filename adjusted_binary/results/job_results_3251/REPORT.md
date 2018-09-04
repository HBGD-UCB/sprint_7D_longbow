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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** vagbrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        vagbrth    ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        3     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1       17     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       25     296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      251     296
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                     0       24     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                     1       35     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                     0      123     360
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                     1      178     360
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     0       97     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                     1       46     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      299     634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                     1      192     634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      117     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       58     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      136     432
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      121     432
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      145    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       47    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1402    2207
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      613    2207
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                     0     1640   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                     1      294   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                     0    12427   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                     1     2381   16742
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      731   12495
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      356   12495
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     7696   12495
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     3712   12495
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1957   36761
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      396   36761
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    25482   36761
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     8926   36761
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      393    6408
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      180    6408
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3278    6408
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     2557    6408
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       12     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        8     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      168     292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      104     292
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                     0       35     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                     1       24     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                     0      201     360
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                     1      100     360
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      126     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                     1       17     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      407     634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                     1       84     634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      146     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       29     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      202     432
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       55     432
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      169    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       23    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1733    2207
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      282    2207
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                     0     1758   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                     1      176   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                     0    13454   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                     1     1352   16740
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      904   12480
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      182   12480
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     9442   12480
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1952   12480
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2192   36754
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1      160   36754
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    29748   36754
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4654   36754
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      520    6400
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1       52    6400
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     5254    6400
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      574    6400
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        3     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        9     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       25     185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      148     185
6-24 months                  ki1000108-IRC              INDIA                          0                     0       24     236
6-24 months                  ki1000108-IRC              INDIA                          0                     1       11     236
6-24 months                  ki1000108-IRC              INDIA                          1                     0      123     236
6-24 months                  ki1000108-IRC              INDIA                          1                     1       78     236
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     0       81     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                     1       29     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     0      239     457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                     1      108     457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      108     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       29     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      122     325
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       66     325
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      122    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       24    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1105    1582
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      331    1582
6-24 months                  ki1119695-PROBIT           BELARUS                        0                     0     1613   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        0                     1      118   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                     0    12189   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        1                     1     1031   14951
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      516    7892
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                     1      174    7892
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     5436    7892
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                     1     1766    7892
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1383   20908
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     1      236   20908
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     0    14996   20908
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4293   20908
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     0      389    5776
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     1      128    5776
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     0     3266    5776
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1993    5776


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/18b26bd2-6439-4711-9ddb-0b91b3f5bca7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/18b26bd2-6439-4711-9ddb-0b91b3f5bca7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/18b26bd2-6439-4711-9ddb-0b91b3f5bca7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/18b26bd2-6439-4711-9ddb-0b91b3f5bca7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.6904818   0.5829804   0.7979832
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5933640   0.5381427   0.6485853
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3833147   0.3263126   0.4403169
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3915575   0.3500042   0.4331109
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3231613   0.2553430   0.3909797
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4756889   0.4165459   0.5348318
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2607630   0.2146397   0.3068862
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3072163   0.2872150   0.3272177
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1520190   0.1308999   0.1731381
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1601379   0.1406157   0.1796602
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3261964   0.3024975   0.3498954
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3274114   0.3188473   0.3359756
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1727751   0.1527749   0.1927754
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2572545   0.2493028   0.2652063
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3156785   0.2450005   0.3863564
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4374421   0.4160273   0.4588569
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4000000   0.1849281   0.6150719
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3823529   0.3245019   0.4402040
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.4299853   0.3158794   0.5440912
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3319245   0.2790154   0.3848336
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1116771   0.0626592   0.1606949
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1676233   0.1347253   0.2005213
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1623118   0.1078948   0.2167288
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2166263   0.1671731   0.2660794
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1044760   0.0674443   0.1415076
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1409815   0.1258727   0.1560902
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0882795   0.0729549   0.1036041
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0906870   0.0769650   0.1044089
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1650115   0.1461413   0.1838817
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1725715   0.1656655   0.1794775
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0764030   0.0624512   0.0903548
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1347007   0.1288738   0.1405277
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0905978   0.0432779   0.1379177
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0979626   0.0850502   0.1108751
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3160266   0.1623299   0.4697234
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3877282   0.3202633   0.4551930
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2707728   0.1900777   0.3514678
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3086298   0.2601088   0.3571508
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2047769   0.1375515   0.2720023
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3573283   0.2908837   0.4237730
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1677095   0.1193819   0.2160372
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2320817   0.2103718   0.2537917
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0706780   0.0565832   0.0847729
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0776238   0.0631148   0.0921328
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2556184   0.2291155   0.2821213
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2466743   0.2367668   0.2565818
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1504169   0.1300118   0.1708221
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2205888   0.2109565   0.2302211
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2494675   0.1820579   0.3168772
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3780106   0.3560088   0.4000124


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4143519   0.3678455   0.4608582
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2990485   0.2799429   0.3181541
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3255702   0.3173537   0.3337868
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2535840   0.2457754   0.2613925
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4271223   0.4066059   0.4476388
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1944444   0.1570803   0.2318086
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1381966   0.1237955   0.1525978
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1709936   0.1643878   0.1775994
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1309789   0.1253283   0.1366296
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0978125   0.0850264   0.1105986
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2923077   0.2427834   0.3418319
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2243995   0.2038353   0.2449637
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2458186   0.2363185   0.2553186
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2166156   0.2072830   0.2259483
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3672091   0.3463329   0.3880854


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.8593477   0.7169596   1.030014
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0215040   0.8533289   1.222823
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4719857   1.1595830   1.868553
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1781439   0.9766818   1.421162
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 1.0534075   0.9350103   1.186797
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0037248   0.9296339   1.083721
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4889556   1.3231671   1.675517
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3857205   1.1015175   1.743251
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9558824   0.5467942   1.671033
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.7719438   0.5669213   1.051111
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.5009644   0.9288406   2.425491
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3346303   0.8935967   1.993336
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3494150   0.9333921   1.950864
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 1.0272712   0.8612354   1.225317
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0458150   0.9269691   1.179898
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.7630298   1.4629281   2.124693
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0812914   0.6315111   1.851418
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 1.2268844   0.7322820   2.055554
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1398110   0.8161860   1.591756
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.7449638   1.2034570   2.530127
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3838314   1.0229841   1.871964
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.0982733   0.9195832   1.311686
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9650100   0.8636754   1.078234
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.4665155   1.2741076   1.687980
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5152698   1.1485639   1.999055


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0988151   -0.1980002   0.0003699
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0079204   -0.0595088   0.0436680
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0911905    0.0384354   0.1439456
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0382855   -0.0067768   0.0833478
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0077588   -0.0087534   0.0242711
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0006262   -0.0233224   0.0220700
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0808088    0.0608898   0.1007278
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1114439    0.0439803   0.1789075
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0164384   -0.2239010   0.1910243
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0855408   -0.1891821   0.0181004
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0476289    0.0024251   0.0928328
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0321326   -0.0112238   0.0754890
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0337207   -0.0022063   0.0696476
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0029989   -0.0107848   0.0167826
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0059821   -0.0121515   0.0241157
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0545760    0.0404382   0.0687137
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0072147   -0.0368389   0.0512683
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0610920   -0.0817621   0.2039461
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0290084   -0.0418263   0.0998432
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0875308    0.0330260   0.1420355
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0566900    0.0094379   0.1039420
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0061730   -0.0055256   0.0178716
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0097999   -0.0352963   0.0156966
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0661987    0.0455784   0.0868190
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1177416    0.0527620   0.1827212


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.1670115   -0.3494086   -0.0092687
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0210989   -0.1687386    0.1078904
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2200799    0.0810136    0.3381019
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1280244   -0.0352102    0.2655198
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0485602   -0.0588655    0.1450871
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0019234   -0.0741210    0.0654214
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3186669    0.2367751    0.3917720
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2609180    0.0840776    0.4036151
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0428571   -0.7517776    0.3791729
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.2483444   -0.5918537    0.0210384
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2989777   -0.0442286    0.5293825
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1652536   -0.0892652    0.3603012
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2440049   -0.0636131    0.4626537
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0328544   -0.1287150    0.1712961
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0349843   -0.0770172    0.1353386
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4166774    0.3013685    0.5129546
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0737604   -0.5083083    0.4312040
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.1619968   -0.3169180    0.4667478
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0967653   -0.1730053    0.3044934
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2994473    0.0879003    0.4619294
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2526296    0.0127825    0.4342052
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0803243   -0.0789338    0.2160748
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0398662   -0.1490819    0.0589689
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3056044    0.2063272    0.3924635
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3206391    0.1182761    0.4765582
