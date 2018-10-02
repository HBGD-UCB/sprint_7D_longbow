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

**Outcome Variable:** pers_wast

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
* W_parity
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_parity
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country        cleanck    pers_wast   n_cell      n
------------  -------------------------  -------------  --------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          PERU           0                  0        0      1
0-24 months   ki0047075b-MAL-ED          PERU           0                  1        0      1
0-24 months   ki0047075b-MAL-ED          PERU           1                  0        1      1
0-24 months   ki0047075b-MAL-ED          PERU           1                  1        0      1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1      2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0      2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1      2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0      2
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  0      193    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  1       17    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  0      157    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  1        6    373
0-24 months   ki1000108-IRC              INDIA          0                  0      148    400
0-24 months   ki1000108-IRC              INDIA          0                  1       21    400
0-24 months   ki1000108-IRC              INDIA          1                  0      204    400
0-24 months   ki1000108-IRC              INDIA          1                  1       27    400
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  0      105    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  1        6    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  0      520    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  1        9    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  0      210    559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  1        6    559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  0      335    559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  1        8    559
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                  0      894   1060
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                  1      150   1060
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                  0       14   1060
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                  1        2   1060
0-6 months    ki0047075b-MAL-ED          PERU           0                  0        0      1
0-6 months    ki0047075b-MAL-ED          PERU           0                  1        0      1
0-6 months    ki0047075b-MAL-ED          PERU           1                  0        1      1
0-6 months    ki0047075b-MAL-ED          PERU           1                  1        0      1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1      2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0      2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1      2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0      2
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                  0      165    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                  1       35    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                  0      143    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                  1       15    358
0-6 months    ki1000108-IRC              INDIA          0                  0      141    392
0-6 months    ki1000108-IRC              INDIA          0                  1       24    392
0-6 months    ki1000108-IRC              INDIA          1                  0      189    392
0-6 months    ki1000108-IRC              INDIA          1                  1       38    392
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                  0      107    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                  1        4    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                  0      516    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                  1       10    637
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                  0      840    972
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                  1      118    972
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                  0       10    972
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                  1        4    972
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        0      1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0      1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1      1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0      1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  0      189    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  1       21    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  0      156    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  1        7    373
6-24 months   ki1000108-IRC              INDIA          0                  0      146    400
6-24 months   ki1000108-IRC              INDIA          0                  1       23    400
6-24 months   ki1000108-IRC              INDIA          1                  0      206    400
6-24 months   ki1000108-IRC              INDIA          1                  1       25    400
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  0       90    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  1       13    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  0      473    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  1       25    601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  0      202    533
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  1       11    533
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  0      306    533
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  1       14    533
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                  0      826   1034
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                  1      192   1034
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                  0       14   1034
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                  1        2   1034


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/7ae13a47-804c-40e9-b5aa-7312b47ff1b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7ae13a47-804c-40e9-b5aa-7312b47ff1b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7ae13a47-804c-40e9-b5aa-7312b47ff1b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7ae13a47-804c-40e9-b5aa-7312b47ff1b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0809524   0.0440117   0.1178931
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078647   0.0657549
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.1141088   0.0660859   0.1621317
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.1073727   0.0681771   0.1465684
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0540541   0.0119549   0.0961532
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0170132   0.0059845   0.0280420
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0277778   0.0058426   0.0497130
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0233236   0.0073368   0.0393105
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1745471   0.1224072   0.2266869
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0937257   0.0487676   0.1386838
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.1424473   0.0902041   0.1946905
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.1652668   0.1175451   0.2129885
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1000000   0.0593704   0.1406296
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0429448   0.0117802   0.0741093
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.1233148   0.0736254   0.1730042
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.0976864   0.0597060   0.1356668
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1289060   0.0646148   0.1931972
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0499792   0.0308464   0.0691119
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0484394   0.0195847   0.0772941
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0429965   0.0206269   0.0653662


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1200000   0.0881145   0.1518855
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0250447   0.0120795   0.0380100
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.1581633   0.1219951   0.1943314
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.0750670   0.0482904   0.1018437
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.1200000   0.0881145   0.1518855
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0469043   0.0289377   0.0648710


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.4547095   0.1831858   1.1286937
0-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        1                    0                 0.9409679   0.5384117   1.6445047
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.3147448   0.1142567   0.8670329
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8396501   0.2951043   2.3890277
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.5369652   0.3055765   0.9435660
0-6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        1                    0                 1.1601963   0.7274058   1.8504875
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.4294479   0.1869451   0.9865223
6-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        1                    0                 0.7921706   0.4519909   1.3883779
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.3877179   0.2069355   0.7264348
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8876361   0.4024353   1.9578249


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0192902   -0.0399189    0.0013385
0-24 months   ki1000108-IRC              INDIA        0                    NA                 0.0058912   -0.0306346    0.0424170
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0306166   -0.0666048    0.0053717
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0027331   -0.0193887    0.0139226
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0348823   -0.0655123   -0.0042522
0-6 months    ki1000108-IRC              INDIA        0                    NA                 0.0157160   -0.0252537    0.0566856
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0249330   -0.0474937   -0.0023723
6-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0033148   -0.0399388    0.0333092
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0656781   -0.1213708   -0.0099853
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0015351   -0.0232217    0.0201516


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.3128364   -0.6687765   -0.0328162
0-24 months   ki1000108-IRC              INDIA        0                    NA                 0.0490931   -0.3096867    0.3095877
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.3063062   -3.2435650   -0.2534387
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1091270   -1.0160383    0.3898119
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2497569   -0.4837125   -0.0526921
0-6 months    ki1000108-IRC              INDIA        0                    NA                 0.0993655   -0.1994594    0.3237432
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.3321428   -0.6457730   -0.0782803
6-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0276236   -0.3826351    0.2362336
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.0387506   -2.0809878   -0.3490816
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0327274   -0.6152009    0.3396946
