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
![](/tmp/77113f94-6300-44ac-87a3-0cf47252711a/d54ee011-6cfb-465e-a3c2-2b33ab5ca65a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/77113f94-6300-44ac-87a3-0cf47252711a/d54ee011-6cfb-465e-a3c2-2b33ab5ca65a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.3840207   0.3033343   0.4647072
0-24 months (no birth wast)   ki1000108-IRC              INDIA        optimal              NA                0.5629522   0.4880051   0.6378993
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.1762561   0.1387754   0.2137369
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.1134767   0.0788238   0.1481296
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.2558699   0.1794359   0.3323039
0-6 months (no birth wast)    ki1000108-IRC              INDIA        optimal              NA                0.2863869   0.2155529   0.3572209
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.0609670   0.0326821   0.0892519
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                0.2111919   0.1500143   0.2723695
6-24 months                   ki1000108-IRC              INDIA        optimal              NA                0.2764490   0.2183310   0.3345670
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                0.1399788   0.1098116   0.1701460
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                0.0759350   0.0467317   0.1051383


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
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.1746422   0.9922129   1.390613
0-24 months (no birth wast)   ki1000108-IRC              INDIA        observed             optimal           0.9260169   0.8355267   1.026308
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.0075321   0.8826816   1.150042
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.1494414   0.9274224   1.424610
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.2059700   0.9445988   1.539663
0-6 months (no birth wast)    ki1000108-IRC              INDIA        observed             optimal           1.1914209   0.9774734   1.452197
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   observed             optimal           0.8645433   0.6054822   1.234446
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        observed             optimal           1.2567505   1.0009759   1.577882
6-24 months                   ki1000108-IRC              INDIA        observed             optimal           1.1213643   0.9726590   1.292804
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   observed             optimal           1.1499998   1.0290926   1.285112
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   observed             optimal           1.5784150   1.1479421   2.170313


### Parameter: PAR


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0670662    0.0023895   0.1317429
0-24 months (no birth wast)   ki1000108-IRC              INDIA        optimal              NA                -0.0416489   -0.0993230   0.0160251
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0013276   -0.0219822   0.0246373
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0169581   -0.0075577   0.0414739
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0527015   -0.0098217   0.1152248
0-6 months (no birth wast)    ki1000108-IRC              INDIA        optimal              NA                 0.0548204   -0.0020380   0.1116789
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.0082584   -0.0299833   0.0134666
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.0542236    0.0057171   0.1027302
6-24 months                   ki1000108-IRC              INDIA        optimal              NA                 0.0335510   -0.0057874   0.0728895
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0209968    0.0051297   0.0368638
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.0439219    0.0175437   0.0703002


### Parameter: PAF


agecat                        studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.1486769   -0.0078482   0.2808927
0-24 months (no birth wast)   ki1000108-IRC              INDIA        optimal              NA                -0.0798939   -0.1968499   0.0256332
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.0074757   -0.1329113   0.1304664
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.1300122   -0.0782573   0.2980537
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.1707920   -0.0586505   0.3505071
0-6 months (no birth wast)    ki1000108-IRC              INDIA        optimal              NA                 0.1606661   -0.0230458   0.3113881
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH   optimal              NA                -0.1566801   -0.6515762   0.1899200
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA        optimal              NA                 0.2042971    0.0009750   0.3662390
6-24 months                   ki1000108-IRC              INDIA        optimal              NA                 0.1082291   -0.0281095   0.2264878
6-24 months                   ki1017093b-PROVIDE         BANGLADESH   optimal              NA                 0.1304346    0.0282701   0.2218579
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH   optimal              NA                 0.3664530    0.1288759   0.5392370
