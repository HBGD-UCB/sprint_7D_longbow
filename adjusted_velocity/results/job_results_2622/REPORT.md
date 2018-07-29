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

**Outcome Variable:** y_rate_haz

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
![](/tmp/f3d38015-5b40-4c51-a828-5f1e23bf4909/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f3d38015-5b40-4c51-a828-5f1e23bf4909/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1454349   -0.2822899   -0.0085798
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1955317    0.0752850    0.3157784
0-3 months     ki1000108-IRC              INDIA        0                    NA                -0.3228700   -0.3911354   -0.2546046
0-3 months     ki1000108-IRC              INDIA        1                    NA                -0.1516866   -0.2124712   -0.0909020
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0575865   -0.0835044   -0.0316685
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0376114   -0.0563922   -0.0188306
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.3205120   -0.3397833   -0.3012408
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.1016197   -0.1237345   -0.0795050
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1179852   -0.1772793   -0.0586911
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0819478   -0.1440884   -0.0198072
3-6 months     ki1000108-IRC              INDIA        0                    NA                -0.1207070   -0.1540422   -0.0873718
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0757231   -0.1154697   -0.0359766
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0797641    0.0529212    0.1066069
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0191860   -0.0374511   -0.0009208
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0573906    0.0368258    0.0779555
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0514256   -0.0693219   -0.0335294
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1660234   -0.1858022   -0.1462446
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4073392   -0.4843226   -0.3303558
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1154475   -0.1385728   -0.0923222
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0947070   -0.1218721   -0.0675420
6-12 months    ki1000108-IRC              INDIA        0                    NA                -0.0157192   -0.0294111   -0.0020273
6-12 months    ki1000108-IRC              INDIA        1                    NA                -0.0295028   -0.0449344   -0.0140712
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1054244   -0.1170421   -0.0938066
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0582530   -0.0658093   -0.0506967
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0213258   -0.0294802   -0.0131714
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0055215   -0.0148552    0.0038122
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0615046   -0.0703937   -0.0526155
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0282194   -0.0835507    0.0271120
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0517875   -0.0623093   -0.0412656
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0565148   -0.0693433   -0.0436862
12-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0298457   -0.0373065   -0.0223849
12-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0286084   -0.0379726   -0.0192442
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0011610   -0.0061080    0.0084300
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0074813   -0.0117408   -0.0032217
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0033616   -0.0009252    0.0076484
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0103775   -0.0145901   -0.0061648
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0149410   -0.0203852   -0.0094968
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0076372   -0.0347604    0.0194860


### Parameter: E(Y)


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0732952   -0.1806423    0.0340519
0-3 months     ki1000108-IRC              INDIA        NA                   NA                -0.2555832   -0.3120360   -0.1991304
0-3 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.1140109   -0.1341708   -0.0938510
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA        NA                   NA                -0.0517747   -0.0822588   -0.0212906
3-6 months     ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                 0.0302642    0.0105575    0.0499710
3-6 months     ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.1695159   -0.1892757   -0.1497561
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA        NA                   NA                -0.0274878   -0.0401239   -0.0148518
6-12 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0282840   -0.0367845   -0.0197836
6-12 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0608825   -0.0696769   -0.0520880
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA        NA                   NA                -0.0313101   -0.0385075   -0.0241127
12-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                -0.0030765   -0.0074275    0.0012744
12-24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                -0.0148291   -0.0202110   -0.0094472


### Parameter: ATE


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.3409666    0.1571337    0.5247995
0-3 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        1                    0                  0.1711834    0.0841966    0.2581702
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0199750   -0.0092528    0.0492029
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.2188923    0.1884439    0.2493406
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0360374   -0.0498497    0.1219244
3-6 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        1                    0                  0.0449839   -0.0074455    0.0974133
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                 -0.0989500   -0.1315340   -0.0663661
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.1088163   -0.1359672   -0.0816654
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    0                 -0.2413158   -0.3207387   -0.1618929
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0207405   -0.0142813    0.0557623
6-12 months    ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        1                    0                 -0.0137836   -0.0329616    0.0053944
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0471714    0.0335398    0.0608029
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.0158043    0.0033236    0.0282851
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0332852   -0.0227556    0.0893261
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 -0.0047273   -0.0205872    0.0111326
12-24 months   ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        1                    0                  0.0012373   -0.0106425    0.0131170
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 -0.0086423   -0.0170123   -0.0002722
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.0137391   -0.0190331   -0.0084450
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0073038   -0.0203223    0.0349300
