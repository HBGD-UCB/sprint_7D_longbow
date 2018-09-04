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

**Outcome Variable:** sstunted

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

agecat      studyid                    country        cleanck    sstunted   n_cell      n
----------  -------------------------  -------------  --------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          PERU           0                 0        1      2
Birth       ki0047075b-MAL-ED          PERU           0                 1        0      2
Birth       ki0047075b-MAL-ED          PERU           1                 0        1      2
Birth       ki0047075b-MAL-ED          PERU           1                 1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        1      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                 0       50     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0                 1        2     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                 0       37     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1                 1        1     90
Birth       ki1000108-IRC              INDIA          0                 0      154    378
Birth       ki1000108-IRC              INDIA          0                 1        6    378
Birth       ki1000108-IRC              INDIA          1                 0      209    378
Birth       ki1000108-IRC              INDIA          1                 1        9    378
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                 0        7     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0                 1        1     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                 0       12     20
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1                 1        0     20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                 0      178    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                 1       28    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                 0      149    369
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                 1       14    369
6 months    ki1000108-IRC              INDIA          0                 0      154    398
6 months    ki1000108-IRC              INDIA          0                 1       14    398
6 months    ki1000108-IRC              INDIA          1                 0      216    398
6 months    ki1000108-IRC              INDIA          1                 1       14    398
6 months    ki1017093b-PROVIDE         BANGLADESH     0                 0       94    583
6 months    ki1017093b-PROVIDE         BANGLADESH     0                 1        7    583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                 0      475    583
6 months    ki1017093b-PROVIDE         BANGLADESH     1                 1        7    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                 0      211    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                 1        5    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                 0      318    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                 1       11    545
6 months    ki1113344-GMS-Nepal        NEPAL          0                 0      956   1008
6 months    ki1113344-GMS-Nepal        NEPAL          0                 1       36   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1                 0       16   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1                 1        0   1008
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                 0        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                 1        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                 0        1      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                 1        0      1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                 0      121    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                 1       88    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                 0      128    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                 1       35    372
24 months   ki1000108-IRC              INDIA          0                 0      150    400
24 months   ki1000108-IRC              INDIA          0                 1       19    400
24 months   ki1000108-IRC              INDIA          1                 0      210    400
24 months   ki1000108-IRC              INDIA          1                 1       21    400
24 months   ki1017093b-PROVIDE         BANGLADESH     0                 0       76    577
24 months   ki1017093b-PROVIDE         BANGLADESH     0                 1       22    577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                 0      452    577
24 months   ki1017093b-PROVIDE         BANGLADESH     1                 1       27    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                 0      200    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                 1       11    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                 0      190    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                 1        9    410
24 months   ki1113344-GMS-Nepal        NEPAL          0                 0      784    892
24 months   ki1113344-GMS-Nepal        NEPAL          0                 1       94    892
24 months   ki1113344-GMS-Nepal        NEPAL          1                 0       14    892
24 months   ki1113344-GMS-Nepal        NEPAL          1                 1        0    892


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
![](/tmp/f6ccecd1-6060-401b-a9cf-de6a671a9ddb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f6ccecd1-6060-401b-a9cf-de6a671a9ddb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f6ccecd1-6060-401b-a9cf-de6a671a9ddb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f6ccecd1-6060-401b-a9cf-de6a671a9ddb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.0375000   0.0080233   0.0669767
Birth       ki1000108-IRC              INDIA        1                    NA                0.0412844   0.0148400   0.0677288
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1359223   0.0890598   0.1827848
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0858896   0.0428158   0.1289634
6 months    ki1000108-IRC              INDIA        0                    NA                0.0833333   0.0414872   0.1251794
6 months    ki1000108-IRC              INDIA        1                    NA                0.0608696   0.0299315   0.0918077
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0693069   0.0197332   0.1188807
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0145228   0.0038336   0.0252120
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0334347   0.0139917   0.0528776
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.4210526   0.3540260   0.4880792
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2147239   0.1516006   0.2778473
24 months   ki1000108-IRC              INDIA        0                    NA                0.1124260   0.0647408   0.1601113
24 months   ki1000108-IRC              INDIA        1                    NA                0.0909091   0.0537904   0.1280278
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2244898   0.1418092   0.3071704
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0563674   0.0356959   0.0770390
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0521327   0.0221020   0.0821634
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0452261   0.0163195   0.0741327


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.0396825   0.0199772   0.0593879
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0703518   0.0451953   0.0955082
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0293578   0.0151725   0.0435431
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA        NA                   NA                0.1000000   0.0705637   0.1294363
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0487805   0.0279044   0.0696566


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA        1                    0                 1.1009174   0.3993811   3.0347432
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.6319018   0.3438312   1.1613255
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.7304348   0.3575055   1.4923824
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.2095436   0.0750832   0.5847978
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.4443769   0.5084549   4.1030675
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.5099693   0.3650530   0.7124136
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.8086124   0.4488010   1.4568909
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.2510913   0.1493166   0.4222360
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8675194   0.3669417   2.0509796


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                 0.0021825   -0.0206565    0.0250216
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0221012   -0.0503324    0.0061300
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0129816   -0.0430753    0.0171121
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0452932   -0.0872545   -0.0033319
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0062097   -0.0106651    0.0230844
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0904075   -0.1320737   -0.0487412
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0124260   -0.0473394    0.0224874
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1395678   -0.2105059   -0.0686297
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0033522   -0.0235863    0.0168818


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                 0.0550000   -0.7364417    0.4857155
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1941748   -0.4645364    0.0262766
6 months    ki1000108-IRC              INDIA        0                    NA                -0.1845238   -0.6937111    0.1715844
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.8861386   -3.8445706   -0.7194086
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.2115162   -0.6165433    0.6154098
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2734275   -0.4076501   -0.1520033
24 months   ki1000108-IRC              INDIA        0                    NA                -0.1242604   -0.5317178    0.1748079
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.6434819   -2.5425694   -0.9725786
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0687204   -0.5741547    0.2744276
