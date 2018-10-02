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

unadjusted

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
![](/tmp/b3f3c415-f085-4f87-ab33-25b13fb010dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3f3c415-f085-4f87-ab33-25b13fb010dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3f3c415-f085-4f87-ab33-25b13fb010dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3f3c415-f085-4f87-ab33-25b13fb010dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.5219512   0.4534792   0.5904232
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3619632   0.2880877   0.4358387
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                0.5029586   0.4274820   0.5784351
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    NA                0.5347826   0.4702401   0.5993251
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2539683   0.1779098   0.3300267
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1604278   0.1300363   0.1908193
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1658986   0.1163619   0.2154353
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1089385   0.0766366   0.1412405
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.5445736   0.5015631   0.5875842
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.3333333   0.0250610   0.6416057
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3523316   0.2848411   0.4198221
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2547771   0.1865208   0.3230334
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                0.2767296   0.2070992   0.3463599
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    NA                0.3873874   0.3232209   0.4515538
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0793651   0.0321327   0.1265974
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0466786   0.0291472   0.0642101
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3047619   0.2424217   0.3671022
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.2147239   0.1516008   0.2778471
6-24 months                   ki1000108-IRC              INDIA        0                    NA                0.3491124   0.2771536   0.4210712
6-24 months                   ki1000108-IRC              INDIA        1                    NA                0.2813853   0.2233243   0.3394463
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2616822   0.1783298   0.3450347
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.1397638   0.1095868   0.1699408
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1388889   0.0927281   0.1850497
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1078717   0.0750125   0.1407309


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
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.6934809   0.5440836   0.8839005
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA        1                    0                 1.0632737   0.8770219   1.2890794
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6316845   0.4432009   0.9003261
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.6566574   0.4311052   1.0002173
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        1                    0                 0.6120996   0.2419453   1.5485566
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7231173   0.5202080   1.0051721
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA        1                    0                 1.3998771   1.0357648   1.8919895
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5881508   0.2909799   1.1888155
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7045629   0.4924730   1.0079919
6-24 months                   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA        1                    0                 0.8060019   0.6021060   1.0789448
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5340973   0.3634965   0.7847665
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.7766764   0.4948179   1.2190874


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0708643   -0.1162147   -0.0255138
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                 0.0183447   -0.0389224    0.0756118
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0763846   -0.1433230   -0.0094461
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0354638   -0.0723529    0.0014252
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0036213   -0.0094508    0.0022082
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0437602   -0.0871180   -0.0004024
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                 0.0644778    0.0090335    0.1199221
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0266564   -0.0677542    0.0144413
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0393464   -0.0783805   -0.0003122
6-24 months                   ki1000108-IRC              INDIA        0                    NA                -0.0391124   -0.0926098    0.0143850
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1007066   -0.1740217   -0.0273916
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0190320   -0.0538220    0.0157580


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1570967   -0.2636576   -0.0595218
0-24 months (no birth wast)   ki1000108-IRC              INDIA        0                    NA                 0.0351900   -0.0812236    0.1390696
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.4301327   -0.8582407   -0.1006537
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.2718894   -0.5840881   -0.0212201
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0066942   -0.0175464    0.0040422
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1418154   -0.2913764   -0.0095758
0-6 months (no birth wast)    ki1000108-IRC              INDIA        0                    NA                 0.1889695    0.0094721    0.3359395
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.5057319   -1.5038975    0.0945202
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1482443   -0.3047323   -0.0105254
6-24 months                   ki1000108-IRC              INDIA        0                    NA                -0.1261691   -0.3126794    0.0338411
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.6256018   -1.1442386   -0.2324101
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1587894   -0.4867065    0.0968003
