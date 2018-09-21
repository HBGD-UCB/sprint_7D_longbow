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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                    country        cleanck    ever_wasted   n_cell      n
----------------------------  -------------------------  -------------  --------  ------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                    0        1      2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                    1        0      2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                    0        1      2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                    1        0      2
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        1      3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0      3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        2      3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0      3
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       98    368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                    1      107    368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                    0      104    368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       59    368
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                    0       84    399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                    1       85    399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                    0      107    399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                    1      123    399
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                    0       94    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                    1       32    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                    0      471    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                    1       90    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                    0      181    575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       36    575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                    0      319    575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       39    575
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                    0      470   1050
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                    1      562   1050
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                    0       12   1050
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                    1        6   1050
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                    0        1      2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                    1        0      2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                    0        1      2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                    1        0      2
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        1      3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0      3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        2      3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0      3
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                    0      125    350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                    1       68    350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                    0      117    350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                    1       40    350
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                    0      115    381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                    1       44    381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                    0      136    381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                    1       86    381
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                    0      116    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                    1       10    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                    0      531    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                    1       26    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                    0      208    572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                    1        9    572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                    0      351    572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                    1        4    572
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                    0      850   1012
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                    1      146   1012
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                    0       12   1012
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                    1        4   1012
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0      1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0      1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        1      1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0      1
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                    0      146    373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                    1       64    373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                    0      128    373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       35    373
6-24 months                   ki1000108-IRC              INDIA          0                    0      110    400
6-24 months                   ki1000108-IRC              INDIA          0                    1       59    400
6-24 months                   ki1000108-IRC              INDIA          1                    0      166    400
6-24 months                   ki1000108-IRC              INDIA          1                    1       65    400
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                    0       79    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                    1       28    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                    0      437    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                    1       71    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                    0      186    559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       30    559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                    0      306    559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       37    559
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                    0      538   1058
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                    1      504   1058
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                    0       12   1058
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                    1        4   1058


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/57acd453-4847-4a45-9376-056e0dc57d20/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/57acd453-4847-4a45-9376-056e0dc57d20/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/57acd453-4847-4a45-9376-056e0dc57d20/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/57acd453-4847-4a45-9376-056e0dc57d20/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5332239   0.4701452   0.5963026
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3770861   0.3100083   0.4441639
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                0.5154103   0.4509727   0.5798479
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                0.5344291   0.4757277   0.5931305
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2488909   0.1763316   0.3214502
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1610231   0.1308093   0.1912369
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1504513   0.1062068   0.1946959
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1032197   0.0723044   0.1341350
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.5445736   0.5015631   0.5875842
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3333333   0.0250610   0.6416057
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3790149   0.3159866   0.4420432
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2657222   0.2037113   0.3277330
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                0.3206889   0.2577799   0.3835980
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                0.4146026   0.3540277   0.4751775
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0805528   0.0331628   0.1279428
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0472600   0.0296504   0.0648697
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2877108   0.2305500   0.3448715
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2307153   0.1721137   0.2893169
6-24 months                   ki1000108-IRC              INDIA        0                    NA                0.3196106   0.2559340   0.3832872
6-24 months                   ki1000108-IRC              INDIA        1                    NA                0.2655463   0.2109543   0.3201384
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2577727   0.1751585   0.3403868
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1402759   0.1101279   0.1704240
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1267729   0.0818538   0.1716920
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1057865   0.0731547   0.1384183


### Parameter: E(Y)


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA        NA                   NA                0.5213033   0.4722258   0.5703807
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1304348   0.1028836   0.1579859
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.5409524   0.4982855   0.5836193
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA        NA                   NA                0.3412073   0.2935379   0.3888768
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0527086   0.0359384   0.0694789
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA        NA                   NA                0.3100000   0.2646197   0.3553803
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1198569   0.0929081   0.1468057


### Parameter: RR


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7071815   0.5715164   0.8750505
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    0                 1.0369003   0.8793479   1.2226813
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6469625   0.4588029   0.9122882
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.6860672   0.4507811   1.0441613
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.6120996   0.2419453   1.5485566
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7010863   0.5265530   0.9334711
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    0                 1.2928500   1.0127407   1.6504333
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5866960   0.2921716   1.1781167
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8019000   0.5829165   1.1031488
6-24 months                   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA        1                    0                 0.8308433   0.6280463   1.0991238
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5441847   0.3701163   0.8001187
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8344569   0.5220552   1.3338020


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0821370   -0.1247378   -0.0395361
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                 0.0058929   -0.0433949    0.0551807
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0713072   -0.1347450   -0.0078695
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0200165   -0.0530311    0.0129981
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0036213   -0.0094508    0.0022082
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0704435   -0.1116124   -0.0292746
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                 0.0205184   -0.0299275    0.0709644
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0278442   -0.0691652    0.0134769
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0222952   -0.0578511    0.0132607
6-24 months                   ki1000108-IRC              INDIA        0                    NA                -0.0096106   -0.0558016    0.0365804
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0967971   -0.1693649   -0.0242292
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0069160   -0.0407120    0.0268800


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1820868   -0.2849270   -0.0874775
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                 0.0113043   -0.0877518    0.1013398
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.4015414   -0.8062500   -0.0875119
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1534601   -0.4366668    0.0739188
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0066942   -0.0175464    0.0040422
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2282890   -0.3751941   -0.0970770
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                 0.0601348   -0.0984902    0.1958540
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5282656   -1.5304870    0.0770173
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0840011   -0.2274945    0.0427180
6-24 months                   ki1000108-IRC              INDIA        0                    NA                -0.0310019   -0.1915628    0.1079237
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.6013151   -1.1149165   -0.2124403
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0577023   -0.3798319    0.1892243
