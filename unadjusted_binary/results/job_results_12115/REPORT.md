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

unadjusted

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
![](/tmp/5c94836f-f42b-4550-87b8-5154d2fe49f0/ce05c2c0-a051-4191-b4e4-f5811d3febf1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5c94836f-f42b-4550-87b8-5154d2fe49f0/ce05c2c0-a051-4191-b4e4-f5811d3febf1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5c94836f-f42b-4550-87b8-5154d2fe49f0/ce05c2c0-a051-4191-b4e4-f5811d3febf1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5c94836f-f42b-4550-87b8-5154d2fe49f0/ce05c2c0-a051-4191-b4e4-f5811d3febf1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                0.5932203   0.4677001   0.7187406
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    NA                0.5913621   0.5357506   0.6469737
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3216783   0.2450567   0.3983000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3910387   0.3478416   0.4342358
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3314286   0.2616051   0.4012520
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4708171   0.4097210   0.5319133
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2447917   0.1839603   0.3056230
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3042184   0.2841257   0.3243111
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                0.1520165   0.1311500   0.1728831
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    NA                0.1607915   0.1412079   0.1803750
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3275069   0.2996069   0.3554069
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3253857   0.3167879   0.3339835
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1682243   0.1451769   0.1912717
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2593712   0.2513788   0.2673636
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3135889   0.2398816   0.3872961
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4382061   0.4167703   0.4596419
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4000000   0.1849281   0.6150719
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3823529   0.3245019   0.4402040
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                0.4067797   0.2812594   0.5322999
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    NA                0.3322259   0.2789415   0.3855104
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1188811   0.0657931   0.1719691
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1710794   0.1377440   0.2044148
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1657143   0.1105612   0.2208674
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2140078   0.1638072   0.2642084
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1197917   0.0738505   0.1657328
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1399504   0.1247988   0.1551019
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0910031   0.0747234   0.1072828
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0913143   0.0775757   0.1050530
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1675875   0.1453728   0.1898022
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1713182   0.1643996   0.1782369
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0680272   0.0522538   0.0838007
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1352828   0.1294170   0.1411487
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0909091   0.0368549   0.1449632
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0984900   0.0855410   0.1114391
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                0.3142857   0.1601618   0.4684096
6-24 months                  ki1000108-IRC              INDIA                          1                    NA                0.3880597   0.3205485   0.4555709
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2636364   0.1812081   0.3460646
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3112392   0.2624706   0.3600078
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2116788   0.1431699   0.2801878
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3510638   0.2827305   0.4193971
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1643836   0.1042466   0.2245205
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2305014   0.2087118   0.2522910
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                0.0681687   0.0534748   0.0828626
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    NA                0.0779879   0.0633587   0.0926171
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2521739   0.2197697   0.2845781
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2452097   0.2352732   0.2551461
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1456790   0.1209941   0.1703639
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2227748   0.2130694   0.2324803
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2471042   0.1788429   0.3153656
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3792711   0.3572543   0.4012879


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5916667   0.5408218   0.6425115
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4143519   0.3678455   0.4608582
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2990485   0.2799429   0.3181541
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3255702   0.3173537   0.3337868
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2535357   0.2457345   0.2613369
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4270574   0.4065290   0.4475857
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2168053   0.2074791   0.2261314
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3674386   0.3465522   0.3883251


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          1                    0                 0.9968676   0.7908199   1.256601
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2156203   0.9349069   1.580620
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4205689   1.1091843   1.819369
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2427644   0.9609897   1.607159
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        1                    0                 1.0577234   0.9435224   1.185747
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9935232   0.9087449   1.086211
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5418176   1.3428657   1.770245
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3973905   1.0990674   1.776688
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9558824   0.5467942   1.671033
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          1                    0                 0.8167220   0.5768229   1.156395
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4390799   0.8840692   2.342521
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2914263   0.8594772   1.940461
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1682814   0.7843001   1.740254
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        1                    0                 1.0034200   0.8437632   1.193287
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0222616   0.8899821   1.174202
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.9886576   1.5729709   2.514197
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0833905   0.5901128   1.989001
6-24 months                  ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          1                    0                 1.2347354   0.7338268   2.077563
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1805625   0.8321567   1.674838
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6584740   1.1368133   2.419514
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4022168   0.9609864   2.046035
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        1                    0                 1.1440428   0.9403834   1.391809
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9723832   0.8498098   1.112636
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5292171   1.2867886   1.817319
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.5348626   1.1567638   2.036546


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0015537   -0.1163416   0.1132343
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0537160   -0.0144415   0.1218735
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0829233    0.0273513   0.1384953
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0542568   -0.0042379   0.1127515
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0077613   -0.0079630   0.0234855
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0019367   -0.0285917   0.0247183
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0853114    0.0630407   0.1075821
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1134685    0.0431933   0.1837437
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0164384   -0.2239010   0.1910243
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.0623352   -0.1763846   0.0517142
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0404249   -0.0081522   0.0890020
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0287302   -0.0156936   0.0731539
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0184050   -0.0257624   0.0625724
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002753   -0.0136898   0.0142404
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0034061   -0.0178364   0.0246486
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0629517    0.0473886   0.0785149
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0069034   -0.0436046   0.0574115
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.0628329   -0.0805138   0.2061796
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0361448   -0.0366009   0.1088905
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0806289    0.0241562   0.1371016
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0600159    0.0019485   0.1180834
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.0086824   -0.0038715   0.0212362
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0063554   -0.0372855   0.0245748
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0711263    0.0471098   0.0951428
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1203344    0.0546099   0.1860589


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          0                    NA                -0.0026259   -0.2166759   0.1737662
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1430922   -0.0591597   0.3067230
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2001277    0.0538170   0.3238140
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1814315   -0.0393882   0.3553377
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0485753   -0.0534484   0.1407183
0-24 months (no birth st.)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0059486   -0.0912441   0.0726800
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3364867    0.2427429   0.4186256
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.2656985    0.0802240   0.4137717
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0428571   -0.7517776   0.3791729
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          0                    NA                -0.1809732   -0.5634827   0.1079545
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2537561   -0.1192440   0.5024500
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1477551   -0.1129029   0.3473632
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1331796   -0.2529830   0.4003290
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0030158   -0.1622018   0.1447461
0-6 months (no birth st.)    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0199195   -0.1125254   0.1365971
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4806248    0.3485993   0.5858915
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0705780   -0.6226744   0.4676533
6-24 months                  ki1000108-IRC              INDIA                          0                    NA                 0.1666132   -0.3150262   0.4718481
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1205707   -0.1586834   0.3325218
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2758356    0.0573937   0.4436552
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2674513   -0.0419608   0.4849829
6-24 months                  ki1119695-PROBIT           BELARUS                        0                    NA                 0.1129764   -0.0581711   0.2564427
6-24 months                  ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0258539   -0.1597195   0.0925597
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3280652    0.2086012   0.4294958
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.3274952    0.1221667   0.4847966
