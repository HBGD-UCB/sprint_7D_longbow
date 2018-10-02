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
![](/tmp/c8b31bcd-010b-426b-9394-e466fd9b85f0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c8b31bcd-010b-426b-9394-e466fd9b85f0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c8b31bcd-010b-426b-9394-e466fd9b85f0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c8b31bcd-010b-426b-9394-e466fd9b85f0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.2644244   0.1985428   0.3303060
Birth       ki1000108-IRC              INDIA        1                    NA                0.1756336   0.1243609   0.2269062
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1428329   0.0951078   0.1905581
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0961060   0.0504678   0.1417443
6 months    ki1000108-IRC              INDIA        0                    NA                0.1116076   0.0641485   0.1590667
6 months    ki1000108-IRC              INDIA        1                    NA                0.1482454   0.1021666   0.1943242
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0891089   0.0334987   0.1447191
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0311850   0.0156382   0.0467319
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0231481   0.0030761   0.0432202
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0243161   0.0076570   0.0409752
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0813397   0.0442299   0.1184495
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078646   0.0657550
24 months   ki1000108-IRC              INDIA        0                    NA                0.0947350   0.0506479   0.1388221
24 months   ki1000108-IRC              INDIA        1                    NA                0.0648480   0.0330264   0.0966696
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2564306   0.1801709   0.3326903
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0935124   0.0676736   0.1193512
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0837451   0.0464555   0.1210346
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0744558   0.0371263   0.1117853


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
Birth       ki1000108-IRC              INDIA        1                    0                 0.6642109   0.4517995   0.9764864
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.6728561   0.3764150   1.2027559
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 1.3282732   0.7843978   2.2492537
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.3499653   0.1574463   0.7778893
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0504559   0.3478863   3.1718912
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.4525442   0.1823217   1.1232685
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.6845199   0.3481800   1.3457623
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.3646694   0.2430651   0.5471120
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8890766   0.4550618   1.7370324


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0003294   -0.0476050    0.0469462
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0178329   -0.0469277    0.0112618
6 months    ki1000108-IRC              INDIA        0                    NA                 0.0215582   -0.0164859    0.0596023
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0478718   -0.0956271   -0.0001165
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0007051   -0.0150416    0.0164517
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0195118   -0.0402558    0.0012323
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0172350   -0.0486404    0.0141704
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1439738   -0.2103373   -0.0776103
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0056963   -0.0306949    0.0193023


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0012474   -0.1972645    0.1626777
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1426635   -0.3978528    0.0659390
6 months    ki1000108-IRC              INDIA        0                    NA                 0.1618899   -0.1755768    0.4024818
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.1608911   -2.5665897   -0.3092199
6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0295584   -0.9156610    0.5083906
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.3155814   -0.6723168   -0.0349442
24 months   ki1000108-IRC              INDIA        0                    NA                -0.2223876   -0.6954540    0.1186836
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.2802596   -1.9652524   -0.7535047
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0729840   -0.4451980    0.2033654
