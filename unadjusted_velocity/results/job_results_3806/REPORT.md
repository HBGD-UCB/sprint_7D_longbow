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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        exclfeed3    n_cell       n
-------------  -------------------------  -----------------------------  ----------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     0                66     239
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1               173     239
0-3 months     ki0047075b-MAL-ED          BRAZIL                         0               113     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                67     180
0-3 months     ki0047075b-MAL-ED          INDIA                          0                77     199
0-3 months     ki0047075b-MAL-ED          INDIA                          1               122     199
0-3 months     ki0047075b-MAL-ED          NEPAL                          0               112     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                63     175
0-3 months     ki0047075b-MAL-ED          PERU                           0               203     268
0-3 months     ki0047075b-MAL-ED          PERU                           1                65     268
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               195     226
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                31     226
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               164     224
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                60     224
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       4
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                 4       4
0-3 months     ki1000108-IRC              INDIA                          0                10      10
0-3 months     ki1000108-IRC              INDIA                          1                 0      10
0-3 months     ki1000109-EE               PAKISTAN                       0                32     592
0-3 months     ki1000109-EE               PAKISTAN                       1               560     592
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          0                19     398
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1               379     398
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     0               188     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     1               446     634
0-3 months     ki1101329-Keneba           GAMBIA                         0               151    1175
0-3 months     ki1101329-Keneba           GAMBIA                         1              1024    1175
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     0              4260   39314
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1             35054   39314
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     0                20     242
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     1               222     242
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     0                62     227
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1               165     227
3-6 months     ki0047075b-MAL-ED          BRAZIL                         0               127     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                81     208
3-6 months     ki0047075b-MAL-ED          INDIA                          0                89     229
3-6 months     ki0047075b-MAL-ED          INDIA                          1               140     229
3-6 months     ki0047075b-MAL-ED          NEPAL                          0               148     232
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                84     232
3-6 months     ki0047075b-MAL-ED          PERU                           0               199     265
3-6 months     ki0047075b-MAL-ED          PERU                           1                66     265
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   0               204     235
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                31     235
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               167     233
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                66     233
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      10
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                10      10
3-6 months     ki1000108-IRC              INDIA                          0                10      10
3-6 months     ki1000108-IRC              INDIA                          1                 0      10
3-6 months     ki1000109-EE               PAKISTAN                       0                44     660
3-6 months     ki1000109-EE               PAKISTAN                       1               616     660
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          0                18     379
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1               361     379
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     0               170     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     1               404     574
3-6 months     ki1101329-Keneba           GAMBIA                         0               151    1279
3-6 months     ki1101329-Keneba           GAMBIA                         1              1128    1279
3-6 months     ki1113344-GMS-Nepal        NEPAL                          0               150     878
3-6 months     ki1113344-GMS-Nepal        NEPAL                          1               728     878
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     0              2364   24630
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1             22266   24630
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     0                 2      46
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                44      46
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     0                60     216
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1               156     216
6-12 months    ki0047075b-MAL-ED          BRAZIL                         0               116     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                78     194
6-12 months    ki0047075b-MAL-ED          INDIA                          0                90     223
6-12 months    ki0047075b-MAL-ED          INDIA                          1               133     223
6-12 months    ki0047075b-MAL-ED          NEPAL                          0               145     227
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                82     227
6-12 months    ki0047075b-MAL-ED          PERU                           0               177     236
6-12 months    ki0047075b-MAL-ED          PERU                           1                59     236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               196     226
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                30     226
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               158     217
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                59     217
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       9
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 9       9
6-12 months    ki1000108-IRC              INDIA                          0                10      10
6-12 months    ki1000108-IRC              INDIA                          1                 0      10
6-12 months    ki1000109-EE               PAKISTAN                       0                 2       8
6-12 months    ki1000109-EE               PAKISTAN                       1                 6       8
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          0                15     347
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1               332     347
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     0               161     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     1               384     545
6-12 months    ki1101329-Keneba           GAMBIA                         0               127    1158
6-12 months    ki1101329-Keneba           GAMBIA                         1              1031    1158
6-12 months    ki1113344-GMS-Nepal        NEPAL                          0               130     786
6-12 months    ki1113344-GMS-Nepal        NEPAL                          1               656     786
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     0              1832   19180
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1             17348   19180
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     0                 2      36
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                34      36
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                57     202
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               145     202
12-24 months   ki0047075b-MAL-ED          BRAZIL                         0                95     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                70     165
12-24 months   ki0047075b-MAL-ED          INDIA                          0                91     223
12-24 months   ki0047075b-MAL-ED          INDIA                          1               132     223
12-24 months   ki0047075b-MAL-ED          NEPAL                          0               142     223
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                81     223
12-24 months   ki0047075b-MAL-ED          PERU                           0               145     190
12-24 months   ki0047075b-MAL-ED          PERU                           1                45     190
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               198     224
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                26     224
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               148     203
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                55     203
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       8
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 8       8
12-24 months   ki1000108-IRC              INDIA                          0                10      10
12-24 months   ki1000108-IRC              INDIA                          1                 0      10
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     0               133     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     1               325     458
12-24 months   ki1101329-Keneba           GAMBIA                         0               115    1052
12-24 months   ki1101329-Keneba           GAMBIA                         1               937    1052
12-24 months   ki1113344-GMS-Nepal        NEPAL                          0               102     624
12-24 months   ki1113344-GMS-Nepal        NEPAL                          1               522     624
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0               946    9050
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1              8104    9050
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                16     212
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               196     212


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4877f2c8-9db5-4574-a66c-3fdea4878278/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/4877f2c8-9db5-4574-a66c-3fdea4878278/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0704991   -0.1311676   -0.0098307
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0173184   -0.0555094    0.0208726
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.2018977    0.1363278    0.2674676
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.1776137    0.0925699    0.2626575
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0578336   -0.1164334    0.0007661
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0051086   -0.0552199    0.0450027
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.1158927    0.0697696    0.1620157
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                 0.0012470   -0.0463275    0.0488214
0-3 months     ki0047075b-MAL-ED         PERU                           0                    NA                -0.1596928   -0.1977791   -0.1216065
0-3 months     ki0047075b-MAL-ED         PERU                           1                    NA                -0.1521918   -0.2162592   -0.0881244
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.1104420   -0.1602652   -0.0606188
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0407140   -0.1210234    0.0395953
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0741545   -0.1200582   -0.0282508
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0213398   -0.0502531    0.0929326
0-3 months     ki1000109-EE              PAKISTAN                       0                    NA                -0.3641230   -0.4912529   -0.2369931
0-3 months     ki1000109-EE              PAKISTAN                       1                    NA                -0.3962647   -0.4408433   -0.3516860
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.1129364   -0.2527497    0.0268769
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                 0.0096915   -0.0260235    0.0454064
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0494780   -0.0871870   -0.0117689
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0378731   -0.0581909   -0.0175554
0-3 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.3206907   -0.3874829   -0.2538984
0-3 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.2842651   -0.3118960   -0.2566343
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0322288    0.0168417    0.0476159
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                 0.0753789    0.0701846    0.0805732
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0755900   -0.0543405    0.2055205
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                 0.1141399    0.0668478    0.1614319
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    NA                 0.0073940   -0.0388422    0.0536303
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0303506   -0.0567864   -0.0039148
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0756539    0.0278123    0.1234954
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0367156   -0.0191791    0.0926103
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0209360   -0.0688983    0.0270263
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0523239   -0.0872251   -0.0174226
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    NA                 0.0016541   -0.0316678    0.0349760
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0651005   -0.1078770   -0.0223240
3-6 months     ki0047075b-MAL-ED         PERU                           0                    NA                 0.0286192   -0.0085732    0.0658116
3-6 months     ki0047075b-MAL-ED         PERU                           1                    NA                 0.0274444   -0.0285646    0.0834533
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0080464   -0.0499422    0.0338495
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                 0.0346434   -0.0530238    0.1223105
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0573978   -0.0954452   -0.0193505
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1117373   -0.1757943   -0.0476803
3-6 months     ki1000109-EE              PAKISTAN                       0                    NA                 0.0365247   -0.0820478    0.1550972
3-6 months     ki1000109-EE              PAKISTAN                       1                    NA                 0.0733013    0.0442604    0.1023422
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    NA                 0.0473330   -0.1273699    0.2220360
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0399400   -0.0754314   -0.0044486
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0442519   -0.0770083   -0.0114955
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0200855   -0.0389214   -0.0012497
3-6 months     ki1101329-Keneba          GAMBIA                         0                    NA                -0.0461546   -0.0993003    0.0069911
3-6 months     ki1101329-Keneba          GAMBIA                         1                    NA                -0.0137449   -0.0343769    0.0068871
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.1972621   -0.2471509   -0.1473733
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.1596135   -0.1808049   -0.1384221
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                 0.0315768    0.0167895    0.0463641
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0080570   -0.0131007   -0.0030133
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0861632   -0.1095017   -0.0628248
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0786501   -0.0901107   -0.0671896
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    NA                 0.0098489   -0.0172551    0.0369528
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    NA                 0.0016799   -0.0251780    0.0285378
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0635553   -0.0843279   -0.0427828
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0873935   -0.1021287   -0.0726582
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0412467   -0.0547735   -0.0277200
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0616034   -0.0784303   -0.0447765
6-12 months    ki0047075b-MAL-ED         PERU                           0                    NA                -0.0368724   -0.0533695   -0.0203754
6-12 months    ki0047075b-MAL-ED         PERU                           1                    NA                -0.0390675   -0.0661557   -0.0119793
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0529542   -0.0722423   -0.0336661
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0437598   -0.0860996   -0.0014200
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1262822   -0.1437915   -0.1087730
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1202593   -0.1556314   -0.0848871
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    NA                -0.0131206   -0.0626063    0.0363650
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    NA                -0.0896009   -0.0995836   -0.0796182
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0512546   -0.0644137   -0.0380955
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0673783   -0.0754943   -0.0592622
6-12 months    ki1101329-Keneba          GAMBIA                         0                    NA                -0.0600532   -0.0798326   -0.0402738
6-12 months    ki1101329-Keneba          GAMBIA                         1                    NA                -0.0640562   -0.0727686   -0.0553437
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0468419   -0.0667108   -0.0269731
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0672177   -0.0775306   -0.0569049
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0743475   -0.0836531   -0.0650419
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0754279   -0.0783885   -0.0724672
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    NA                -0.0144837   -0.0242209   -0.0047465
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    NA                -0.0195777   -0.0261628   -0.0129926
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    NA                -0.0015747   -0.0143289    0.0111796
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    NA                -0.0009309   -0.0189669    0.0171050
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    NA                -0.0012471   -0.0080740    0.0055799
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    NA                -0.0156238   -0.0227576   -0.0084900
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    NA                -0.0309838   -0.0373230   -0.0246446
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    NA                -0.0269634   -0.0353829   -0.0185440
12-24 months   ki0047075b-MAL-ED         PERU                           0                    NA                -0.0074859   -0.0159183    0.0009464
12-24 months   ki0047075b-MAL-ED         PERU                           1                    NA                -0.0139311   -0.0258436   -0.0020186
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    NA                -0.0138571   -0.0218891   -0.0058251
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    NA                -0.0264597   -0.0503501   -0.0025692
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0347922   -0.0443195   -0.0252649
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0525521   -0.0661090   -0.0389952
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    NA                -0.0048997   -0.0121237    0.0023244
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    NA                -0.0095108   -0.0140376   -0.0049840
12-24 months   ki1101329-Keneba          GAMBIA                         0                    NA                -0.0191072   -0.0292877   -0.0089268
12-24 months   ki1101329-Keneba          GAMBIA                         1                    NA                -0.0195871   -0.0238018   -0.0153725
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    NA                -0.0231563   -0.0349063   -0.0114062
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    NA                -0.0144328   -0.0205876   -0.0082781
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    NA                -0.0075097   -0.0135817   -0.0014378
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    NA                -0.0202569   -0.0222053   -0.0183085
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    NA                 0.0024601   -0.0203642    0.0252845
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    NA                -0.0099089   -0.0183914   -0.0014264


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0320043   -0.0644701    0.0004615
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0255097   -0.0638598    0.0128403
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.1578735   -0.1906434   -0.1251037
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.1008775   -0.1453661   -0.0563889
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0485757   -0.0876660   -0.0094853
0-3 months     ki1000109-EE              PAKISTAN                       NA                   NA                -0.3945273   -0.4372606   -0.3517940
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                 0.0038374   -0.0265594    0.0342341
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2889462   -0.3145198   -0.2633726
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                 0.0707032    0.0657297    0.0756767
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                 0.1109539    0.0661941    0.1557138
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0200415   -0.0431395    0.0030565
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0225157   -0.0491401    0.0041087
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0283266   -0.0028926    0.0595459
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0024150   -0.0406234    0.0357934
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0727901   -0.1056963   -0.0398840
3-6 months     ki1000109-EE              PAKISTAN                       NA                   NA                 0.0708495    0.0425982    0.0991009
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0357951   -0.0659472   -0.0056430
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0175712   -0.0368273    0.0016849
3-6 months     ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.1660455   -0.1856196   -0.1464714
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0042530   -0.0091354    0.0006295
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0807371   -0.0912604   -0.0702138
6-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0777727   -0.0900154   -0.0655300
6-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0486002   -0.0592412   -0.0379593
6-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0374212   -0.0515266   -0.0233158
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0517337   -0.0693851   -0.0340823
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1246447   -0.1406180   -0.1086713
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0862948   -0.0967898   -0.0757998
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0636171   -0.0716720   -0.0555623
6-12 months    ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0638477   -0.0730913   -0.0546041
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0753247   -0.0782379   -0.0724114
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0181403   -0.0236170   -0.0126636
12-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0097570   -0.0149006   -0.0046135
12-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0295235   -0.0345942   -0.0244528
12-24 months   ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0090124   -0.0160498   -0.0019751
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   NA                   NA                -0.0153199   -0.0229604   -0.0076795
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0396040   -0.0475364   -0.0316716
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0195347   -0.0234501   -0.0156192
12-24 months   ki1113344-GMS-Nepal       NEPAL                          NA                   NA                -0.0158588   -0.0213657   -0.0103518
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0189244   -0.0207907   -0.0170581
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0089754   -0.0170317   -0.0009191


### Parameter: ATE


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0531808   -0.0185076    0.1248691
0-3 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0242840   -0.1316705    0.0831024
0-3 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          1                    0                  0.0527250   -0.0243792    0.1298293
0-3 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.1146457   -0.1809077   -0.0483836
0-3 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           1                    0                  0.0075010   -0.0670322    0.0820342
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0697280   -0.0247810    0.1642370
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0954943    0.0104491    0.1805395
0-3 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE              PAKISTAN                       1                    0                 -0.0321417   -0.1668609    0.1025776
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                  0.1226279   -0.0401773    0.2854331
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE        BANGLADESH                     1                    0                  0.0116049   -0.0312295    0.0544392
0-3 months     ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         1                    0                  0.0364256   -0.0358563    0.1087074
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                  0.0431501    0.0270908    0.0592094
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     1                    0                  0.0385499   -0.0992736    0.1763734
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0377447   -0.0910048    0.0155155
3-6 months     ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0389383   -0.1125116    0.0346350
3-6 months     ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0313879   -0.0907046    0.0279289
3-6 months     ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0667546   -0.1209780   -0.0125312
3-6 months     ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           1                    0                 -0.0011748   -0.0684079    0.0660582
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0426897   -0.0544740    0.1398535
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0543395   -0.1288438    0.0201649
3-6 months     ki1000109-EE              PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE              PAKISTAN                       1                    0                  0.0367766   -0.0853004    0.1588537
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0872730   -0.2777247    0.1031787
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE        BANGLADESH                     1                    0                  0.0241664   -0.0136195    0.0619522
3-6 months     ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         1                    0                  0.0324097   -0.0246003    0.0894198
3-6 months     ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0376486   -0.0165545    0.0918516
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0396339   -0.0549066   -0.0243611
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0                  0.0075131   -0.0184875    0.0335136
6-12 months    ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         1                    0                 -0.0081689   -0.0463261    0.0299883
6-12 months    ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0238381   -0.0493062    0.0016300
6-12 months    ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          1                    0                 -0.0203567   -0.0419465    0.0012331
6-12 months    ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           1                    0                 -0.0021951   -0.0339114    0.0295212
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                  0.0091944   -0.0373318    0.0557206
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0060230   -0.0334455    0.0454915
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0                 -0.0764803   -0.1257902   -0.0271703
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0161237   -0.0315844   -0.0006630
6-12 months    ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA                         1                    0                 -0.0040030   -0.0256162    0.0176103
6-12 months    ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal       NEPAL                          1                    0                 -0.0203758   -0.0427616    0.0020101
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0010804   -0.0105320    0.0083713
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0                 -0.0050940   -0.0168489    0.0066608
12-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0                  0.0006437   -0.0214463    0.0227337
12-24 months   ki0047075b-MAL-ED         INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          1                    0                 -0.0143767   -0.0242508   -0.0045026
12-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0                  0.0040203   -0.0065188    0.0145595
12-24 months   ki0047075b-MAL-ED         PERU                           0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         PERU                           1                    0                 -0.0064452   -0.0210401    0.0081498
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0                 -0.0126026   -0.0378071    0.0126019
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0177598   -0.0343297   -0.0011900
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE        BANGLADESH                     1                    0                 -0.0046111   -0.0131363    0.0039141
12-24 months   ki1101329-Keneba          GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA                         1                    0                 -0.0004799   -0.0114983    0.0105385
12-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0                  0.0087234   -0.0045410    0.0219879
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0                 -0.0127472   -0.0191073   -0.0063870
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0                 -0.0123690   -0.0366730    0.0119350
