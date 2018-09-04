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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nhh
* W_nchldlt5
* W_parity
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
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
![](/tmp/b3c1202c-bc6a-46d4-8518-1fd5dc1f5571/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3c1202c-bc6a-46d4-8518-1fd5dc1f5571/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3c1202c-bc6a-46d4-8518-1fd5dc1f5571/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3c1202c-bc6a-46d4-8518-1fd5dc1f5571/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.1251254   0.0729871   0.1772636
Birth       ki1000108-IRC              INDIA        1                    NA                0.0915964   0.0530307   0.1301621
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3146532   0.2549624   0.3743440
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2056046   0.1474577   0.2637514
6 months    ki1000108-IRC              INDIA        0                    NA                0.2738876   0.2133860   0.3343892
6 months    ki1000108-IRC              INDIA        1                    NA                0.2049251   0.1554232   0.2544270
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2452160   0.1650068   0.3254251
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1429252   0.1117044   0.1741459
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1839387   0.1384662   0.2294113
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2044662   0.1634478   0.2454846
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8240138   0.7763694   0.8716582
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5990400   0.5296167   0.6684633
24 months   ki1000108-IRC              INDIA        0                    NA                0.4397284   0.3757572   0.5036995
24 months   ki1000108-IRC              INDIA        1                    NA                0.3532247   0.2965009   0.4099484
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5654685   0.4774876   0.6534494
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2981298   0.2575773   0.3386823
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.2656593   0.2156762   0.3156424
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.2643645   0.2149001   0.3138288


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
Birth       ki1000108-IRC              INDIA        1                    0                 0.7320371   0.4053272   1.3220883
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.6534323   0.4648675   0.9184849
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.7482088   0.5407995   1.0351646
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5828542   0.3937331   0.8628157
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.1115997   0.8114319   1.5228066
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7269781   0.6388366   0.8272806
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.8032792   0.6479629   0.9958249
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5272262   0.4292976   0.6474936
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9951260   0.7629455   1.2979639


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0113687   -0.0485823    0.0258448
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0138402   -0.0521856    0.0245052
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0276565   -0.0712602    0.0159473
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0839810   -0.1545277   -0.0134343
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0032172   -0.0331976    0.0396320
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1089601   -0.1488059   -0.0691142
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0222284   -0.0705162    0.0260595
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.2361791   -0.3154277   -0.1569305
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0534642   -0.0911287   -0.0157996


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0999391   -0.4776781    0.1812384
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0460094   -0.1820332    0.0743613
6 months    ki1000108-IRC              INDIA        0                    NA                -0.1123191   -0.3057371    0.0524481
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5208606   -1.0248036   -0.1423415
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0171901   -0.1974920    0.1933848
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1523802   -0.2142011   -0.0937069
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0532416   -0.1765264    0.0571246
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.7172387   -0.9920687   -0.4803248
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.2519576   -0.4582453   -0.0748520
