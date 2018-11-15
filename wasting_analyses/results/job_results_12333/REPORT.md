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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country        cleanck    pers_wast   n_cell     n
------------  -------------------------  -------------  --------  ----------  -------  ----
0-24 months   ki0047075b-MAL-ED          PERU           0                  0        0     1
0-24 months   ki0047075b-MAL-ED          PERU           0                  1        0     1
0-24 months   ki0047075b-MAL-ED          PERU           1                  0        1     1
0-24 months   ki0047075b-MAL-ED          PERU           1                  1        0     1
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     2
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  0      193   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  1       17   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  0      157   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  1        6   373
0-24 months   ki1000108-IRC              INDIA          0                  0      148   400
0-24 months   ki1000108-IRC              INDIA          0                  1       21   400
0-24 months   ki1000108-IRC              INDIA          1                  0      204   400
0-24 months   ki1000108-IRC              INDIA          1                  1       27   400
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  0      105   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  1        6   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  0      520   640
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  1        9   640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  0      210   559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  1        6   559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  0      335   559
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  1        8   559
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                  0      447   530
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                  1       75   530
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                  0        7   530
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                  1        1   530
0-6 months    ki0047075b-MAL-ED          PERU           0                  0        0     1
0-6 months    ki0047075b-MAL-ED          PERU           0                  1        0     1
0-6 months    ki0047075b-MAL-ED          PERU           1                  0        1     1
0-6 months    ki0047075b-MAL-ED          PERU           1                  1        0     1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        1     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     2
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                  0      165   358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                  1       35   358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                  0      143   358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                  1       15   358
0-6 months    ki1000108-IRC              INDIA          0                  0      141   392
0-6 months    ki1000108-IRC              INDIA          0                  1       24   392
0-6 months    ki1000108-IRC              INDIA          1                  0      189   392
0-6 months    ki1000108-IRC              INDIA          1                  1       38   392
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                  0      107   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                  1        4   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                  0      516   637
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                  1       10   637
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                  0      420   486
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                  1       59   486
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                  0        5   486
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                  1        2   486
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  0        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                  1        0     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  0        1     1
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                  1        0     1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  0      189   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                  1       21   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  0      156   373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                  1        7   373
6-24 months   ki1000108-IRC              INDIA          0                  0      146   400
6-24 months   ki1000108-IRC              INDIA          0                  1       23   400
6-24 months   ki1000108-IRC              INDIA          1                  0      206   400
6-24 months   ki1000108-IRC              INDIA          1                  1       25   400
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  0       90   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                  1       13   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  0      473   601
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                  1       25   601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  0      202   533
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                  1       11   533
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  0      306   533
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                  1       14   533
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                  0      413   517
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                  1       96   517
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                  0        7   517
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                  1        1   517


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
![](/tmp/4b9d24a8-0949-4ed3-af08-b90822d69bae/1733d3db-fd7e-4309-ac52-a1b65fe178bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4b9d24a8-0949-4ed3-af08-b90822d69bae/1733d3db-fd7e-4309-ac52-a1b65fe178bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4b9d24a8-0949-4ed3-af08-b90822d69bae/1733d3db-fd7e-4309-ac52-a1b65fe178bc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4b9d24a8-0949-4ed3-af08-b90822d69bae/1733d3db-fd7e-4309-ac52-a1b65fe178bc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.0809524   0.0440117   0.1178931
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0368098   0.0078647   0.0657549
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.1242604   0.0744635   0.1740572
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.1168831   0.0754001   0.1583662
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0540541   0.0119549   0.0961532
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0170132   0.0059845   0.0280420
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0277778   0.0058426   0.0497130
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0233236   0.0073368   0.0393105
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1750000   0.1222665   0.2277335
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0949367   0.0491664   0.1407070
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.1454545   0.0915914   0.1993177
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.1674009   0.1187729   0.2160289
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1000000   0.0593704   0.1406296
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0429448   0.0117802   0.0741093
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.1360947   0.0843338   0.1878556
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.1082251   0.0681128   0.1483374
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1262136   0.0620266   0.1904006
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0502008   0.0310068   0.0693948
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.0516432   0.0218951   0.0813912
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.0437500   0.0213186   0.0661814


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
0-24 months   ki1000108-IRC              INDIA        1                    0                 0.9406308   0.5507267   1.6065797
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.3147448   0.1142567   0.8670329
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8396501   0.2951043   2.3890277
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.5424955   0.3072438   0.9578757
0-6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        1                    0                 1.1508811   0.7188350   1.8426026
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.4294479   0.1869451   0.9865223
6-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        1                    0                 0.7952193   0.4675748   1.3524545
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.3977448   0.2105149   0.7514952
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8471591   0.3917905   1.8317915


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0192902   -0.0399189    0.0013385
0-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0042604   -0.0416909    0.0331702
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0306166   -0.0666048    0.0053717
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0027331   -0.0193887    0.0139226
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0353352   -0.0664272   -0.0042432
0-6 months    ki1000108-IRC              INDIA        0                    NA                 0.0127087   -0.0293271    0.0547445
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0249330   -0.0474937   -0.0023723
6-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0160947   -0.0539359    0.0217466
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0629856   -0.1185465   -0.0074247
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0047389   -0.0271097    0.0176319


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.3128364   -0.6687765   -0.0328162
0-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0355030   -0.3993601    0.2337452
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.3063062   -3.2435650   -0.2534387
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1091270   -1.0160383    0.3898119
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2530000   -0.4897959   -0.0538417
0-6 months    ki1000108-IRC              INDIA        0                    NA                 0.0803519   -0.2272543    0.3108579
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.3321428   -0.6457730   -0.0782803
6-24 months   ki1000108-IRC              INDIA        0                    NA                -0.1341223   -0.4958296    0.1401204
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.9961676   -2.0385611   -0.3113724
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1010328   -0.6958020    0.2851327
