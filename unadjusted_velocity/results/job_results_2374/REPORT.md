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

unadjusted

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
![](/tmp/49216eb0-bb55-407b-b530-0493c71c5974/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/49216eb0-bb55-407b-b530-0493c71c5974/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                3.2518288   2.9438931   3.5597644
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                3.8579355   3.5787981   4.1370730
0-3 months     ki1000108-IRC              INDIA        0                    NA                2.9619937   2.7885935   3.1353939
0-3 months     ki1000108-IRC              INDIA        1                    NA                3.3428748   3.1973441   3.4884055
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                3.4081451   3.3109186   3.5053716
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                3.4981435   3.4554661   3.5408209
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                3.1745399   3.1236576   3.2254222
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                3.4008014   3.3424686   3.4591342
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                1.7726660   1.6356257   1.9097063
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                1.8445040   1.6964825   1.9925255
3-6 months     ki1000108-IRC              INDIA        0                    NA                1.8424439   1.7603966   1.9244912
3-6 months     ki1000108-IRC              INDIA        1                    NA                1.9091738   1.8145918   2.0037558
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                1.9296714   1.8557261   2.0036166
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.9729015   1.9334627   2.0123403
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                2.1286478   2.0540579   2.2032376
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.9344184   1.8856905   1.9831463
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                1.7027121   1.6609278   1.7444964
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                1.2137537   0.9349068   1.4926005
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                1.0391377   0.9790397   1.0992356
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                1.0936958   1.0164441   1.1709476
6-12 months    ki1000108-IRC              INDIA        0                    NA                1.2499253   1.2096925   1.2901581
6-12 months    ki1000108-IRC              INDIA        1                    NA                1.2411366   1.2010795   1.2811936
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                1.0959603   1.0585926   1.1333281
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                1.1896856   1.1705984   1.2087728
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                1.2098067   1.1803213   1.2392921
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                1.2592400   1.2315767   1.2869034
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                1.1668512   1.1456108   1.1880917
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                1.2662784   1.1377752   1.3947817
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7251247   0.6929258   0.7573236
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7606345   0.7146439   0.8066252
12-24 months   ki1000108-IRC              INDIA        0                    NA                0.8162762   0.7898340   0.8427184
12-24 months   ki1000108-IRC              INDIA        1                    NA                0.8400706   0.8119085   0.8682326
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.8260344   0.7990724   0.8529965
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.8642223   0.8509554   0.8774892
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.8929927   0.8760811   0.9099044
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.8787685   0.8599665   0.8975706
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.8391407   0.8225561   0.8557252
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.8896664   0.8134394   0.9658934


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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.6061067    0.1904842    1.0217293
0-3 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        1                    0                  0.3808810    0.1545035    0.6072586
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0899984   -0.0161824    0.1961791
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.2262615    0.1488552    0.3036677
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0718380   -0.1298807    0.2735566
3-6 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        1                    0                  0.0667299   -0.0584800    0.1919398
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0432301   -0.0405751    0.1270353
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.1942293   -0.2833251   -0.1051336
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    0                 -0.4889585   -0.7709186   -0.2069984
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0545582   -0.0433172    0.1524335
6-12 months    ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        1                    0                 -0.0087888   -0.0655624    0.0479848
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0937253    0.0517649    0.1356856
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.0494333    0.0090025    0.0898641
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0994272   -0.0308197    0.2296741
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0355098   -0.0206321    0.0916517
12-24 months   ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        1                    0                  0.0237944   -0.0148358    0.0624245
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0381879    0.0081385    0.0682372
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.0142242   -0.0395130    0.0110646
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0505257   -0.0274845    0.1285360
