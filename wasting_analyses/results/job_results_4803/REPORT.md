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

**Outcome Variable:** wasted

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

agecat      studyid                    country        cleanck    wasted   n_cell      n
----------  -------------------------  -------------  --------  -------  -------  -----
Birth       ki0047075b-MAL-ED          PERU           0               0        1      2
Birth       ki0047075b-MAL-ED          PERU           0               1        0      2
Birth       ki0047075b-MAL-ED          PERU           1               0        1      2
Birth       ki0047075b-MAL-ED          PERU           1               1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               0        1      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   0               1        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               0        0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA   1               1        1      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0               0       41     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          0               1       10     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1               0       33     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA          1               1        4     88
Birth       ki1000108-IRC              INDIA          0               0       91    337
Birth       ki1000108-IRC              INDIA          0               1       48    337
Birth       ki1000108-IRC              INDIA          1               0      157    337
Birth       ki1000108-IRC              INDIA          1               1       41    337
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               0        5     17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     0               1        1     17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1               0       10     17
Birth       ki1017093c-NIH-Crypto      BANGLADESH     1               1        1     17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               1        0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               0        1      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1        0      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0               0      176    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          0               1       30    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1               0      146    368
6 months    ki1000108-CMC-V-BCS-2002   INDIA          1               1       16    368
6 months    ki1000108-IRC              INDIA          0               0      150    398
6 months    ki1000108-IRC              INDIA          0               1       19    398
6 months    ki1000108-IRC              INDIA          1               0      195    398
6 months    ki1000108-IRC              INDIA          1               1       34    398
6 months    ki1017093b-PROVIDE         BANGLADESH     0               0       92    582
6 months    ki1017093b-PROVIDE         BANGLADESH     0               1        9    582
6 months    ki1017093b-PROVIDE         BANGLADESH     1               0      466    582
6 months    ki1017093b-PROVIDE         BANGLADESH     1               1       15    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0               0      211    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     0               1        5    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1               0      321    545
6 months    ki1017093c-NIH-Crypto      BANGLADESH     1               1        8    545
6 months    ki1113344-GMS-Nepal        NEPAL          0               0      900   1008
6 months    ki1113344-GMS-Nepal        NEPAL          0               1       92   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1               0       16   1008
6 months    ki1113344-GMS-Nepal        NEPAL          1               1        0   1008
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               1        0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               0        1      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1        0      1
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0               0      192    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          0               1       17    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1               0      157    372
24 months   ki1000108-CMC-V-BCS-2002   INDIA          1               1        6    372
24 months   ki1000108-IRC              INDIA          0               0      153    400
24 months   ki1000108-IRC              INDIA          0               1       16    400
24 months   ki1000108-IRC              INDIA          1               0      216    400
24 months   ki1000108-IRC              INDIA          1               1       15    400
24 months   ki1017093b-PROVIDE         BANGLADESH     0               0       77    578
24 months   ki1017093b-PROVIDE         BANGLADESH     0               1       21    578
24 months   ki1017093b-PROVIDE         BANGLADESH     1               0      436    578
24 months   ki1017093b-PROVIDE         BANGLADESH     1               1       44    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0               0      193    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     0               1       18    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1               0      185    410
24 months   ki1017093c-NIH-Crypto      BANGLADESH     1               1       14    410
24 months   ki1113344-GMS-Nepal        NEPAL          0               0      718    890
24 months   ki1113344-GMS-Nepal        NEPAL          0               1      158    890
24 months   ki1113344-GMS-Nepal        NEPAL          1               0       12    890
24 months   ki1113344-GMS-Nepal        NEPAL          1               1        2    890


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
![](/tmp/2b3dc882-7bd4-4b21-bfe3-24920b152268/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b3dc882-7bd4-4b21-bfe3-24920b152268/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2b3dc882-7bd4-4b21-bfe3-24920b152268/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2b3dc882-7bd4-4b21-bfe3-24920b152268/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.2630909   0.1986260   0.3275557
Birth       ki1000108-IRC              INDIA        1                    NA                0.1739508   0.1232139   0.2246877
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1429227   0.0950192   0.1908263
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0960962   0.0503010   0.1418914
6 months    ki1000108-IRC              INDIA        0                    NA                0.1113507   0.0641373   0.1585641
6 months    ki1000108-IRC              INDIA        1                    NA                0.1485094   0.1024612   0.1945576
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0891089   0.0334987   0.1447191
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0311850   0.0156382   0.0467319
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0243161   0.0076570   0.0409752
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0813397   0.0442299   0.1184495
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078646   0.0657550
24 months   ki1000108-IRC              INDIA        0                    NA                0.0944494   0.0505680   0.1383309
24 months   ki1000108-IRC              INDIA        1                    NA                0.0649546   0.0331599   0.0967493
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2517691   0.1741998   0.3293384
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0931496   0.0673207   0.1189784
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0838070   0.0465294   0.1210846
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0744078   0.0372985   0.1115172


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.2640950   0.2169571   0.3112328
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA        NA                   NA                0.1331658   0.0997450   0.1665867
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0238532   0.0110305   0.0366759
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA        NA                   NA                0.0775000   0.0512641   0.1037359
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0780488   0.0520518   0.1040458


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.6611816   0.4510079   0.9692980
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.6723648   0.3754076   1.2042231
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 1.3337087   0.7887472   2.2551954
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.3499653   0.1574463   0.7778893
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0504559   0.3478863   3.1718912
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.4525442   0.1823217   1.1232685
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.6877182   0.3502371   1.3503890
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.3699802   0.2444967   0.5598659
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8878473   0.4554744   1.7306634


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                 0.0010041   -0.0453585    0.0473667
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0179227   -0.0471183    0.0112728
6 months    ki1000108-IRC              INDIA        0                    NA                 0.0218151   -0.0160618    0.0596921
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0478718   -0.0956271   -0.0001165
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0007051   -0.0150416    0.0164517
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0195118   -0.0402558    0.0012323
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0169494   -0.0481874    0.0142885
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1393123   -0.2068642   -0.0717605
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0057582   -0.0307253    0.0192088


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                 0.0038020   -0.1881305    0.1647295
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1433820   -0.3992851    0.0657213
6 months    ki1000108-IRC              INDIA        0                    NA                 0.1638194   -0.1717845    0.4033049
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.1608911   -2.5665897   -0.3092199
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0295584   -0.9156610    0.5083906
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.3155814   -0.6723168   -0.0349442
24 months   ki1000108-IRC              INDIA        0                    NA                -0.2187024   -0.6894232    0.1208624
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.2388083   -1.9314172   -0.7098427
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0737774   -0.4453891    0.2022923
