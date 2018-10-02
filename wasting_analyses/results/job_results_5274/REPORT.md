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
![](/tmp/91412756-5a4c-48a0-8d51-8c1e4ae461b4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91412756-5a4c-48a0-8d51-8c1e4ae461b4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91412756-5a4c-48a0-8d51-8c1e4ae461b4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91412756-5a4c-48a0-8d51-8c1e4ae461b4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.6480322   0.5461616   0.7499027
0-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.5981702   0.5257631   0.6705772
0-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.6348143   0.5510343   0.7185943
0-24 months   ki1000108-IRC              INDIA        8+                   NA                0.7811157   0.7046967   0.8575346
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3748795   0.2304917   0.5192674
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.4870882   0.4154195   0.5587569
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.4899699   0.4046653   0.5752745
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.5033958   0.3913098   0.6154817
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.5910315   0.5453972   0.6366657
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.5081844   0.4605943   0.5557746
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.5326418   0.4843387   0.5809449
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.4421586   0.3857100   0.4986072
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.2098434   0.1576781   0.2620086
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.3148665   0.2695401   0.3601928
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2898828   0.2347888   0.3449768
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.3282960   0.2626021   0.3939900
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.3123161   0.2564851   0.3681471
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.3580292   0.3124539   0.4036045
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.3234068   0.2674106   0.3794031
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2983013   0.2403293   0.3562733
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                0.0666548   0.0340366   0.0992731
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  NA                0.0883040   0.0581451   0.1184629
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  NA                0.0549107   0.0217950   0.0880264
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   NA                0.1569027   0.0714928   0.2423126
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                0.5598403   0.4494061   0.6702745
0-6 months    ki1000108-IRC              INDIA        4-5                  NA                0.4806320   0.4057586   0.5555054
0-6 months    ki1000108-IRC              INDIA        6-7                  NA                0.5530377   0.4650342   0.6410413
0-6 months    ki1000108-IRC              INDIA        8+                   NA                0.6225006   0.5321843   0.7128169
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.4085400   0.3600629   0.4570171
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3172426   0.2713392   0.3631460
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3396876   0.2921065   0.3872688
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.2978615   0.2392765   0.3564464
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.1977487   0.1457011   0.2497964
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.2649762   0.2202165   0.3097359
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2182696   0.1641069   0.2724323
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2670454   0.1926919   0.3413989
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.2141814   0.1569478   0.2714150
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.2644489   0.2213632   0.3075346
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.2390828   0.1840419   0.2941237
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.2050959   0.1460104   0.2641815
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                0.1869509   0.0922186   0.2816832
6-24 months   ki1000108-IRC              INDIA        4-5                  NA                0.2928379   0.2232419   0.3624338
6-24 months   ki1000108-IRC              INDIA        6-7                  NA                0.3262775   0.2422134   0.4103417
6-24 months   ki1000108-IRC              INDIA        8+                   NA                0.4374144   0.3362789   0.5385498
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                0.3591576   0.2179123   0.5004030
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  NA                0.3751897   0.3056613   0.4447181
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  NA                0.3668555   0.2858865   0.4478245
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   NA                0.3858539   0.2813999   0.4903079
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                0.3946330   0.3391827   0.4500833
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  NA                0.3367984   0.2862700   0.3873268
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  NA                0.3217142   0.2647766   0.3786519
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   NA                0.3033381   0.2354990   0.3711771
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                0.0937834   0.0422466   0.1453202
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  NA                0.1392966   0.0999183   0.1786749
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  NA                0.2158021   0.1482990   0.2833052
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   NA                0.2221413   0.1406925   0.3035900
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                0.1207852   0.0587355   0.1828349
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  NA                0.1542229   0.1152185   0.1932273
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  NA                0.1194395   0.0715144   0.1673647
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   NA                0.0949951   0.0421901   0.1478001
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
0-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         0.9230563   0.7571671   1.1252905
0-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         0.9796031   0.7984342   1.2018801
0-24 months   ki1000108-IRC              INDIA        8+                   3 or less         1.2053656   1.0014528   1.4507984
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.2993193   0.8602923   1.9623919
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.3070062   0.8564746   1.9945311
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.3428202   0.8607323   2.0949209
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.8598264   0.7621602   0.9700079
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.9012072   0.8003345   1.0147938
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7481135   0.6447603   0.8680338
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.5004832   1.1275135   1.9968274
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.3814246   1.0115748   1.8864983
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.5644813   1.1387220   2.1494286
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.1463682   0.9215506   1.4260313
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.0355113   0.8079328   1.3271942
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9551263   0.7344507   1.2421069
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.3247951   0.7294369   2.4060782
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.8238063   0.3789149   1.7910536
0-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.3539577   1.1320784   4.8946403
0-6 months    ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA        4-5                  3 or less         0.8585163   0.6676637   1.1039244
0-6 months    ki1000108-IRC              INDIA        6-7                  3 or less         0.9878491   0.7666984   1.2727898
0-6 months    ki1000108-IRC              INDIA        8+                   3 or less         1.1119253   0.8703676   1.4205238
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.7765276   0.6443514   0.9358172
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8314672   0.6924146   0.9984447
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7290875   0.5797873   0.9168338
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.3399642   0.9801837   1.8318036
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         1.1037727   0.7685377   1.5852366
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         1.3504281   0.9201547   1.9819016
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2346959   0.9045895   1.6852660
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         1.1162632   0.7853753   1.5865583
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.9575805   0.6477068   1.4157029
6-24 months   ki1000108-IRC              INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA        4-5                  3 or less         1.5663896   0.8952436   2.7406801
6-24 months   ki1000108-IRC              INDIA        6-7                  3 or less         1.7452583   0.9888256   3.0803479
6-24 months   ki1000108-IRC              INDIA        8+                   3 or less         2.3397292   1.3406426   4.0833647
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                  3 or less         1.0446380   0.6760290   1.6142333
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                  3 or less         1.0214331   0.6510560   1.6025128
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                   3 or less         1.0743302   0.6670755   1.7302171
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                  3 or less         0.8534470   0.6984905   1.0427799
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                  3 or less         0.8152238   0.6536812   1.0166880
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                   3 or less         0.7686586   0.5922534   0.9976069
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                  3 or less         1.4853009   0.8005079   2.7558989
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                  3 or less         2.3010689   1.2235683   4.3274399
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                   3 or less         2.3686630   1.2240897   4.5834587
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                  3 or less         1.2768360   0.7201548   2.2638333
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                  3 or less         0.9888589   0.5152138   1.8979343
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                   3 or less         0.7864792   0.3689739   1.6764047
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            3 or less         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                  3 or less         1.2543651   0.6884364   2.2855150
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                  3 or less         0.6423573   0.2785228   1.4814690
6-24 months   ki1148112-LCNI-5           MALAWI       8+                   3 or less         2.2838095   1.1001482   4.7409848


### Parameter: PAR


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0080654   -0.0868404    0.1029712
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.0964123   -0.0418625    0.2346872
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1134673   -0.1592290   -0.0677057
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.1415852    0.0926227    0.1905477
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0188185   -0.0337343    0.0713712
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0141285   -0.0146376    0.0428946
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0159379   -0.1189397    0.0870640
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.0516269   -0.0981437   -0.0051100
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0608227    0.0125506    0.1090948
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0443938   -0.0089230    0.0977106
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.1228052    0.0314478    0.2141627
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0034363   -0.1384963    0.1316238
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1007328   -0.1525400   -0.0489257
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.0671922    0.0176092    0.1167753
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0107216   -0.0469338    0.0683771
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.0094535   -0.0199207    0.0388278


### Parameter: PAF


agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.0122930   -0.1434053    0.1467897
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                 0.2045704   -0.1500268    0.4498317
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.2375961   -0.3479678   -0.1362615
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.4028847    0.2523229    0.5231275
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0568303   -0.1146430    0.2019247
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1748939   -0.2673743    0.4628263
0-6 months    ki1000108-IRC              INDIA        3 or less            NA                -0.0293028   -0.2374741    0.1438493
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.1446482   -0.2895706   -0.0160122
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.2352260    0.0289580    0.3976787
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.1716862   -0.0594511    0.3523970
6-24 months   ki1000108-IRC              INDIA        3 or less            NA                 0.3964579    0.0228294    0.6272267
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less            NA                -0.0096600   -0.4706592    0.3068324
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less            NA                -0.3427451   -0.5507199   -0.1626628
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less            NA                 0.4174062    0.0246563    0.6520041
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less            NA                 0.0815291   -0.4801405    0.4300616
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less            NA                 0.1207951   -0.3459615    0.4256884
