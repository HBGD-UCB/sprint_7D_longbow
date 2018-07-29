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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

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
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* W_nhh
* W_nchldlt5
* trth2o
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_W_nhh
* delta_W_nchldlt5
* delta_trth2o
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country        cleanck    n_cell     n
-------------  -------------------------  -------------  --------  -------  ----
0-3 months     ki1017093b-PROVIDE         BANGLADESH     0             109   634
0-3 months     ki1017093b-PROVIDE         BANGLADESH     1             525   634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     0             213   546
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH     1             333   546
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          0              48    87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA          1              39    87
0-3 months     ki1000108-IRC              INDIA          0             157   369
0-3 months     ki1000108-IRC              INDIA          1             212   369
0-3 months     ki0047075b-MAL-ED          PERU           1               1     1
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   0               1     2
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     2
3-6 months     ki1017093b-PROVIDE         BANGLADESH     0              99   574
3-6 months     ki1017093b-PROVIDE         BANGLADESH     1             475   574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     0             212   527
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH     1             315   527
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          0             174   307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA          1             133   307
3-6 months     ki1000108-IRC              INDIA          0             166   390
3-6 months     ki1000108-IRC              INDIA          1             224   390
3-6 months     ki1113344-GMS-Nepal        NEPAL          0             420   426
3-6 months     ki1113344-GMS-Nepal        NEPAL          1               6   426
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
6-12 months    ki1017093b-PROVIDE         BANGLADESH     0              96   545
6-12 months    ki1017093b-PROVIDE         BANGLADESH     1             449   545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     0             214   516
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH     1             302   516
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          0             185   323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA          1             138   323
6-12 months    ki1000108-IRC              INDIA          0             164   391
6-12 months    ki1000108-IRC              INDIA          1             227   391
6-12 months    ki1113344-GMS-Nepal        NEPAL          0             420   428
6-12 months    ki1113344-GMS-Nepal        NEPAL          1               8   428
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1
12-24 months   ki1017093b-PROVIDE         BANGLADESH     0              80   458
12-24 months   ki1017093b-PROVIDE         BANGLADESH     1             378   458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0             211   396
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1             185   396
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0             191   324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1             133   324
12-24 months   ki1000108-IRC              INDIA          0             163   387
12-24 months   ki1000108-IRC              INDIA          1             224   387
12-24 months   ki1113344-GMS-Nepal        NEPAL          0             323   328
12-24 months   ki1113344-GMS-Nepal        NEPAL          1               5   328
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1               1     1


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
![](/tmp/54c6f302-fd33-436d-9423-5d3f849427c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/54c6f302-fd33-436d-9423-5d3f849427c7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                3.3733467   3.0963379   3.6503556
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                4.1155737   3.8673952   4.3637521
0-3 months     ki1000108-IRC              INDIA        0                    NA                3.0319322   2.8912931   3.1725713
0-3 months     ki1000108-IRC              INDIA        1                    NA                3.3707250   3.2449458   3.4965042
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                3.2968250   3.2403625   3.3532875
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                3.4926253   3.4517085   3.5335422
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                2.7931373   2.7515704   2.8347042
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                3.3471310   3.3012275   3.3930345
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                1.7645096   1.6402538   1.8887653
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                1.8555831   1.7262007   1.9849655
3-6 months     ki1000108-IRC              INDIA        0                    NA                1.7237635   1.6524782   1.7950487
3-6 months     ki1000108-IRC              INDIA        1                    NA                1.8461319   1.7597797   1.9324840
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                2.0840782   2.0340861   2.1340702
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.9808528   1.9421479   2.0195576
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                2.2554555   2.2098972   2.3010139
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.8969116   1.8593661   1.9344570
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                1.7029460   1.6611673   1.7447248
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                1.1971202   0.9221346   1.4721057
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                1.0232064   0.9700242   1.0763885
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                1.0926338   1.0286858   1.1565819
6-12 months    ki1000108-IRC              INDIA        0                    NA                1.2708703   1.2391288   1.3026118
6-12 months    ki1000108-IRC              INDIA        1                    NA                1.2513309   1.2146088   1.2880530
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                1.0913105   1.0586260   1.1239951
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.1897074   1.1707316   1.2086832
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                1.2172541   1.1993149   1.2351933
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.2641642   1.2429665   1.2853618
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                1.1670633   1.1458683   1.1882583
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                1.2448902   1.1538939   1.3358864
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7132015   0.6855280   0.7408751
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7311910   0.6988917   0.7634902
12-24 months   ki1000108-IRC              INDIA        0                    NA                0.8148498   0.7951855   0.8345142
12-24 months   ki1000108-IRC              INDIA        1                    NA                0.8391024   0.8153769   0.8628279
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.8267682   0.7998776   0.8536589
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8640655   0.8508092   0.8773218
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.8964113   0.8837597   0.9090630
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8709037   0.8578908   0.8839166
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.8392162   0.8226336   0.8557987
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.8847746   0.8100688   0.9594805


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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.7422270    0.3650385    1.1194154
0-3 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        1                    0                  0.3387928    0.1619938    0.5155919
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.1958003    0.1287484    0.2628523
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.5539937    0.4890834    0.6189040
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0910736   -0.0882814    0.2704285
3-6 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        1                    0                  0.1223684    0.0094625    0.2352743
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                 -0.1032254   -0.1665976   -0.0398531
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.3585439   -0.4167557   -0.3003321
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    0                 -0.5058259   -0.7838461   -0.2278057
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0694275   -0.0122268    0.1510818
6-12 months    ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        1                    0                 -0.0195394   -0.0678547    0.0287759
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0983969    0.0606096    0.1361841
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.0469101    0.0225000    0.0713202
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0778268   -0.0150426    0.1706963
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0179894   -0.0227809    0.0587598
12-24 months   ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        1                    0                  0.0242525   -0.0034257    0.0519308
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0372972    0.0073524    0.0672421
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.0255077   -0.0425592   -0.0084561
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0455584   -0.0309128    0.1220297
