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
![](/tmp/063b2b7b-49c5-4187-adc6-a3d2387b3e3a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/063b2b7b-49c5-4187-adc6-a3d2387b3e3a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.8538736   0.7953871   0.9123601
0-24 months (no birth st.)   ki1000108-IRC              INDIA        optimal              NA                0.5441080   0.4800453   0.6081706
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.3452113   0.3047403   0.3856824
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2431021   0.1967809   0.2894234
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.3134572   0.2441162   0.3827982
0-6 months (no birth st.)    ki1000108-IRC              INDIA        optimal              NA                0.2177426   0.1638819   0.2716032
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.1422754   0.1123713   0.1721795
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.1108034   0.0759966   0.1456101
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.7835967   0.7014134   0.8657801
6-24 months                  ki1000108-IRC              INDIA        optimal              NA                0.3412387   0.2656334   0.4168439
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.2717278   0.2279734   0.3154822
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2162297   0.1605125   0.2719470


### Parameter: E(Y)


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.9056254   0.8722296   0.9390212
0-24 months (no birth st.)   ki1000108-IRC              INDIA        observed             NA                0.5962935   0.5449136   0.6476734
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.3763399   0.3386180   0.4140617
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.3755064   0.3332697   0.4177431
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.3856069   0.3297387   0.4414750
0-6 months (no birth st.)    ki1000108-IRC              INDIA        observed             NA                0.3542845   0.3044998   0.4040692
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.1589851   0.1304762   0.1874941
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.1766446   0.1434140   0.2098753
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.8485420   0.7967579   0.9003261
6-24 months                  ki1000108-IRC              INDIA        observed             NA                0.3776877   0.3148775   0.4404979
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.3004789   0.2584271   0.3425307
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.2378615   0.1959922   0.2797308


### Parameter: RR


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          0.9428552   0.9036456   0.9837661
0-24 months (no birth st.)   ki1000108-IRC              INDIA        optimal              observed          0.9124835   0.8471647   0.9828386
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   optimal              observed          0.9172861   0.8693273   0.9678907
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          0.6473980   0.5585375   0.7503959
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          0.8128931   0.6884470   0.9598346
0-6 months (no birth st.)    ki1000108-IRC              INDIA        optimal              observed          0.6145981   0.5097234   0.7410504
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   optimal              observed          0.8948976   0.8055827   0.9941148
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          0.6272671   0.4926718   0.7986329
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        optimal              observed          0.9234625   0.8663774   0.9843089
6-24 months                  ki1000108-IRC              INDIA        optimal              observed          0.9034942   0.7855767   1.0391115
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   optimal              observed          0.9043156   0.8421846   0.9710303
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   optimal              observed          0.9090572   0.7353370   1.1238181
