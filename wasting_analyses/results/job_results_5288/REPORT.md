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
![](/tmp/635f5294-8f37-4528-9724-1ab969b31343/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/635f5294-8f37-4528-9724-1ab969b31343/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/635f5294-8f37-4528-9724-1ab969b31343/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/635f5294-8f37-4528-9724-1ab969b31343/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5285244   0.4654752   0.5915735
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3772004   0.3101893   0.4442115
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                0.5162597   0.4528856   0.5796338
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                0.5354604   0.4774342   0.5934865
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2495310   0.1756492   0.3234128
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1610171   0.1307471   0.1912870
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1505001   0.1063791   0.1946212
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1032627   0.0723856   0.1341397
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.5445736   0.5015631   0.5875842
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3333333   0.0250610   0.6416057
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3785851   0.3154486   0.4417217
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2654492   0.2033297   0.3275687
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                0.3231145   0.2614678   0.3847612
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                0.4168236   0.3569503   0.4766969
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0806562   0.0332604   0.1280520
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0472371   0.0296267   0.0648476
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2862639   0.2285332   0.3439946
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2292621   0.1701096   0.2884147
6-24 months                   ki1000108-IRC              INDIA        0                    NA                0.3190807   0.2549662   0.3831952
6-24 months                   ki1000108-IRC              INDIA        1                    NA                0.2640495   0.2091059   0.3189931
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2576578   0.1743273   0.3409883
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1402836   0.1101305   0.1704367
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1268561   0.0817111   0.1720011
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1058445   0.0731659   0.1385232


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
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7136859   0.5766704   0.8832560
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    0                 1.0371919   0.8822420   1.2193559
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6452788   0.4553336   0.9144608
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.6861301   0.4512751   1.0432096
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.6120996   0.2419453   1.5485566
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7011612   0.5261593   0.9343691
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    0                 1.2900183   1.0163281   1.6374114
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5856600   0.2917793   1.1755379
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8008768   0.5790658   1.1076525
6-24 months                   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA        1                    0                 0.8275321   0.6214707   1.1019173
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5444572   0.3693904   0.8024941
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8343671   0.5213034   1.3354382


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0774374   -0.1198475   -0.0350273
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                 0.0050436   -0.0435204    0.0536076
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0719473   -0.1366740   -0.0072206
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0200654   -0.0530263    0.0128956
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0036213   -0.0094508    0.0022082
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0700137   -0.1112185   -0.0288089
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                 0.0180928   -0.0315991    0.0677847
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0279476   -0.0692862    0.0133911
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0208484   -0.0567272    0.0150305
6-24 months                   ki1000108-IRC              INDIA        0                    NA                -0.0090807   -0.0561881    0.0380267
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0966822   -0.1699221   -0.0234422
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0069992   -0.0409719    0.0269735


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1716684   -0.2736668   -0.0778384
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                 0.0096749   -0.0878534    0.0984597
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.4051459   -0.8185288   -0.0857320
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1538344   -0.4366898    0.0733324
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0066942   -0.0175464    0.0040422
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2268963   -0.3737662   -0.0957282
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                 0.0530260   -0.1029025    0.1869092
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5302273   -1.5328759    0.0755190
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0785499   -0.2231542    0.0489590
6-24 months                   ki1000108-IRC              INDIA        0                    NA                -0.0292925   -0.1933072    0.1121791
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.6006014   -1.1190988   -0.2089691
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0583963   -0.3823402    0.1896331
