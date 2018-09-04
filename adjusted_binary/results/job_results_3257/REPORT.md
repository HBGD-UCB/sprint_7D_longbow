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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_nrooms
* W_nhh
* W_nchldlt5
* W_parity
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country        cleanck    ever_stunted   n_cell     n
---------------------------  -------------------------  -------------  --------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     0        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     1        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     0        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     1        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     1      147   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     1      121   296
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     0       49   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     1       95   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     0       94   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     1      114   352
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     0       55   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     1       58   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     0      341   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     1      180   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      119   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     1       65   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      199   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     1      115   498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     0      328   954
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     1      608   954
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     0       14   954
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     1        4   954
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     0        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     1        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     0        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     1        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     0       84   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     1       67   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     0       96   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     1       45   292
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     0       87   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     1       57   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     0      143   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     1       65   352
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     0       86   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     1       27   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     0      447   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     1       74   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      150   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     1       34   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      262   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     1       52   498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     0      754   954
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     1      182   954
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     0       18   954
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     1        0   954
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     1       81   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     1       76   185
6-24 months                  ki1000108-IRC              INDIA          0                     0       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     1       38   230
6-24 months                  ki1000108-IRC              INDIA          1                     0       94   230
6-24 months                  ki1000108-IRC              INDIA          1                     1       49   230
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     0       35   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     1       31   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     0      285   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     1      106   457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     0      118   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     1       31   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     0      185   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     1       63   397
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     0      318   760
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     1      426   760
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     0       12   760
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     1        4   760


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a553cad3-5a55-4973-b972-34aa41ae97ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a553cad3-5a55-4973-b972-34aa41ae97ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a553cad3-5a55-4973-b972-34aa41ae97ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a553cad3-5a55-4973-b972-34aa41ae97ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.9545455   0.9215913   0.9874996
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.8521127   0.7936266   0.9105988
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    NA                0.6037854   0.5364125   0.6711583
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    NA                0.5148486   0.4520279   0.5776693
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5153838   0.4231791   0.6075885
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3450748   0.3042280   0.3859216
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.4098223   0.3564414   0.4632032
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3768899   0.3296228   0.4241570
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4456115   0.3724051   0.5188179
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3119838   0.2416854   0.3822821
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    NA                0.3730645   0.3048535   0.4412755
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    NA                0.2929568   0.2351439   0.3507697
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2515620   0.1765390   0.3265850
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1421176   0.1121972   0.1720381
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1832123   0.1342060   0.2322185
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1718091   0.1320481   0.2115701
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.9204545   0.8637664   0.9771427
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7835052   0.7013218   0.8656885
6-24 months                  ki1000108-IRC              INDIA        0                    NA                0.4337583   0.3321050   0.5354116
6-24 months                  ki1000108-IRC              INDIA        1                    NA                0.3433289   0.2666830   0.4199748
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5479149   0.4469697   0.6488601
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2730588   0.2292306   0.3168871
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2033315   0.1475241   0.2591390
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2520198   0.2005983   0.3034413


### Parameter: E(Y)


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA        NA                   NA                0.5937500   0.5423701   0.6451299
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3614458   0.3192090   0.4036825
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA        NA                   NA                0.3465909   0.2968062   0.3963756
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1726908   0.1394601   0.2059214
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months                  ki1000108-IRC              INDIA        NA                   NA                0.3782609   0.3154507   0.4410711
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2367758   0.1949066   0.2786451


### Parameter: RR


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8926895   0.8266727   0.9639783
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA        1                    0                 0.8527013   0.7236706   1.0047381
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6695492   0.5403360   0.8296618
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9196422   0.7720633   1.0954307
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7001251   0.5304749   0.9240307
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA        1                    0                 0.7852712   0.6016655   1.0249063
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5649407   0.3923327   0.8134882
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9377599   0.6603161   1.3317767
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8512155   0.7537264   0.9613141
6-24 months                  ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1000108-IRC              INDIA        1                    0                 0.7915212   0.5751566   1.0892785
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.4983599   0.3903411   0.6362707
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.2394525   0.8824325   1.7409177


### Parameter: PAR


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0491400   -0.0818701   -0.0164100
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    NA                -0.0100354   -0.0631288    0.0430581
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1399895   -0.2229842   -0.0569947
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0483765   -0.0926175   -0.0041356
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0620499   -0.1117221   -0.0123777
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    NA                -0.0264736   -0.0777284    0.0247812
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0922560   -0.1581920   -0.0263200
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0105215   -0.0493035    0.0282605
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0718059   -0.1250781   -0.0185337
6-24 months                  ki1000108-IRC              INDIA        0                    NA                -0.0554974   -0.1335490    0.0225541
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.2481337   -0.3406644   -0.1556031
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0334443   -0.0131785    0.0800670


### Parameter: PAF


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0542741   -0.0921357   -0.0177250
0-24 months (no birth st.)   ki1000108-IRC              INDIA        0                    NA                -0.0169017   -0.1106535    0.0689364
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.3729132   -0.6151778   -0.1669865
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1338417   -0.2682754   -0.0136577
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1617729   -0.3022178   -0.0364750
0-6 months (no birth st.)    ki1000108-IRC              INDIA        0                    NA                -0.0763828   -0.2364834    0.0629878
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5791120   -1.0524073   -0.2149609
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0609268   -0.3125767    0.1424763
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0846120   -0.1517055   -0.0214272
6-24 months                  ki1000108-IRC              INDIA        0                    NA                -0.1467174   -0.3736303    0.0427114
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.8277162   -1.1914583   -0.5243486
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.1412487   -0.0754859    0.3143065
