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

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* impfloor
* agecat
* studyid
* country

## Data Summary

impfloor   agecat        studyid                     country      tr          ever_stunted   n_cell       n
---------  ------------  --------------------------  -----------  ---------  -------------  -------  ------
1          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                0        4      27
1          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        0      27
1          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0        6      27
1          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        0      27
1          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0       16      27
1          0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1        1      27
0          0-6 months    ki1000111-WASH-Kenya        KENYA        Control                0       24      90
0          0-6 months    ki1000111-WASH-Kenya        KENYA        Control                1        2      90
0          0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    0       23      90
0          0-6 months    ki1000111-WASH-Kenya        KENYA        LNS                    1        0      90
0          0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  0       36      90
0          0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  1        5      90
1          0-6 months    ki1000111-WASH-Kenya        KENYA        Control                0        1       2
1          0-6 months    ki1000111-WASH-Kenya        KENYA        Other                  0        1       2
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control                0       16      59
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control                1        6      59
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal               0       30      59
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal               1        7      59
1          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control                0       19      38
1          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control                1        6      38
1          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal               0       11      38
1          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal               1        2      38
0          0-6 months    ki1000304-VITAMIN-A         INDIA        Control                0        4      11
0          0-6 months    ki1000304-VITAMIN-A         INDIA        Control                1        1      11
0          0-6 months    ki1000304-VITAMIN-A         INDIA        VitA                   0        5      11
0          0-6 months    ki1000304-VITAMIN-A         INDIA        VitA                   1        1      11
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                0      133     586
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                1       19     586
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  0      379     586
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  1       55     586
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                0        9      54
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control                1        5      54
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  0       30      54
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                  1       10      54
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                0     6284   17759
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                1     2530   17759
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     6763   17759
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               1     2182   17759
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                0      639    1560
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control                1      123    1560
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               0      690    1560
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      108    1560
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                0      795    4006
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                1      251    4006
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      803    4006
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      287    4006
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  0     1362    4006
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  1      508    4006
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                0      110     551
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control                1       23     551
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      131     551
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                    1       27     551
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  0      209     551
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                  1       51     551
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      108     455
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1        9     455
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      100     455
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1        6     455
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      208     455
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       24     455
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Control                0     1606    4998
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Control                1      110    4998
0          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0     1074    4998
0          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1       65    4998
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0     1975    4998
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1      168    4998
1          6-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      106     332
1          6-24 months   ki1000111-WASH-Kenya        KENYA        Control                1        4     332
1          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0       72     332
1          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1        2     332
1          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      142     332
1          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1        6     332
1          6-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control                0       89     141
1          6-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control                1       42     141
1          6-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal               0       10     141
1          6-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal               1        0     141
0          6-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control                0      121     232
0          6-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control                1       92     232
0          6-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal               0       19     232
0          6-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal               1        0     232
0          6-24 months   ki1000304-VITAMIN-A         INDIA        Control                0       32      76
0          6-24 months   ki1000304-VITAMIN-A         INDIA        Control                1        9      76
0          6-24 months   ki1000304-VITAMIN-A         INDIA        VitA                   0       29      76
0          6-24 months   ki1000304-VITAMIN-A         INDIA        VitA                   1        6      76
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       95     467
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1       22     467
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0      262     467
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       88     467
0          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0        6      30
0          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1        3      30
0          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0       15      30
0          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1        6      30
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0     4698   11953
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1     1149   11953
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     4815   11953
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1     1291   11953
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0      549    1322
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1       80    1322
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0      602    1322
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1       91    1322
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      679    3734
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1      335    3734
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      734    3734
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      290    3734
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0     1177    3734
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1      519    3734
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      109     571
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1       32     571
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      129     571
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1       40     571
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0      206     571
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1       55     571
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                0      108     515
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control                1       19     515
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    0      100     515
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                    1       24     515
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  0      208     515
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                  1       56     515
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Control                0     1616    6322
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Control                1      554    6322
0          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0     1081    6322
0          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1      303    6322
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0     1991    6322
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1      777    6322
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Control                0      105     377
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Control                1       22     377
1          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    0       72     377
1          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                    1       15     377
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  0      142     377
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                  1       21     377
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control                0      100     230
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control                1      104     230
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal               0       21     230
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal               1        5     230
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control                0      130     435
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control                1      241     435
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal               0       49     435
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal               1       15     435
0          0-24 months   ki1000304-VITAMIN-A         INDIA        Control                0       32     145
0          0-24 months   ki1000304-VITAMIN-A         INDIA        Control                1       44     145
0          0-24 months   ki1000304-VITAMIN-A         INDIA        VitA                   0       27     145
0          0-24 months   ki1000304-VITAMIN-A         INDIA        VitA                   1       42     145
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0       96     587
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1       56     587
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0      260     587
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1      175     587
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                0        5      54
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control                1        9      54
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  0       18      54
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                  1       22      54
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0     5985   21032
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1     4442   21032
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0     6381   21032
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1     4224   21032
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                0      652    1852
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control                1      240    1852
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               0      714    1852
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal               1      246    1852
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      619    4777
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1      651    4777
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      655    4777
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1      649    4777
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0     1060    4777
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1     1143    4777
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                0      104     647
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control                1       56     647
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    0      119     647
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                    1       67     647
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  0      192     647
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                  1      109     647


The following strata were considered:

* impfloor: 0, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impfloor: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impfloor: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 0, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impfloor: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impfloor: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impfloor: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impfloor: 1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impfloor: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impfloor: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impfloor: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* impfloor: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impfloor: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impfloor: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impfloor: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impfloor: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/31614b9c-7d0e-4a78-aa3e-6d96095a5ea1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/31614b9c-7d0e-4a78-aa3e-6d96095a5ea1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/31614b9c-7d0e-4a78-aa3e-6d96095a5ea1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/31614b9c-7d0e-4a78-aa3e-6d96095a5ea1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


impfloor   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2552995   0.2369524   0.2736467
0          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2189306   0.1971429   0.2407184
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.2807081   0.2639672   0.2974490
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                0.6495957   0.6081431   0.6910483
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal             NA                0.2343750   0.2190884   0.2496616
0          0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                0.5789474   0.4675611   0.6903337
0          0-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.6086957   0.4931420   0.7242493
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.6428571   0.5771738   0.7085405
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.5500000   0.4347261   0.6652739
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.4260094   0.4198776   0.4321412
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.3983027   0.3924013   0.4042041
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.5125984   0.4758870   0.5493098
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4976994   0.4641135   0.5312852
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.5188379   0.4942104   0.5434655
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                0.2727273   0.2027379   0.3427167
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             NA                0.1891892   0.1093682   0.2690101
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.3571429   0.2914595   0.4228262
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.2500000   0.1496670   0.3503330
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2870433   0.2815543   0.2925324
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2439352   0.2389127   0.2489576
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2399618   0.2086936   0.2712299
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2633028   0.2361122   0.2904933
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2716578   0.2490490   0.2942665
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.0641026   0.0525125   0.0756926
0          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.0570676   0.0435946   0.0705406
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.0783948   0.0670134   0.0897762
0          6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                0.2195122   0.0919727   0.3470517
0          6-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.1714286   0.0457397   0.2971174
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.1965110   0.1908148   0.2022073
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2114314   0.2049876   0.2178751
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3303748   0.2934285   0.3673210
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2832031   0.2518613   0.3145450
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3060142   0.2797966   0.3322317
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1496063   0.0875118   0.2117008
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1935484   0.1239429   0.2631538
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.2121212   0.1627595   0.2614829
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.1732283   0.1073223   0.2391344
1          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.1724138   0.0929338   0.2518938
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.1288344   0.0773355   0.1803332
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                0.5098039   0.4488266   0.5707812
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal             NA                0.1923077   0.1751454   0.2094699
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.3684211   0.3485469   0.3882952
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.4022989   0.3681213   0.4364764
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2690583   0.2520928   0.2860238
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2562500   0.2372244   0.2752756
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3500000   0.2638289   0.4361711
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3602151   0.2833533   0.4370768
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3621262   0.2960444   0.4282081
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.1250000   0.1113510   0.1386490
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.1267281   0.1035287   0.1499275
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.1614173   0.1464246   0.1764100
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.1353383   0.1195944   0.1510823
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.1729323   0.0967272   0.2491374
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.1708861   0.1062011   0.2355711
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.1961538   0.1393271   0.2529806
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.0769231   0.0285860   0.1252601
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.0566038   0.0125642   0.1006433
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1034483   0.0642171   0.1426794
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.1880342   0.1702769   0.2057915
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.2514286   0.2173285   0.2855286
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.1271860   0.1121597   0.1422123
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.1313131   0.1155270   0.1470993
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2269504   0.1444065   0.3094942
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2366864   0.1647857   0.3085871
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2107280   0.1540476   0.2674084


### Parameter: E(Y)


impfloor   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0          0-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2584625   0.2476700   0.2692550
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     NA                   NA                0.5885057   0.5422079   0.6348036
0          0-24 months   ki1000304-VITAMIN-A         INDIA        NA                   NA                0.5931034   0.5128666   0.6733403
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.5740741   0.4409486   0.7071995
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.4120388   0.4034338   0.4206438
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.5114088   0.4938480   0.5289697
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     NA                   NA                0.2203390   0.1136713   0.3270066
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.2777778   0.1571925   0.3983631
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2653303   0.2576977   0.2729628
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2611083   0.2458097   0.2764070
0          6-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.0686275   0.0616177   0.0756372
0          6-24 months   ki1000304-VITAMIN-A         INDIA        NA                   NA                0.1973684   0.1072913   0.2874455
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2041329   0.1955387   0.2127271
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3063739   0.2885292   0.3242185
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1922330   0.1581668   0.2262992
1          0-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.1538462   0.1173773   0.1903150
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     NA                   NA                0.4739130   0.4092422   0.5385839
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.3935264   0.3539722   0.4330806
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2624190   0.2369321   0.2879059
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3585781   0.3151245   0.4020316
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.1262799   0.0993631   0.1531967
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.1480769   0.1263449   0.1698089
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.1833031   0.1458593   0.2207468
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.0857143   0.0599637   0.1114649
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.2355460   0.1970187   0.2740733
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.1293495   0.1075511   0.1511479
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2224168   0.1831216   0.2617120


### Parameter: RR


impfloor   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
0          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.8575442   0.7584815   0.9695452
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.0995245   1.0014909   1.2071543
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal             Control           0.3608013   0.3293364   0.3952724
0          0-24 months   ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0          0-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 Control           1.0513834   0.8023755   1.3776680
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           0.8555556   0.6776179   1.0802183
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9349622   0.9158229   0.9545015
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9709343   0.8798797   1.0714117
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0121723   0.9287973   1.1030316
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             Control           0.6936937   0.4233512   1.1366708
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                Control           0.7000000   0.4501654   1.0884889
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8498200   0.8262600   0.8740517
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0972696   0.9292124   1.2957217
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1320877   0.9699067   1.3213875
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
0          6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.8902546   0.6612545   1.1985601
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.2229585   0.9698577   1.5421101
0          6-24 months   ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0          6-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 Control           0.7809524   0.3064415   1.9902223
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0759263   1.0315948   1.1221628
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.8572178   0.7324229   1.0032761
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9262637   0.8045484   1.0663926
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           1.2937182   0.7470210   2.2405082
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.4178628   0.8810103   2.2818518
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.9952978   0.5474847   1.8093980
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           0.7437256   0.4283021   1.2914432
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal             Control           0.3772189   0.3249241   0.4379303
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           1.0919540   0.9874135   1.2075626
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9523958   0.8640689   1.0497518
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0291859   0.7429613   1.4256780
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0346464   0.7615898   1.4056034
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                Control           1.0138249   0.8192007   1.2546875
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8384376   0.7225181   0.9729549
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9881673   0.5527629   1.7665343
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1342809   0.6694223   1.9219455
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7358491   0.2706771   2.0004421
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.3448276   0.6455297   2.8016702
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           1.3371429   1.1334549   1.5774346
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0324495   0.8723082   1.2219901
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0428994   0.6491679   1.6754358
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9285201   0.5906891   1.4595657


### Parameter: PAR


impfloor   agecat        studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0031630   -0.0117370    0.0180630
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0610899   -0.0817096   -0.0404703
0          0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                 0.0141561   -0.0622573    0.0905695
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0687831   -0.1845764    0.0470102
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0139706   -0.0200601   -0.0078811
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0011896   -0.0318746    0.0294954
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0523883   -0.1328834    0.0281068
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0793651   -0.1804913    0.0217611
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0217131   -0.0270803   -0.0163459
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0211466   -0.0053396    0.0476328
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0045249   -0.0050263    0.0140761
0          6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0221438   -0.1047858    0.0604982
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0076218    0.0011885    0.0140552
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0240009   -0.0546952    0.0066934
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0426267   -0.0131817    0.0984351
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0193822   -0.0717952    0.0330308
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0358909   -0.0574336   -0.0143482
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0251054   -0.0090933    0.0593040
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0066393   -0.0256530    0.0123744
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0085781   -0.0665431    0.0836992
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0012799   -0.0219197    0.0244794
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0133404   -0.0290897    0.0024089
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0103708   -0.0560256    0.0767671
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.0087912   -0.0336111    0.0511935
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0475119    0.0133207    0.0817030
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0021635   -0.0136250    0.0179519
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0045335   -0.0751867    0.0661196


### Parameter: PAF


impfloor   agecat        studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------  ------------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0122376   -0.0471256    0.0682355
0          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.1038052   -0.1438747   -0.0651392
0          0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                 0.0238678   -0.1139430    0.1446294
0          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.1198157   -0.3705878    0.0850735
0          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0339060   -0.0493036   -0.0187344
0          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0023261   -0.0641516    0.0559075
0          0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.2377622   -0.7926404    0.1453638
0          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.2857143   -0.8573326    0.1099810
0          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0818342   -0.1039875   -0.0601254
0          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0809878   -0.0266586    0.1773472
0          6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0659341   -0.0839807    0.1951156
0          6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.1121951   -0.6185626    0.2357552
0          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0373376    0.0064975    0.0672203
0          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0783386   -0.1829618    0.0170316
1          0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.2217450   -0.1276955    0.4629039
1          0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.1259843   -0.5227779    0.1674160
1          0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0757330   -0.1267678   -0.0270098
1          0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0637959   -0.0212727    0.1417785
1          0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0253003   -0.1023663    0.0463780
1          0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0239224   -0.2097225    0.2124413
1          0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0101351   -0.1894983    0.1762641
1          0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0900910   -0.2128092    0.0202099
1          0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0565771   -0.3852644    0.3574896
1          6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                 0.1025641   -0.5560114    0.4824002
1          6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.2017094    0.0758503    0.3104278
1          6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0167257   -0.1109425    0.1297225
1          6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0203831   -0.3928295    0.2524701
