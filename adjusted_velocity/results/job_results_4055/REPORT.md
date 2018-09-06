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
![](/tmp/2a47de5e-c537-4694-bd2a-6bcf32f9a9b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/2a47de5e-c537-4694-bd2a-6bcf32f9a9b0/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1831478   -0.3235052   -0.0427904
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                 0.1362768    0.0118262    0.2607274
0-3 months     ki1000108-IRC              INDIA        0                    NA                -0.3220998   -0.3899297   -0.2542699
0-3 months     ki1000108-IRC              INDIA        1                    NA                -0.1508075   -0.2113804   -0.0902345
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0531045   -0.0904391   -0.0157699
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0353943   -0.0546949   -0.0160937
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.2132516   -0.2346038   -0.1918995
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0898937   -0.1148048   -0.0649826
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1178397   -0.1765359   -0.0591436
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0816304   -0.1431369   -0.0201238
3-6 months     ki1000108-IRC              INDIA        0                    NA                -0.1140610   -0.1482947   -0.0798273
3-6 months     ki1000108-IRC              INDIA        1                    NA                -0.0722137   -0.1127929   -0.0316345
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0388138   -0.0739086   -0.0037189
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0248310   -0.0432819   -0.0063801
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0802723    0.0547011    0.1058435
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0230703   -0.0429829   -0.0031577
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.1660684   -0.1858426   -0.1462942
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.4024319   -0.5105302   -0.2943336
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1155469   -0.1388497   -0.0922440
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0953728   -0.1228643   -0.0678814
6-12 months    ki1000108-IRC              INDIA        0                    NA                -0.0135645   -0.0277395    0.0006104
6-12 months    ki1000108-IRC              INDIA        1                    NA                -0.0281708   -0.0442022   -0.0121394
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1085987   -0.1196266   -0.0975708
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0589020   -0.0663804   -0.0514236
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0405506   -0.0503724   -0.0307288
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0194102   -0.0293422   -0.0094782
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0613893   -0.0702746   -0.0525039
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0299260   -0.0683814    0.0085294
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0534684   -0.0640882   -0.0428485
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                -0.0586543   -0.0716311   -0.0456776
12-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0300170   -0.0374175   -0.0226166
12-24 months   ki1000108-IRC              INDIA        1                    NA                -0.0286814   -0.0380054   -0.0193574
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0061408   -0.0138469    0.0015652
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                -0.0077830   -0.0120550   -0.0035111
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0006306   -0.0055495    0.0042882
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                -0.0117910   -0.0169069   -0.0066751
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0149623   -0.0204077   -0.0095170
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                -0.0050037   -0.0235690    0.0135617


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
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.3194246    0.1316083    0.5072409
0-3 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA        1                    0                  0.1712923    0.0847486    0.2578360
0-3 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0177102   -0.0231107    0.0585311
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.1233579    0.0901529    0.1565630
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0362093   -0.0487514    0.1211701
3-6 months     ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA        1                    0                  0.0418473   -0.0116176    0.0953123
3-6 months     ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0139828   -0.0256033    0.0535689
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.1033426   -0.1357802   -0.0709050
3-6 months     ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL        1                    0                 -0.2363635   -0.3463367   -0.1263903
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                  0.0201740   -0.0154991    0.0558471
6-12 months    ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA        1                    0                 -0.0146063   -0.0357079    0.0064954
6-12 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                  0.0496967    0.0367855    0.0626079
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                  0.0211404    0.0071855    0.0350953
6-12 months    ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0314633   -0.0080424    0.0709689
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 -0.0051860   -0.0216526    0.0112807
12-24 months   ki1000108-IRC              INDIA        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA        1                    0                  0.0013357   -0.0104674    0.0131387
12-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 -0.0016422   -0.0103995    0.0071151
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 -0.0111604   -0.0181442   -0.0041765
12-24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                  0.0099587   -0.0093383    0.0292556
