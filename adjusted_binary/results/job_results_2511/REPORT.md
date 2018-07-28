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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* cleanck
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_cleanck
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country      nhh          stunted   n_cell     n
----------  -------------------------  -----------  ----------  --------  -------  ----
6 months    ki1000108-IRC              INDIA        3 or less          0       44   407
6 months    ki1000108-IRC              INDIA        3 or less          1       14   407
6 months    ki1000108-IRC              INDIA        4-5                0      116   407
6 months    ki1000108-IRC              INDIA        4-5                1       42   407
6 months    ki1000108-IRC              INDIA        6-7                0       81   407
6 months    ki1000108-IRC              INDIA        6-7                1       25   407
6 months    ki1000108-IRC              INDIA        8+                 0       66   407
6 months    ki1000108-IRC              INDIA        8+                 1       19   407
24 months   ki1000108-IRC              INDIA        3 or less          0       39   409
24 months   ki1000108-IRC              INDIA        3 or less          1       19   409
24 months   ki1000108-IRC              INDIA        4-5                0       88   409
24 months   ki1000108-IRC              INDIA        4-5                1       70   409
24 months   ki1000108-IRC              INDIA        6-7                0       66   409
24 months   ki1000108-IRC              INDIA        6-7                1       41   409
24 months   ki1000108-IRC              INDIA        8+                 0       46   409
24 months   ki1000108-IRC              INDIA        8+                 1       40   409
Birth       ki1000108-IRC              INDIA        3 or less          0       51   388
Birth       ki1000108-IRC              INDIA        3 or less          1        3   388
Birth       ki1000108-IRC              INDIA        4-5                0      128   388
Birth       ki1000108-IRC              INDIA        4-5                1       22   388
Birth       ki1000108-IRC              INDIA        6-7                0       89   388
Birth       ki1000108-IRC              INDIA        6-7                1       14   388
Birth       ki1000108-IRC              INDIA        8+                 0       75   388
Birth       ki1000108-IRC              INDIA        8+                 1        6   388
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          0       23   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less          1       10   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                0       96   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                1       70   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                0       65   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                1       50   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 0       33   380
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                 1       33   380
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          0       74   537
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less          1       21   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                0      151   537
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                1       76   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                0      101   537
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                1       27   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 0       67   537
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                 1       20   537
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          0       36   429
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less          1       39   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                0       71   429
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                1      113   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                0       49   429
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                1       51   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 0       35   429
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                 1       35   429
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          0        7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   3 or less          1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                0       10    28
Birth       ki1017093-NIH-Birth        BANGLADESH   4-5                1        1    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                0        7    28
Birth       ki1017093-NIH-Birth        BANGLADESH   6-7                1        0    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 0        3    28
Birth       ki1017093-NIH-Birth        BANGLADESH   8+                 1        0    28
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          0       84   583
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less          1       18   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                0      232   583
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                1       45   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                0      110   583
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                1       16   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 0       63   583
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                 1       15   583
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          0       75   577
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less          1       30   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                0      177   577
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                1       96   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                0       82   577
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                1       35   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 0       53   577
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                 1       29   577
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0        7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1        1    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                0        7    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   4-5                1        2    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                0        5    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   6-7                1        2    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 0        3    27
Birth       ki1017093c-NIH-Crypto      BANGLADESH   8+                 1        0    27
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       78   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1       26   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      257   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       69   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                0      138   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       32   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       92   715
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                 1       23   715
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          0       53   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less          1       16   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                0      168   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                1       64   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                0       95   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                1       35   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 0       66   514
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                 1       17   514
6 months    ki1148112-LCNI-5           MALAWI       3 or less          0      146   816
6 months    ki1148112-LCNI-5           MALAWI       3 or less          1       78   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                0      212   816
6 months    ki1148112-LCNI-5           MALAWI       4-5                1      128   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                0      117   816
6 months    ki1148112-LCNI-5           MALAWI       6-7                1       65   816
6 months    ki1148112-LCNI-5           MALAWI       8+                 0       45   816
6 months    ki1148112-LCNI-5           MALAWI       8+                 1       25   816
24 months   ki1148112-LCNI-5           MALAWI       3 or less          0       89   574
24 months   ki1148112-LCNI-5           MALAWI       3 or less          1       70   574
24 months   ki1148112-LCNI-5           MALAWI       4-5                0      129   574
24 months   ki1148112-LCNI-5           MALAWI       4-5                1      108   574
24 months   ki1148112-LCNI-5           MALAWI       6-7                0       75   574
24 months   ki1148112-LCNI-5           MALAWI       6-7                1       54   574
24 months   ki1148112-LCNI-5           MALAWI       8+                 0       29   574
24 months   ki1148112-LCNI-5           MALAWI       8+                 1       20   574


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/172c199b-8290-4aaa-b00c-dd2a34e63c08/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/172c199b-8290-4aaa-b00c-dd2a34e63c08/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/172c199b-8290-4aaa-b00c-dd2a34e63c08/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/172c199b-8290-4aaa-b00c-dd2a34e63c08/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                0.2176277   0.1218112   0.3134443
6 months    ki1000108-IRC              INDIA        4-5                  NA                0.2596797   0.1934717   0.3258878
6 months    ki1000108-IRC              INDIA        6-7                  NA                0.2204138   0.1454312   0.2953963
6 months    ki1000108-IRC              INDIA        8+                   NA                0.1867318   0.1121758   0.2612878
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3087671   0.2233863   0.3941479
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4390474   0.3733724   0.5047223
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4324620   0.3603858   0.5045382
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.4989852   0.4158124   0.5821580
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.1617995   0.1170896   0.2065093
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3110194   0.2623135   0.3597252
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.1461374   0.1037562   0.1885187
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.1892642   0.1341759   0.2443525
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2687510   0.2381447   0.2993574
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1820413   0.1510213   0.2130613
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.1471336   0.1187719   0.1754953
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.4403870   0.4115157   0.4692583
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0720124   0.0431443   0.1008806
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1571394   0.1249629   0.1893158
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.0922336   0.0613130   0.1231542
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0602103   0.0344192   0.0860015
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                0.3088012   0.2667289   0.3508735
6 months    ki1148112-LCNI-5           MALAWI       4-5                  NA                0.3510776   0.3104299   0.3917254
6 months    ki1148112-LCNI-5           MALAWI       6-7                  NA                0.2827407   0.2402603   0.3252211
6 months    ki1148112-LCNI-5           MALAWI       8+                   NA                0.1582670   0.1223828   0.1941511
24 months   ki1000108-IRC              INDIA        3 or less            NA                0.2946341   0.1913103   0.3979580
24 months   ki1000108-IRC              INDIA        4-5                  NA                0.4262069   0.3534189   0.4989948
24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3556032   0.2722816   0.4389248
24 months   ki1000108-IRC              INDIA        8+                   NA                0.4322816   0.3420618   0.5225014
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4828706   0.4266387   0.5391025
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.6264636   0.5729970   0.6799303
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.4496666   0.3941884   0.5051448
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4866656   0.4173824   0.5559489
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2417770   0.2058594   0.2776946
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3257860   0.2870275   0.3645444
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.3334716   0.2926379   0.3743052
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.4924261   0.4614087   0.5234435
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.0377428   0.0107429   0.0647427
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1776859   0.1370129   0.2183590
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1133233   0.0725070   0.1541396
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0406547   0.0131020   0.0682073
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.3379680   0.2838503   0.3920856
24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.4020086   0.3503893   0.4536280
24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.2989493   0.2427000   0.3551986
24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1200140   0.0682284   0.1717995


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3627451   0.3297365   0.3957537
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.4390244   0.3983906   0.4796582


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        4-5                  3 or less         1.1932290   0.7171747   1.9852839
6 months    ki1000108-IRC              INDIA        6-7                  3 or less         1.0128018   0.5808261   1.7660492
6 months    ki1000108-IRC              INDIA        8+                   3 or less         0.8580333   0.4734520   1.5550068
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.4219370   1.0422983   1.9398524
6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.4006091   1.0169040   1.9290964
6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.6160570   1.1731175   2.2262393
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.9222521   1.4080485   2.6242371
6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9032008   0.6099414   1.3374590
6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.1697457   0.7892572   1.7336617
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         0.6773603   0.5535923   0.8287993
6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         0.5474718   0.4381475   0.6840741
6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.6386430   1.4369750   1.8686135
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         2.1821140   1.3916272   3.4216213
6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.2808010   0.7581332   2.1638033
6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.8361101   0.4626527   1.5110258
6 months    ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.1369050   0.9585768   1.3484085
6 months    ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.9156075   0.7523391   1.1143074
6 months    ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.5125206   0.3956184   0.6639666
24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.4465631   0.9800972   2.1350381
24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.2069316   0.7925847   1.8378905
24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.4671811   0.9764510   2.2045350
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         1.2973737   1.1335035   1.4849347
24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9312362   0.7965610   1.0886810
24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         1.0078593   0.8459907   1.2006992
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.3474645   1.1328549   1.6027302
24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.3792525   1.1564709   1.6449505
24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         2.0366950   1.7550290   2.3635658
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         4.7078111   2.2290128   9.9431845
24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         3.0025144   1.3453366   6.7009940
24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         1.0771511   0.3991415   2.9068750
24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.1894875   0.9711945   1.4568456
24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.8845493   0.6922219   1.1303132
24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         0.3551046   0.2245919   0.5614593


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.0280725   -0.0610522    0.1171973
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1201803    0.0349771    0.2053834
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1063570    0.0615449    0.1511690
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.1075160   -0.1404155   -0.0746166
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1377778    0.1050729    0.1704826
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0539439    0.0177844    0.0901034
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1210138    0.0238481    0.2181795
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.0719080    0.0206793    0.1231366
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0875124    0.0501160    0.1249088
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.2190665    0.1806493    0.2574838
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1010564    0.0538759    0.1482370


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000108-IRC              INDIA        3 or less            NA                 0.1142552   -0.3327859    0.4113504
6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2801749    0.0604177    0.4485334
6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.3966228    0.2233784    0.5312209
6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                -0.6668282   -0.9824231   -0.4014749
6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.6567407    0.5026041    0.7631123
6 months    ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1487102    0.0459552    0.2403981
24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.2911450    0.0161586    0.4892719
24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                 0.1296156    0.0357842    0.2143159
24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.2657613    0.1587402    0.3591677
24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.8530319    0.7097696    0.9255776
24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.2301841    0.1185328    0.3276931
