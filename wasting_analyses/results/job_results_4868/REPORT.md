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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country      nhh          ever_wasted   n_cell     n
------------  -------------------------  -----------  ----------  ------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less              0       20   410
0-24 months   ki1000108-IRC              INDIA        3 or less              1       38   410
0-24 months   ki1000108-IRC              INDIA        4-5                    0       63   410
0-24 months   ki1000108-IRC              INDIA        4-5                    1       95   410
0-24 months   ki1000108-IRC              INDIA        6-7                    0       38   410
0-24 months   ki1000108-IRC              INDIA        6-7                    1       69   410
0-24 months   ki1000108-IRC              INDIA        8+                     0       20   410
0-24 months   ki1000108-IRC              INDIA        8+                     1       67   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       24   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1       14   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0       95   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       88   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       66   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       61   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       36   418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       34   418
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       58   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       57   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      134   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1      129   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       72   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       69   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       62   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       43   624
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0       98   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       42   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0      211   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1      111   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0       94   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       57   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       51   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       36   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       75   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       39   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      223   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1      119   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      120   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       58   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       89   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       35   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0      210   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1       15   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0      310   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1       30   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0      172   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1       10   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       59   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                     1       11   817
0-6 months    ki1000108-IRC              INDIA        3 or less              0       25   410
0-6 months    ki1000108-IRC              INDIA        3 or less              1       33   410
0-6 months    ki1000108-IRC              INDIA        4-5                    0       81   410
0-6 months    ki1000108-IRC              INDIA        4-5                    1       77   410
0-6 months    ki1000108-IRC              INDIA        6-7                    0       47   410
0-6 months    ki1000108-IRC              INDIA        6-7                    1       60   410
0-6 months    ki1000108-IRC              INDIA        8+                     0       34   410
0-6 months    ki1000108-IRC              INDIA        8+                     1       53   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       35   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1        3   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0      152   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       31   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0      100   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       27   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       53   418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       17   418
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              0       67   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less              1       47   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    0      175   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                    1       88   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    0       88   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                    1       53   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     0       70   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                     1       34   622
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              0      107   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less              1       33   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    0      235   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                    1       87   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    0      113   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                    1       38   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     0       64   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                     1       23   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       84   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       30   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      250   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       92   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      133   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       45   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     0       95   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       29   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              0       70   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less              1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    0      109   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                    1        2   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    0       65   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                    1        2   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     0       21   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                     1        0   269
6-24 months   ki1000108-IRC              INDIA        3 or less              0       48   410
6-24 months   ki1000108-IRC              INDIA        3 or less              1       10   410
6-24 months   ki1000108-IRC              INDIA        4-5                    0      112   410
6-24 months   ki1000108-IRC              INDIA        4-5                    1       46   410
6-24 months   ki1000108-IRC              INDIA        6-7                    0       74   410
6-24 months   ki1000108-IRC              INDIA        6-7                    1       33   410
6-24 months   ki1000108-IRC              INDIA        8+                     0       49   410
6-24 months   ki1000108-IRC              INDIA        8+                     1       38   410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              0       24   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less              1       12   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    0      111   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                    1       64   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    0       81   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                    1       44   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     0       43   402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                     1       23   402
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              0       68   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less              1       27   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    0      159   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                    1       72   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    0       90   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                    1       38   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     0       65   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                     1       22   541
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              0      101   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less              1       11   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    0      249   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                    1       40   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    0      101   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                    1       29   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     0       65   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                     1       19   615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              0       94   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less              1       13   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    0      279   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                    1       51   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    0      155   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                    1       21   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     0      106   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                     1       11   730
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              0      203   805
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less              1       15   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    0      307   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                    1       29   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    0      173   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                    1        8   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     0       59   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                     1       11   805


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/33c8c1a6-b1e6-41c9-a36a-68d87687945c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33c8c1a6-b1e6-41c9-a36a-68d87687945c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/33c8c1a6-b1e6-41c9-a36a-68d87687945c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/33c8c1a6-b1e6-41c9-a36a-68d87687945c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.6474848   0.5439384   0.7510312
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.5972782   0.5243252   0.6702312
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6343783   0.5497131   0.7190434
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.7827955   0.7049880   0.8606031
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3788096   0.2315012   0.5261180
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4865011   0.4146402   0.5583620
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4895064   0.4038064   0.5752063
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.5038715   0.3904503   0.6172928
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5893872   0.5438155   0.6349588
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.5080075   0.4605209   0.5554941
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.5312551   0.4830455   0.5794648
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4436193   0.3873654   0.4998732
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2179540   0.1644568   0.2714513
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3175069   0.2719112   0.3631026
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2972981   0.2412620   0.3533343
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.3324846   0.2654543   0.3995148
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3097929   0.2507990   0.3687868
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.3566221   0.3104219   0.4028222
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.3223558   0.2647570   0.3799547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2952000   0.2350754   0.3553246
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0666534   0.0340344   0.0992725
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0883130   0.0581551   0.1184709
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0549061   0.0217917   0.0880204
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1568712   0.0714473   0.2422951
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.5584311   0.4491414   0.6677208
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4797461   0.4050373   0.5544549
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.5520959   0.4643503   0.6398416
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.6235288   0.5336031   0.7134546
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4075877   0.3579828   0.4571927
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3189712   0.2726946   0.3652478
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3435223   0.2950494   0.3919951
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3011219   0.2417530   0.3604909
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1970241   0.1457715   0.2482766
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2644184   0.2198555   0.3089813
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2156666   0.1622292   0.2691040
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2675078   0.1938677   0.3411479
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2145872   0.1563917   0.2727826
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2636296   0.2201993   0.3070599
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2384335   0.1827683   0.2940987
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2043378   0.1443018   0.2643738
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1856249   0.0898206   0.2814292
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2933746   0.2232115   0.3635376
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3224749   0.2369506   0.4079992
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4407303   0.3378999   0.5435607
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3595598   0.2168007   0.5023190
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.3749890   0.3055496   0.4444285
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3666703   0.2857005   0.4476401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.3860766   0.2811935   0.4909596
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4078850   0.3543939   0.4613762
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3400385   0.2900505   0.3900265
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3224944   0.2666675   0.3783214
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3061559   0.2393490   0.3729627
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0946497   0.0411894   0.1481100
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1390345   0.0994332   0.1786357
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2155145   0.1462555   0.2847735
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2224649   0.1375735   0.3073563
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1213868   0.0598314   0.1829422
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1545397   0.1156240   0.1934554
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1194592   0.0717458   0.1671726
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0943032   0.0415495   0.1470569
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0688073   0.0351851   0.1024296
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0863095   0.0562642   0.1163549
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0441989   0.0142371   0.0741607
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1571429   0.0718342   0.2424516


### Parameter: E(Y)


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0807834   0.0620863   0.0994804
0-6 months    ki1000108-IRC              INDIA        NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.2585752   0.2273844   0.2897660
6-24 months   ki1000108-IRC              INDIA        NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH   NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.1315069   0.1069744   0.1560393
6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.0782609   0.0596958   0.0968259


### Parameter: RR


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         0.9224590   0.7543322   1.1280583
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         0.9797577   0.7956648   1.2064442
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.2089790   1.0013588   1.4596468
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.2842893   0.8472334   1.9468058
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.2922227   0.8435667   1.9794993
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.3301446   0.8488248   2.0843933
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.8619249   0.7646050   0.9716318
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9013687   0.8009321   1.0144000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7526790   0.6495255   0.8722146
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.4567610   1.0991196   1.9307750
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.3640405   1.0033877   1.8543247
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.5254802   1.1129833   2.0908578
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1511629   0.9153708   1.4476932
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0405528   0.8019315   1.3501779
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9528948   0.7219711   1.2576799
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.3249578   0.7295335   2.4063505
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.8237544   0.3788789   1.7909978
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.3535353   1.1316807   4.8946037
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         0.8590963   0.6689447   1.1032998
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9886554   0.7683455   1.2721355
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         1.1165725   0.8755384   1.4239629
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.7825829   0.6481253   0.9449347
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8428180   0.7001110   1.0146136
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7387905   0.5864429   0.9307154
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.3420611   0.9845677   1.8293591
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.0946205   0.7641652   1.5679778
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.3577416   0.9293200   1.9836678
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2285434   0.8957408   1.6849952
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1111266   0.7774290   1.5880581
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9522368   0.6393607   1.4182214
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.5804699   0.8949500   2.7910889
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.7372394   0.9727599   3.1025136
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         2.3743059   1.3478773   4.1823750
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0429113   0.6726167   1.6170634
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.0197754   0.6478792   1.6051477
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.0737477   0.6643428   1.7354507
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.8336626   0.6878624   1.0103668
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.7906504   0.6392411   0.9779221
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7505935   0.5835664   0.9654267
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.4689369   0.7802630   2.7654465
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         2.2769694   1.1896489   4.3580838
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         2.3504025   1.1893585   4.6448501
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2731178   0.7229013   2.2421165
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9841201   0.5164086   1.8754384
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.7768816   0.3651544   1.6528486
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.2543651   0.6884364   2.2855150
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.6423573   0.2785228   1.4814690
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.2838095   1.1001482   4.7409848


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0086127   -0.0879717    0.1051971
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0924823   -0.0485423    0.2335069
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1118231   -0.1571963   -0.0664498
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1334745    0.0838052    0.1831439
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0213417   -0.0337824    0.0764658
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0141299   -0.0146366    0.0428964
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0145287   -0.1165660    0.0875087
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0506745   -0.0978572   -0.0034919
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0615473    0.0138866    0.1092081
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0439880   -0.0102244    0.0982005
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1241312    0.0317909    0.2164715
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0038385   -0.1402960    0.1326191
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1139849   -0.1645433   -0.0634264
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0663259    0.0151291    0.1175227
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0101200   -0.0470708    0.0673109
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0094535   -0.0199207    0.0388278


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0131272   -0.1455458    0.1498219
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.1962314   -0.1662328    0.4460421
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.2341530   -0.3433991   -0.1337908
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.3798056    0.2263493    0.5028233
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0644503   -0.1164600    0.2160460
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1749113   -0.2673686    0.4628466
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0267119   -0.2327954    0.1449211
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1419800   -0.2885736   -0.0120636
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.2380284    0.0350537    0.3983077
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1701170   -0.0655829    0.3536816
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.4007385    0.0208713    0.6332307
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0107906   -0.4774184    0.3084574
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.3878353   -0.5954143   -0.2072643
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.4120245    0.0013278    0.6538252
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0769545   -0.4782549    0.4236359
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1207951   -0.3459615    0.4256884
