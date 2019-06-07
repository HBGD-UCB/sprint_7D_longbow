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

**Intervention Variable:** cleanck

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country        cleanck    ever_stunted   n_cell     n
---------------------------  -------------------------  -------------  --------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     0        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           1                     1        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     0        0     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU           0                     1        1     2
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          1                     1      121   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   296
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA          0                     1      147   296
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     0       94   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          1                     1      114   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     0       49   352
0-24 months (no birth st.)   ki1000108-IRC              INDIA          0                     1       95   352
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     0      341   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     1                     1      180   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     0       55   634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH     0                     1       58   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      199   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     1                     1      115   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      119   498
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH     0                     1       65   498
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     0        7   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          1                     1        2   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     0      164   477
0-24 months (no birth st.)   ki1113344-GMS-Nepal        NEPAL          0                     1      304   477
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     0        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           1                     1        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     0        0     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU           0                     1        1     2
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        0     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     1
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     1
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     0       96   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          1                     1       45   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     0       84   292
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA          0                     1       67   292
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     0      143   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          1                     1       65   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     0       87   352
0-6 months (no birth st.)    ki1000108-IRC              INDIA          0                     1       57   352
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     0      447   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     1                     1       74   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     0       86   634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH     0                     1       27   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      262   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     1                     1       52   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      150   498
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH     0                     1       34   498
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     0        9   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          1                     1        0   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     0      377   477
0-6 months (no birth st.)    ki1113344-GMS-Nepal        NEPAL          0                     1       91   477
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     0       21   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          1                     1       76   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     0        7   185
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA          0                     1       81   185
6-24 months                  ki1000108-IRC              INDIA          1                     0       94   230
6-24 months                  ki1000108-IRC              INDIA          1                     1       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     0       49   230
6-24 months                  ki1000108-IRC              INDIA          0                     1       38   230
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     0      285   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     1                     1      106   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     0       35   457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH     0                     1       31   457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     0      185   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     1                     1       63   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     0      118   397
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH     0                     1       31   397
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     0        6   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          1                     1        2   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     0      159   380
6-24 months                  ki1113344-GMS-Nepal        NEPAL          0                     1      213   380


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
![](/tmp/1ab0374b-10d2-4d1c-80ce-e58d1734edac/58c683aa-0554-480c-b016-543361a274a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1ab0374b-10d2-4d1c-80ce-e58d1734edac/58c683aa-0554-480c-b016-543361a274a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.8485041   0.7887945   0.9082137
0-24 months (no birth st.)   ki1000108-IRC              INDIA        optimal              NA                0.5528739   0.4836624   0.6220855
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.3465213   0.3055675   0.3874750
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.3373623   0.2655438   0.4091809
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.2940985   0.2185509   0.3696462
0-6 months (no birth st.)    ki1000108-IRC              INDIA        optimal              NA                0.3047589   0.2415256   0.3679923
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.1417561   0.1117459   0.1717663
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2049875   0.1558987   0.2540764
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.7852790   0.7027434   0.8678147
6-24 months                  ki1000108-IRC              INDIA        optimal              NA                0.3233382   0.2400863   0.4065901
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.2712559   0.2270488   0.3154631
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.2077277   0.1471825   0.2682729


### Parameter: E(Y)


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   ki1000108-IRC              INDIA        observed             NA                0.5937500   0.5423701   0.6451299
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.3614458   0.3192090   0.4036825
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    ki1000108-IRC              INDIA        observed             NA                0.3465909   0.2968062   0.3963756
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.1726908   0.1394601   0.2059214
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.8486486   0.7968646   0.9004327
6-24 months                  ki1000108-IRC              INDIA        observed             NA                0.3782609   0.3154507   0.4410711
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.2367758   0.1949066   0.2786451


### Parameter: RR


agecat                       studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.0670607   1.0209073   1.1153006
0-24 months (no birth st.)   ki1000108-IRC              INDIA        observed             optimal           1.0739338   0.9889367   1.1662362
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.0833226   1.0260625   1.1437782
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.0713875   0.9057877   1.2672628
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.3041943   1.0679916   1.5926368
0-6 months (no birth st.)    ki1000108-IRC              INDIA        observed             optimal           1.1372626   0.9896936   1.3068349
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.1238032   1.0105982   1.2496892
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           0.8424452   0.7120817   0.9966748
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.0806969   1.0136066   1.1522280
6-24 months                  ki1000108-IRC              INDIA        observed             optimal           1.1698614   0.9686879   1.4128139
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.1051598   1.0280554   1.1880472
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.1398375   0.8991230   1.4449964


### Parameter: PAR


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0569013    0.0203915   0.0934110
0-24 months (no birth st.)   ki1000108-IRC              INDIA        optimal              NA                 0.0408761   -0.0045038   0.0862559
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0288731    0.0100768   0.0476693
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0240834   -0.0323820   0.0805488
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0894631    0.0303424   0.1485839
0-6 months (no birth st.)    ki1000108-IRC              INDIA        optimal              NA                 0.0418320   -0.0004841   0.0841481
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0175499    0.0022979   0.0328018
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.0322968   -0.0665551   0.0019616
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0633696    0.0145025   0.1122367
6-24 months                  ki1000108-IRC              INDIA        optimal              NA                 0.0549227   -0.0063185   0.1161639
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0285252    0.0088257   0.0482247
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0290481   -0.0206538   0.0787501


### Parameter: PAF


agecat                       studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0628462    0.0204792    0.1033807
0-24 months (no birth st.)   ki1000108-IRC              INDIA        optimal              NA                 0.0688439   -0.0111871    0.1425408
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0769139    0.0254005    0.1257046
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0666308   -0.1040115    0.2108977
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.2332431    0.0636631    0.3721105
0-6 months (no birth st.)    ki1000108-IRC              INDIA        optimal              NA                 0.1206956   -0.0104137    0.2347924
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.1101645    0.0104871    0.1998010
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                -0.1870209   -0.4043332   -0.0033363
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0746712    0.0134239    0.1321162
6-24 months                  ki1000108-IRC              INDIA        optimal              NA                 0.1451979   -0.0323242    0.2921927
6-24 months                  ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0951535    0.0272898    0.1582826
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.1226819   -0.1121949    0.3079567
