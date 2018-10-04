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
![](/tmp/f35a069f-f9b1-4c1a-b8dd-a9cd6db806b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f35a069f-f9b1-4c1a-b8dd-a9cd6db806b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5890760   0.5337889   0.6443631
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3485420   0.2901537   0.4069303
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3247825   0.2574018   0.3921631
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2276979   0.1809528   0.2744430
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1453398   0.1250875   0.1655921
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.3042492   0.2808471   0.3276513
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1706122   0.1504435   0.1907810
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3214739   0.2510948   0.3918530
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3824175   0.3245664   0.4402685
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3311390   0.2781531   0.3841250
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1278158   0.0774927   0.1781389
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1609372   0.1068356   0.2150388
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1020696   0.0674648   0.1366744
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0907616   0.0770317   0.1044914
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1517048   0.1332560   0.1701535
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0511036   0.0386309   0.0635763
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0930127   0.0464506   0.1395747
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3242779   0.1726084   0.4759475
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2743118   0.1945284   0.3540953
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2009262   0.1341764   0.2676760
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1535636   0.1030177   0.2041095
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0694620   0.0560317   0.0828923
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1898928   0.1699318   0.2098537
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1509794   0.1305326   0.1714263
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2571610   0.1897778   0.3245442


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5915221   0.5406773   0.6423669
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3749049   0.3371831   0.4126268
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4147326   0.3682262   0.4612390
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2992517   0.2801461   0.3183573
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1596733   0.1407169   0.1786296
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.3257496   0.3175331   0.3339662
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2537774   0.2459689   0.2615859
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4281704   0.4076539   0.4486868
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3829983   0.3271302   0.4388664
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3447553   0.2956006   0.3939101
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1595696   0.1310607   0.1880786
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1945436   0.1571794   0.2319077
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1388225   0.1244213   0.1532237
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0914989   0.0783793   0.1046184
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1711344   0.1645285   0.1777402
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1314742   0.1258236   0.1371249
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0978168   0.0850307   0.1106029
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3771648   0.3151984   0.4391311
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3004545   0.2584027   0.3425064
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2921808   0.2426565   0.3417050
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2246352   0.2040709   0.2451994
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0771391   0.0631738   0.0911044
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2472516   0.2377515   0.2567517
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2169190   0.2075863   0.2262516
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3673044   0.3464282   0.3881806


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              observed          0.9958647   0.9589420   1.0342092
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9296810   0.8001541   1.0801752
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7831130   0.6662644   0.9204543
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7608909   0.6240163   0.9277881
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              observed          0.9102324   0.8240469   1.0054318
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9339971   0.8677129   1.0053448
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.6722909   0.5986820   0.7549501
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7508083   0.6087935   0.9259513
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9984834   0.9594170   1.0391406
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              observed          0.9605045   0.8977431   1.0276534
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.8010036   0.5607450   1.1442041
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8272552   0.6338790   1.0796242
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7352524   0.5301395   1.0197242
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              observed          0.9919419   0.9699528   1.0144294
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8864659   0.7887256   0.9963183
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.3886968   0.3057089   0.4942127
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.9508865   0.5961907   1.5166039
6-24 months                  ki1000108-IRC              INDIA                          optimal              observed          0.8597779   0.5567823   1.3276609
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.9129895   0.7079297   1.1774471
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.6876778   0.5264970   0.8982023
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.6836134   0.4978334   0.9387221
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              observed          0.9004775   0.7663306   1.0581068
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.7680143   0.6960374   0.8474343
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.6960177   0.6090485   0.7954057
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7001304   0.5437744   0.9014446
