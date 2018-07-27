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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country        cleanck    ever_stunted   n_cell     n
------------  -------------------------  -------------  --------  -------------  -------  ----
0-6 months    ki0047075b-MAL-ED          PERU           0                     0        1     2
0-6 months    ki0047075b-MAL-ED          PERU           1                     0        1     2
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     3
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        2     3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                     0      151   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          0                     1       55   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                     0      141   368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA          1                     1       21   368
0-6 months    ki1000108-IRC              INDIA          0                     0      144   400
0-6 months    ki1000108-IRC              INDIA          0                     1       25   400
0-6 months    ki1000108-IRC              INDIA          1                     0      208   400
0-6 months    ki1000108-IRC              INDIA          1                     1       23   400
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                     0      113   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     0                     1       16   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                     0      521   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH     1                     1       50   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                     0      184   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     0                     1       33   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                     0      314   577
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH     1                     1       46   577
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                     0      468   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          0                     1       60   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                     0        9   537
0-6 months    ki1113344-GMS-Nepal        NEPAL          1                     1        0   537
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        1     1
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                     0       39   288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                     1      111   288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                     0       58   288
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                     1       80   288
6-24 months   ki1000108-IRC              INDIA          0                     0       98   331
6-24 months   ki1000108-IRC              INDIA          0                     1       38   331
6-24 months   ki1000108-IRC              INDIA          1                     0      152   331
6-24 months   ki1000108-IRC              INDIA          1                     1       43   331
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                     0       39   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH     0                     1       27   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                     0      339   497
6-24 months   ki1017093b-PROVIDE         BANGLADESH     1                     1       92   497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      159   483
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                     1       30   483
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      241   483
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                     1       53   483
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                     0      227   429
6-24 months   ki1113344-GMS-Nepal        NEPAL          0                     1      194   429
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                     0        7   429
6-24 months   ki1113344-GMS-Nepal        NEPAL          1                     1        1   429
0-24 months   ki0047075b-MAL-ED          PERU           0                     0        1     2
0-24 months   ki0047075b-MAL-ED          PERU           1                     0        1     2
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                     0        1     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   0                     1        0     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                     0        0     3
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA   1                     1        2     3
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                     0       29   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          0                     1      181   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                     0       47   373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA          1                     1      116   373
0-24 months   ki1000108-IRC              INDIA          0                     0       76   400
0-24 months   ki1000108-IRC              INDIA          0                     1       93   400
0-24 months   ki1000108-IRC              INDIA          1                     0      134   400
0-24 months   ki1000108-IRC              INDIA          1                     1       97   400
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                     0       59   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     0                     1       70   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                     0      378   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH     1                     1      193   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                     0      140   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0                     1       77   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                     0      228   577
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH     1                     1      132   577
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                     0      212   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          0                     1      316   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                     0        8   537
0-24 months   ki1113344-GMS-Nepal        NEPAL          1                     1        1   537


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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9187ab27-047e-4eb0-b206-47602b581ae7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9187ab27-047e-4eb0-b206-47602b581ae7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9187ab27-047e-4eb0-b206-47602b581ae7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9187ab27-047e-4eb0-b206-47602b581ae7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8619048   0.8151807   0.9086288
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7116564   0.6420214   0.7812914
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.5502959   0.4752011   0.6253907
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.4199134   0.3561881   0.4836387
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5426357   0.4566058   0.6286655
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3380035   0.2991769   0.3768301
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.3548387   0.2911233   0.4185541
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3666667   0.3168442   0.4164892
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2669903   0.2064969   0.3274837
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1296296   0.0778349   0.1814244
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.1479290   0.0943354   0.2015226
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.0995671   0.0609064   0.1382278
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1240310   0.0671099   0.1809521
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0875657   0.0643646   0.1107668
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1520737   0.1042547   0.1998928
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1277778   0.0932622   0.1622933
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7400000   0.6696830   0.8103170
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.5797101   0.4972121   0.6622082
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.2794118   0.2038849   0.3549387
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.2205128   0.1622342   0.2787914
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.4090909   0.2903545   0.5278273
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2134571   0.1747346   0.2521796
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1587302   0.1065789   0.2108814
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1802721   0.1362852   0.2242590


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7962466   0.7553156   0.8371777
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.4750000   0.4260009   0.5239991
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3622184   0.3229667   0.4014700
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.2065217   0.1651060   0.2479375
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.1200000   0.0881145   0.1518855
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1369151   0.1088421   0.1649881
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.6631944   0.6085159   0.7178730
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.2447130   0.1983282   0.2910978
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1718427   0.1381646   0.2055207


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8256787   0.7382949   0.9234053
0-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        1                    0                 0.7630685   0.6221978   0.9358334
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6228922   0.5121370   0.7575994
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0333333   0.8249857   1.2942986
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.4855219   0.3067074   0.7685875
0-6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        1                    0                 0.6730736   0.3957553   1.1447175
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.7059982   0.4155873   1.1993472
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.8402357   0.5550975   1.2718415
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7833921   0.6601821   0.9295969
6-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        1                    0                 0.7892038   0.5407656   1.1517793
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5217840   0.3705475   0.7347466
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.1357143   0.7542837   1.7100290


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0656581   -0.1030782   -0.0282380
0-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0752959   -0.1325234   -0.0180683
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1669214   -0.2441373   -0.0897054
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0073797   -0.0430863    0.0578456
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0604686   -0.0962138   -0.0247233
0-6 months    ki1000108-IRC              INDIA        0                    NA                -0.0279290   -0.0661637    0.0103057
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0297453   -0.0798965    0.0204059
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0151587   -0.0519664    0.0216490
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0768056   -0.1295666   -0.0240445
6-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0346988   -0.0909867    0.0215891
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1696543   -0.2781176   -0.0611910
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0131125   -0.0284262    0.0546511


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0824595   -0.1319586   -0.0351249
0-24 months   ki1000108-IRC              INDIA        0                    NA                -0.1585176   -0.2868280   -0.0430011
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.4442774   -0.6688449   -0.2499288
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0203735   -0.1293478    0.1502458
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.2927951   -0.4742436   -0.1336791
0-6 months    ki1000108-IRC              INDIA        0                    NA                -0.2327416   -0.5911464    0.0449327
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.3154804   -0.9656251    0.1196243
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1107157   -0.4140864    0.1275713
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1158115   -0.2003376   -0.0372376
6-24 months   ki1000108-IRC              INDIA        0                    NA                -0.1417938   -0.3961158    0.0662000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.7085561   -1.2286255   -0.3098496
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0763052   -0.1996272    0.2887690
