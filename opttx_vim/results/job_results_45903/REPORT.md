---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country        cleanck    ever_wasted   n_cell     n
----------------------------  -------------------------  -------------  --------  ------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                    0        1     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           1                    1        0     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                    0        1     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU           0                    1        0     2
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        2     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        1     3
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     3
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                    0      104   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       59   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                    0       98   368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA          0                    1      107   368
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                    0      107   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          1                    1      123   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                    0       84   399
0-24 months (no birth wast)   ki1000108-IRC              INDIA          0                    1       85   399
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                    0      471   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     1                    1       90   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                    0       94   687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH     0                    1       32   687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                    0      319   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       39   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                    0      181   575
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       36   575
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                    0        6   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          1                    1        3   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                    0      235   525
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL          0                    1      281   525
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                    0        1     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           1                    1        0     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                    0        1     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU           0                    1        0     2
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        2     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        1     3
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     3
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                    0      117   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          1                    1       40   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                    0      125   350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA          0                    1       68   350
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                    0      136   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          1                    1       86   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                    0      115   381
0-6 months (no birth wast)    ki1000108-IRC              INDIA          0                    1       44   381
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                    0      531   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     1                    1       26   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                    0      116   683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH     0                    1       10   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                    0      351   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     1                    1        4   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                    0      208   572
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH     0                    1        9   572
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                    0        6   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          1                    1        2   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                    0      425   506
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL          0                    1       73   506
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                    0        1     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   1                    1        0     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                    0        0     1
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA   0                    1        0     1
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                    0      128   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          1                    1       35   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                    0      146   373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA          0                    1       64   373
6-24 months                   ki1000108-IRC              INDIA          1                    0      166   400
6-24 months                   ki1000108-IRC              INDIA          1                    1       65   400
6-24 months                   ki1000108-IRC              INDIA          0                    0      110   400
6-24 months                   ki1000108-IRC              INDIA          0                    1       59   400
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                    0      437   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     1                    1       71   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                    0       79   615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH     0                    1       28   615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                    0      306   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     1                    1       37   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                    0      186   559
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH     0                    1       30   559
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                    0        6   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          1                    1        2   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                    0      269   529
6-24 months                   ki1113344-GMS-Nepal        NEPAL          0                    1      252   529


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
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/a8d10ff2-9554-4dd3-b9e5-f3d2c81a2078/959bde5e-cacb-4180-a4e8-99e0976b1644/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a8d10ff2-9554-4dd3-b9e5-f3d2c81a2078/959bde5e-cacb-4180-a4e8-99e0976b1644/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.3843504   0.3026693   0.4660316
0-24 months (no birth wast)   ki1000108-IRC              INDIA        optimal              NA                0.5043770   0.4269458   0.5818083
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.1613401   0.1309418   0.1917383
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.1070155   0.0744584   0.1395727
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.2507340   0.1779042   0.3235638
0-6 months (no birth wast)    ki1000108-IRC              INDIA        optimal              NA                0.2798605   0.2090265   0.3506946
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.0609954   0.0331980   0.0887928
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.2135091   0.1479534   0.2790648
6-24 months                   ki1000108-IRC              INDIA        optimal              NA                0.2777504   0.2190572   0.3364435
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.1401601   0.1099827   0.1703376
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.1046557   0.0695938   0.1397176


### Parameter: E(Y)


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   ki1000108-IRC              INDIA        observed             NA                0.5213033   0.4722258   0.5703807
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.1304348   0.1028836   0.1579859
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    ki1000108-IRC              INDIA        observed             NA                0.3412073   0.2935379   0.3888768
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.0527086   0.0359384   0.0694789
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        observed             NA                0.2654155   0.2205451   0.3102860
6-24 months                   ki1000108-IRC              INDIA        observed             NA                0.3100000   0.2646197   0.3553803
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   observed             NA                0.1198569   0.0929081   0.1468057


### Parameter: RR


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.1736346   0.9889487   1.392811
0-24 months (no birth wast)   ki1000108-IRC              INDIA        observed             optimal           1.0335587   0.9182263   1.163377
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.1006793   1.0025802   1.208377
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.2188397   0.9853896   1.507597
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.2306725   0.9744826   1.554214
0-6 months (no birth wast)    ki1000108-IRC              INDIA        observed             optimal           1.2192049   0.9962622   1.492038
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.8641415   0.6107988   1.222564
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.2431111   0.9729488   1.588291
6-24 months                   ki1000108-IRC              INDIA        observed             optimal           1.1161101   0.9669089   1.288334
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.1485120   1.0277292   1.283490
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.1452497   0.8876831   1.477551


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0667365    0.0011042   0.1323689
0-24 months (no birth wast)   ki1000108-IRC              INDIA        optimal              NA                 0.0169262   -0.0427221   0.0765745
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0162436    0.0010300   0.0314572
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0234193    0.0002819   0.0465566
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0578374   -0.0007435   0.1164184
0-6 months (no birth wast)    ki1000108-IRC              INDIA        optimal              NA                 0.0613468    0.0047524   0.1179412
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0082867   -0.0294481   0.0128747
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0519064   -0.0005496   0.1043625
6-24 months                   ki1000108-IRC              INDIA        optimal              NA                 0.0322496   -0.0075914   0.0720907
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0208155    0.0049224   0.0367086
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0152012   -0.0117745   0.0421769


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.1479461   -0.0111748   0.2820273
0-24 months (no birth wast)   ki1000108-IRC              INDIA        optimal              NA                 0.0324690   -0.0890561   0.1404335
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0914702    0.0025736   0.1724438
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.1795476   -0.0148270   0.3366927
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.1874362   -0.0261856   0.3565881
0-6 months (no birth wast)    ki1000108-IRC              INDIA        optimal              NA                 0.1797934   -0.0037518   0.3297756
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.1572179   -0.6372004   0.1820469
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.1955667   -0.0278034   0.3703923
6-24 months                   ki1000108-IRC              INDIA        optimal              NA                 0.1040311   -0.0342236   0.2238039
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.1293082    0.0269810   0.2208741
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.1268280   -0.1265282   0.3232044
