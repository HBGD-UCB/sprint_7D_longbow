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

**Outcome Variable:** ever_stunted

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
![](/tmp/637a3a4e-1abe-4f92-9a4d-588b74c661b7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/637a3a4e-1abe-4f92-9a4d-588b74c661b7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/637a3a4e-1abe-4f92-9a4d-588b74c661b7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/637a3a4e-1abe-4f92-9a4d-588b74c661b7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.8276304   0.7853553   0.8699054
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6153097   0.5549424   0.6756770
0-24 months   ki1000108-IRC              INDIA        0                    NA                0.6018449   0.5372517   0.6664381
0-24 months   ki1000108-IRC              INDIA        1                    NA                0.4542343   0.3962286   0.5122400
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.6679647   0.5959629   0.7399665
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3446803   0.3062406   0.3831200
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.3954483   0.3454850   0.4454117
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.3708570   0.3269354   0.4147786
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2033111   0.1528492   0.2537729
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.0887257   0.0469501   0.1305012
0-6 months    ki1000108-IRC              INDIA        0                    NA                0.1833199   0.1352040   0.2314359
0-6 months    ki1000108-IRC              INDIA        1                    NA                0.1070763   0.0710055   0.1431472
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.2261162   0.1765125   0.2757200
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0909471   0.0679673   0.1139270
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1596479   0.1210545   0.1982413
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1247554   0.0939166   0.1555941
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7641205   0.6994468   0.8287942
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.6086406   0.5334819   0.6837993
6-24 months   ki1000108-IRC              INDIA        0                    NA                0.2722995   0.2087142   0.3358848
6-24 months   ki1000108-IRC              INDIA        1                    NA                0.2097856   0.1569433   0.2626279
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.5177520   0.4410183   0.5944858
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.2151402   0.1769602   0.2533202
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                0.1662945   0.1255644   0.2070245
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    NA                0.1692706   0.1323359   0.2062053


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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7434596   0.6653495   0.8307396
0-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        1                    0                 0.7547365   0.6394334   0.8908311
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.5160158   0.4419853   0.6024460
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.9378140   0.7918941   1.1106221
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.4364036   0.2552254   0.7461958
0-6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        1                    0                 0.5840955   0.3828754   0.8910668
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.4022140   0.2878098   0.5620938
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 0.7814407   0.5529988   1.1042513
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.7965244   0.6857188   0.9252351
6-24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        1                    0                 0.7704222   0.5464879   1.0861180
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.4155275   0.3306077   0.5222598
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   1                    0                 1.0178970   0.7381410   1.4036806


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0313837   -0.0666082    0.0038407
0-24 months   ki1000108-IRC              INDIA        0                    NA                -0.1268449   -0.1770768   -0.0766130
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.2922504   -0.3577229   -0.2267779
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0332299   -0.0748608    0.0084009
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0032107   -0.0260004    0.0324218
0-6 months    ki1000108-IRC              INDIA        0                    NA                -0.0633199   -0.0973074   -0.0293325
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.1318305   -0.1756316   -0.0880295
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0227328   -0.0541449    0.0086793
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1009261   -0.1512936   -0.0505585
6-24 months   ki1000108-IRC              INDIA        0                    NA                -0.0275865   -0.0752876    0.0201146
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.2783154   -0.3483895   -0.2082413
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0055482   -0.0286458    0.0397422


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0394146   -0.0854759    0.0046922
0-24 months   ki1000108-IRC              INDIA        0                    NA                -0.2670419   -0.3855388   -0.1586794
0-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.7778527   -0.9840173   -0.5931113
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.0917401   -0.2160131    0.0198326
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0155465   -0.1365693    0.1473034
0-6 months    ki1000108-IRC              INDIA        0                    NA                -0.5276660   -0.8684367   -0.2490460
0-6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.3982025   -2.0221783   -0.9030563
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                -0.1660358   -0.4292392    0.0486970
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1521817   -0.2349599   -0.0749521
6-24 months   ki1000108-IRC              INDIA        0                    NA                -0.1127301   -0.3293537    0.0685939
6-24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -1.1623762   -1.5508916   -0.8330339
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   0                    NA                 0.0322865   -0.1865751    0.2107795
