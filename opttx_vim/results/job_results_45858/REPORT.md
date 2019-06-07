---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
* W_mhtcm
* W_mwtkg
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_single
* delta_brthmon
* delta_W_parity

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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0      979   18384
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1      198   18384
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    12744   18384
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     4463   18384
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0      197    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1       90    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1641    3208
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1     1280    3208
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1096   18377
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1       80   18377
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    14874   18377
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2327   18377
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      260    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1       26    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     2627    3200
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1      287    3200
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     0      692   10461
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                     1      118   10461
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     0     7501   10461
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                     1     2150   10461
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     0      195    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                     1       64    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1635    2893
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                     1      999    2893


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
![](/tmp/dc966a34-d8a5-4aed-b322-c8c6651ca60e/31d0ffb3-13bd-4497-93e0-cbfd4cd06f19/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc966a34-d8a5-4aed-b322-c8c6651ca60e/31d0ffb3-13bd-4497-93e0-cbfd4cd06f19/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.6006565   0.5122259   0.6890871
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3358501   0.2683899   0.4033103
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3263473   0.2563639   0.3963307
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2238016   0.1648468   0.2827564
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1552639   0.1355338   0.1749939
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3278451   0.3023333   0.3533569
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1754996   0.1485099   0.2024892
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3136098   0.2384671   0.3887526
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5172775   0.3620858   0.6724691
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3319819   0.2787049   0.3852589
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1309259   0.0758901   0.1859617
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1624077   0.1070446   0.2177708
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1071760   0.0626854   0.1516665
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0906572   0.0778144   0.1034999
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1724090   0.1499864   0.1948316
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0717212   0.0529306   0.0905118
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1206538   0.0703523   0.1709553
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3982252   0.2432638   0.5531867
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3040171   0.2223139   0.3857203
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1993140   0.1313350   0.2672930
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1640709   0.1027231   0.2254186
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0751768   0.0618664   0.0884872
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2709426   0.2453160   0.2965693
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1491708   0.1207459   0.1775957
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2549208   0.1836617   0.3261799


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4143519   0.3678455   0.4608582
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2990485   0.2799429   0.3181541
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3255702   0.3173537   0.3337868
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2535357   0.2457345   0.2613369
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4270574   0.4065290   0.4475857
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3444444   0.2952897   0.3935992
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1944444   0.1570803   0.2318086
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1381966   0.1237955   0.1525978
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1709936   0.1643878   0.1775994
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1309789   0.1253283   0.1366296
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0978125   0.0850264   0.1105986
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3771186   0.3151523   0.4390850
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2923077   0.2427834   0.3418319
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2243995   0.2038353   0.2449637
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2458186   0.2363185   0.2553186
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2168053   0.2074791   0.2261314
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3674386   0.3465522   0.3883251


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           0.9850334   0.8720844   1.1126111
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1177436   0.9394402   1.3298886
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.2696654   1.0716502   1.5042691
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3362214   1.0368636   1.7220082
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0290726   0.9581396   1.1052570
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9930611   0.9226263   1.0688730
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.4446511   1.2428386   1.6792340
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.3617474   1.0824500   1.7131101
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.7415008   0.5602321   0.9814208
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.0375398   0.9690255   1.1108982
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2167645   0.8343419   1.7744714
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1972615   0.9119473   1.5718398
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2894369   0.8650307   1.9220675
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0068522   0.9309224   1.0889751
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9917902   0.8762968   1.1225053
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.8262230   1.4124996   2.3611266
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8106873   0.5569246   1.1800771
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           0.9469984   0.6618488   1.3550013
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9860669   0.7821150   1.2432032
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4665690   1.1135114   1.9315696
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3676986   0.9547932   1.9591673
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             optimal           1.0222708   0.9016663   1.1590070
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9072716   0.8318256   0.9895605
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.4534029   1.2052572   1.7526382
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.4413837   1.1012891   1.8865045


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                -0.0089898   -0.0821274    0.0641478
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0395442   -0.0189505    0.0980389
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0880046    0.0329948    0.1430144
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0752469    0.0184217    0.1320721
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0045139   -0.0066831    0.0157110
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0022749   -0.0263939    0.0218442
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0780361    0.0515359    0.1045362
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1134475    0.0418513    0.1850438
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1337158   -0.2776915    0.0102599
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0124625   -0.0102212    0.0351463
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0283801   -0.0211929    0.0779531
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0320368   -0.0122957    0.0763692
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0310207   -0.0118038    0.0738452
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0006212   -0.0065143    0.0077567
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0014154   -0.0227614    0.0199306
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0592577    0.0407471    0.0777684
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0228413   -0.0687152    0.0230326
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.0211066   -0.1637013    0.1214881
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0042359   -0.0746755    0.0662037
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0929937    0.0378281    0.1481593
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0603286    0.0012929    0.1193644
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0016742   -0.0078836    0.0112321
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0251241   -0.0486548   -0.0015934
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0676345    0.0394507    0.0958183
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1125179    0.0441340    0.1809017


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                -0.0151940   -0.1466781    0.1012134
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1053405   -0.0644637    0.2480573
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2123909    0.0668597    0.3352253
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2516210    0.0355530    0.4192827
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0282513   -0.0436893    0.0952331
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0069874   -0.0838625    0.0644352
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3077914    0.1953903    0.4044904
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.2656494    0.0761698    0.4162664
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.3486162   -0.7849746   -0.0189309
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0361815   -0.0319645    0.0998275
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1781483   -0.1985494    0.4364519
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1647606   -0.0965546    0.3638028
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2244677   -0.1560283    0.4797269
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0068056   -0.0742034    0.0817054
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0082777   -0.1411658    0.1091356
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.4524218    0.2920352    0.5764734
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.2335212   -0.7955753    0.1525977
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.0559680   -0.5109192    0.2619933
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0141300   -0.2785843    0.1956262
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3181364    0.1019400    0.4822863
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2688448   -0.0473473    0.4895791
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0217856   -0.1090578    0.1371925
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.1022058   -0.2021751   -0.0105496
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3119595    0.1703016    0.4294316
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.3062222    0.0919732    0.4699191
