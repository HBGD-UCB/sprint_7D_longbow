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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** cleanck

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country        cleanck    stunted   n_cell      n
----------  -------------------------  -------------  --------  --------  -------  -----
Birth       ki0047075b-MAL-ED          PERU           0                0        1      2
Birth       ki0047075b-MAL-ED          PERU           0                1        0      2
Birth       ki0047075b-MAL-ED          PERU           1                0        1      2
Birth       ki0047075b-MAL-ED          PERU           1                1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                0        1      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                0        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                1        1      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                0       40     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                1       12     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                0       34     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                1        4     90
Birth       ki1000108-IRC              INDIA          0                0      138    378
Birth       ki1000108-IRC              INDIA          0                1       22    378
Birth       ki1000108-IRC              INDIA          1                0      197    378
Birth       ki1000108-IRC              INDIA          1                1       21    378
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                0        6     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                1        2     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                0       11     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                1        1     20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                0      135    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                1       71    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                0      123    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                1       40    369
6 months    ki1000108-IRC              INDIA          0                0      119    398
6 months    ki1000108-IRC              INDIA          0                1       49    398
6 months    ki1000108-IRC              INDIA          1                0      181    398
6 months    ki1000108-IRC              INDIA          1                1       49    398
6 months    ki1017093b-PROVIDE         BANGLADESH     0                0       76    583
6 months    ki1017093b-PROVIDE         BANGLADESH     0                1       25    583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                0      413    583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                1       69    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                0      179    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                1       37    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                0      264    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                1       65    545
6 months    ki1113344-GMS-Nepal        NEPAL          0                0      778   1008
6 months    ki1113344-GMS-Nepal        NEPAL          0                1      214   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1                0       16   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1                1        0   1008
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                0        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                1        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                0        1      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                1        0      1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                0       39    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                1      170    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                0       67    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                1       96    372
24 months   ki1000108-IRC              INDIA          0                0       89    400
24 months   ki1000108-IRC              INDIA          0                1       80    400
24 months   ki1000108-IRC              INDIA          1                0      144    400
24 months   ki1000108-IRC              INDIA          1                1       87    400
24 months   ki1017093b-PROVIDE         BANGLADESH     0                0       49    577
24 months   ki1017093b-PROVIDE         BANGLADESH     0                1       49    577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                0      338    577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                1      141    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                0      167    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                1       44    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                0      156    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                1       43    410
24 months   ki1113344-GMS-Nepal        NEPAL          0                0      474    892
24 months   ki1113344-GMS-Nepal        NEPAL          0                1      404    892
24 months   ki1113344-GMS-Nepal        NEPAL          1                0       14    892
24 months   ki1113344-GMS-Nepal        NEPAL          1                1        0    892


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0a86ec49-56c6-40de-b8f0-9bfd5f90d1b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0a86ec49-56c6-40de-b8f0-9bfd5f90d1b3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0a86ec49-56c6-40de-b8f0-9bfd5f90d1b3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0a86ec49-56c6-40de-b8f0-9bfd5f90d1b3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.1375000   0.0840689   0.1909311
Birth       ki1000108-IRC              INDIA        1                    NA                0.0963303   0.0571126   0.1355479
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3446602   0.2796723   0.4096481
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2453988   0.1792475   0.3115501
6 months    ki1000108-IRC              INDIA        0                    NA                0.2916667   0.2228487   0.3604847
6 months    ki1000108-IRC              INDIA        1                    NA                0.2130435   0.1600601   0.2660269
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2475248   0.1632853   0.3317642
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1431535   0.1118603   0.1744467
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1712963   0.1210049   0.2215877
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1975684   0.1545047   0.2406321
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8133971   0.7605076   0.8662867
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5889571   0.5133218   0.6645923
24 months   ki1000108-IRC              INDIA        0                    NA                0.4733728   0.3980022   0.5487433
24 months   ki1000108-IRC              INDIA        1                    NA                0.3766234   0.3140608   0.4391859
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5000000   0.4009210   0.5990790
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2943633   0.2535135   0.3352130
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2085308   0.1536476   0.2634140
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2160804   0.1588278   0.2733330


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.1137566   0.0817056   0.1458077
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2462312   0.2038529   0.2886094
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1871560   0.1543801   0.2199318
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4175000   0.3691120   0.4658880
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2121951   0.1725707   0.2518196


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.7005838   0.3990602   1.2299340
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7120021   0.5124039   0.9893503
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.7304348   0.5184407   1.0291148
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5783402   0.3859382   0.8666607
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.1533722   0.8001389   1.6625457
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7240707   0.6269982   0.8361722
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.7956169   0.6320824   1.0014615
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5887265   0.4622210   0.7498554
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0362037   0.7132692   1.5053479


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0237434   -0.0620229    0.0145361
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0438472   -0.0851190   -0.0025754
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0454355   -0.0957711    0.0049001
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0862898   -0.1606549   -0.0119246
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0158597   -0.0241236    0.0558430
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0983434   -0.1403411   -0.0563456
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0558728   -0.1126347    0.0008891
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1707106   -0.2599014   -0.0815198
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0036643   -0.0348316    0.0421603


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.2087209   -0.5920324    0.0823012
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1457623   -0.2914859   -0.0164812
6 months    ki1000108-IRC              INDIA        0                    NA                -0.1845238   -0.4069843    0.0027631
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5351801   -1.0672586   -0.1400499
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0847404   -0.1555108    0.2750391
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1375328   -0.2010248   -0.0773973
24 months   ki1000108-IRC              INDIA        0                    NA                -0.1338270   -0.2788933   -0.0052158
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5184211   -0.8188757   -0.2675976
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0172686   -0.1819580    0.1829143
