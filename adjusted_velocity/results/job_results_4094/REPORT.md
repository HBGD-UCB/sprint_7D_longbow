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

**Outcome Variable:** y_rate_len

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
* trth2o
* impfloor
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_W_parity
* delta_trth2o
* delta_impfloor

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country        cleanck    n_cell     n
-------------  -------------------------  -------------  --------  -------  ----
0-3 months     ki0047075b-MAL-ED          PERU           0               0     1
0-3 months     ki0047075b-MAL-ED          PERU           1               1     1
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0              48    87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1              39    87
0-3 months     ki1000108-IRC              INDIA          0             157   369
0-3 months     ki1000108-IRC              INDIA          1             212   369
0-3 months     ki1017093b-PROVIDE         BANGLADESH     0             109   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH     1             525   634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     0             213   546
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     1             333   546
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0             174   307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1             133   307
3-6 months     ki1000108-IRC              INDIA          0             166   390
3-6 months     ki1000108-IRC              INDIA          1             224   390
3-6 months     ki1017093b-PROVIDE         BANGLADESH     0              99   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH     1             475   574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     0             212   527
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     1             315   527
3-6 months     ki1113344-GMS-Nepal        NEPAL          0             840   852
3-6 months     ki1113344-GMS-Nepal        NEPAL          1              12   852
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0             185   323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1             138   323
6-12 months    ki1000108-IRC              INDIA          0             164   391
6-12 months    ki1000108-IRC              INDIA          1             227   391
6-12 months    ki1017093b-PROVIDE         BANGLADESH     0              96   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH     1             449   545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     0             214   516
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     1             302   516
6-12 months    ki1113344-GMS-Nepal        NEPAL          0             840   856
6-12 months    ki1113344-GMS-Nepal        NEPAL          1              16   856
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0               0     1
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             191   324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             133   324
12-24 months   ki1000108-IRC              INDIA          0             163   387
12-24 months   ki1000108-IRC              INDIA          1             224   387
12-24 months   ki1017093b-PROVIDE         BANGLADESH     0              80   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH     1             378   458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   396
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             185   396
12-24 months   ki1113344-GMS-Nepal        NEPAL          0             646   656
12-24 months   ki1113344-GMS-Nepal        NEPAL          1              10   656


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/ed5001c8-ad85-4153-ba8d-c0cfd08cd4a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ed5001c8-ad85-4153-ba8d-c0cfd08cd4a7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                3.2690462   2.9787050   3.5593873
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                3.9288053   3.6672026   4.1904080
0-3 months     ki1000108-IRC              INDIA        0                    NA                3.0445090   2.9007737   3.1882444
0-3 months     ki1000108-IRC              INDIA        1                    NA                3.4099942   3.2799507   3.5400376
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                3.4088808   3.3207456   3.4970159
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                3.4987847   3.4563750   3.5411943
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                3.0540647   3.0118503   3.0962792
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                3.3713362   3.3203109   3.4223614
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                1.7633465   1.6408289   1.8858641
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                1.8593606   1.7318524   1.9868689
3-6 months     ki1000108-IRC              INDIA        0                    NA                1.7237212   1.6524565   1.7949858
3-6 months     ki1000108-IRC              INDIA        1                    NA                1.8460902   1.7597558   1.9324245
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                1.9274626   1.8537775   2.0011478
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.9733661   1.9340089   2.0127234
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                2.0964909   2.0394226   2.1535591
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.9074836   1.8639361   1.9510311
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                1.7029559   1.6611797   1.7447322
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                1.2197354   0.9881336   1.4513371
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                1.0228203   0.9687436   1.0768969
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                1.0905017   1.0249140   1.1560894
6-12 months    ki1000108-IRC              INDIA        0                    NA                1.2657429   1.2358297   1.2956561
6-12 months    ki1000108-IRC              INDIA        1                    NA                1.2469214   1.2121641   1.2816786
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                1.0249071   0.9895997   1.0602144
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.1863850   1.1673090   1.2054610
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                1.2131747   1.1911817   1.2351678
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.2519626   1.2292480   1.2746773
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                1.1671682   1.1459375   1.1883989
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                1.2747131   1.1869946   1.3624316
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7150642   0.6871651   0.7429633
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7333859   0.7004845   0.7662874
12-24 months   ki1000108-IRC              INDIA        0                    NA                0.8136054   0.7944320   0.8327788
12-24 months   ki1000108-IRC              INDIA        1                    NA                0.8387934   0.8153548   0.8622319
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.8281414   0.8051380   0.8511447
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8642774   0.8511253   0.8774296
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.8798201   0.8654700   0.8941702
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8617573   0.8467332   0.8767814
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.8391534   0.8225747   0.8557320
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.8843826   0.8193526   0.9494127


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                3.5235318   3.3031217   3.7439420
0-3 months     ki1000108-IRC              INDIA        NA                   NA                3.1808197   3.0676645   3.2939748
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                3.3125346   3.2707547   3.3543144
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA        NA                   NA                1.8807708   1.8161067   1.9454349
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                2.0125524   1.9699507   2.0551541
3-6 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                1.6958254   1.6540818   1.7375690
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA        NA                   NA                1.2448229   1.2160865   1.2735593
6-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                1.2387386   1.2183403   1.2591370
6-12 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                1.1687097   1.1476895   1.1897299
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA        NA                   NA                0.8300487   0.8102720   0.8498253
12-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.8863476   0.8737443   0.8989509
12-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.8399109   0.8235241   0.8562976


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.6597591    0.2685653    1.0509530
0-3 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        1                    0                  0.3654851    0.1752046    0.5557657
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0899039   -0.0076564    0.1874643
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.3172714    0.2503135    0.3842293
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0960141   -0.0807635    0.2727917
3-6 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        1                    0                  0.1223690    0.0094898    0.2352482
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0459035   -0.0374067    0.1292137
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.1890072   -0.2608051   -0.1172094
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    0                 -0.4832206   -0.7187256   -0.2477155
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0676814   -0.0171417    0.1525045
6-12 months    ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        1                    0                 -0.0188216   -0.0612843    0.0236412
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.1614779    0.1212389    0.2017169
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.0387879    0.0082087    0.0693671
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    0                  0.1075449    0.0171491    0.1979407
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0183217   -0.0230094    0.0596529
12-24 months   ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        1                    0                  0.0251880   -0.0019437    0.0523196
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0361360    0.0096983    0.0625738
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.0180628   -0.0389497    0.0028242
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0452293   -0.0218229    0.1122815
