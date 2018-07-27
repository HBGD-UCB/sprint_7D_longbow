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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* cleanck
* agecat
* studyid
* country

## Data Summary

cleanck   agecat      studyid                  country      tr          stunted   n_cell      n
--------  ----------  -----------------------  -----------  ---------  --------  -------  -----
0         24 months   ki1000111-WASH-Kenya     KENYA        Control           0      518   2230
0         24 months   ki1000111-WASH-Kenya     KENYA        Control           1      232   2230
0         24 months   ki1000111-WASH-Kenya     KENYA        LNS               0      352   2230
0         24 months   ki1000111-WASH-Kenya     KENYA        LNS               1      144   2230
0         24 months   ki1000111-WASH-Kenya     KENYA        Other             0      665   2230
0         24 months   ki1000111-WASH-Kenya     KENYA        Other             1      319   2230
0         6 months    ki1000111-WASH-Kenya     KENYA        Control           0       23     73
0         6 months    ki1000111-WASH-Kenya     KENYA        Control           1        2     73
0         6 months    ki1000111-WASH-Kenya     KENYA        LNS               0       11     73
0         6 months    ki1000111-WASH-Kenya     KENYA        LNS               1        3     73
0         6 months    ki1000111-WASH-Kenya     KENYA        Other             0       28     73
0         6 months    ki1000111-WASH-Kenya     KENYA        Other             1        6     73
1         24 months   ki1000111-WASH-Kenya     KENYA        Control           0        7     31
1         24 months   ki1000111-WASH-Kenya     KENYA        Control           1        0     31
1         24 months   ki1000111-WASH-Kenya     KENYA        LNS               0        2     31
1         24 months   ki1000111-WASH-Kenya     KENYA        LNS               1        2     31
1         24 months   ki1000111-WASH-Kenya     KENYA        Other             0       19     31
1         24 months   ki1000111-WASH-Kenya     KENYA        Other             1        1     31
1         6 months    ki1000111-WASH-Kenya     KENYA        LNS               0        1      1
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           0      108    219
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           1       50    219
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0       45    219
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          1       16    219
1         6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           0       16     48
1         6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           1        5     48
1         6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0       23     48
1         6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          1        4     48
0         24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control           1        1      1
0         Birth       ki1000125-AgaKhanUniv    PAKISTAN     Control           0        2      4
0         Birth       ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0        2      4
1         6 months    ki1000304-VITAMIN-A      INDIA        Control           0      773   2386
1         6 months    ki1000304-VITAMIN-A      INDIA        Control           1      432   2386
1         6 months    ki1000304-VITAMIN-A      INDIA        VitA              0      791   2386
1         6 months    ki1000304-VITAMIN-A      INDIA        VitA              1      390   2386
0         6 months    ki1000304-VITAMIN-A      INDIA        Control           0       40    122
0         6 months    ki1000304-VITAMIN-A      INDIA        Control           1       20    122
0         6 months    ki1000304-VITAMIN-A      INDIA        VitA              0       40    122
0         6 months    ki1000304-VITAMIN-A      INDIA        VitA              1       22    122
1         6 months    ki1017093b-PROVIDE       BANGLADESH   Control           0        6     37
1         6 months    ki1017093b-PROVIDE       BANGLADESH   Control           1        2     37
1         6 months    ki1017093b-PROVIDE       BANGLADESH   Other             0       24     37
1         6 months    ki1017093b-PROVIDE       BANGLADESH   Other             1        5     37
0         6 months    ki1017093b-PROVIDE       BANGLADESH   Control           0        2      9
0         6 months    ki1017093b-PROVIDE       BANGLADESH   Control           1        0      9
0         6 months    ki1017093b-PROVIDE       BANGLADESH   Other             0        4      9
0         6 months    ki1017093b-PROVIDE       BANGLADESH   Other             1        3      9
1         24 months   ki1017093b-PROVIDE       BANGLADESH   Other             0        2      2
0         6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           0      204   1802
0         6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           1       97   1802
0         6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               0     1054   1802
0         6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               1      447   1802
0         24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           0       62    766
0         24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           1       65    766
0         24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               0      318    766
0         24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               1      321    766
1         6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               0        8      9
1         6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               1        1      9
1         24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               0        1      2
1         24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               1        1      2
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           0       78    322
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           1       22    322
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0      175    322
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          1       47    322
0         24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control           0        0     10
0         24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control           1        2     10
0         24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0        4     10
0         24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          1        4     10
0         6 months    iLiNS_DYADM_LNS          MALAWI       Control           0       78    208
0         6 months    iLiNS_DYADM_LNS          MALAWI       Control           1       22    208
0         6 months    iLiNS_DYADM_LNS          MALAWI       LNS               0       90    208
0         6 months    iLiNS_DYADM_LNS          MALAWI       LNS               1       18    208
0         24 months   iLiNS_DYADM_LNS          MALAWI       Control           0        0      6
0         24 months   iLiNS_DYADM_LNS          MALAWI       Control           1        2      6
0         24 months   iLiNS_DYADM_LNS          MALAWI       LNS               0        2      6
0         24 months   iLiNS_DYADM_LNS          MALAWI       LNS               1        2      6


The following strata were considered:

* cleanck: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 0, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 0, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* cleanck: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 1, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* cleanck: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* cleanck: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* cleanck: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* cleanck: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* cleanck: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* cleanck: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* cleanck: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/67514951-1588-40f4-b9df-d603b30c9556/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/67514951-1588-40f4-b9df-d603b30c9556/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/67514951-1588-40f4-b9df-d603b30c9556/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/67514951-1588-40f4-b9df-d603b30c9556/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


cleanck   agecat      studyid                  country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -----------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    iLiNS_DYADM_LNS          MALAWI     Control              NA                0.2200000   0.1808718   0.2591282
0         6 months    iLiNS_DYADM_LNS          MALAWI     LNS                  NA                0.1666667   0.1300839   0.2032495
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN   Control              NA                0.3164557   0.2640153   0.3688961
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN   Maternal             NA                0.2622951   0.2314775   0.2931127
0         6 months    ki1000304-VITAMIN-A      INDIA      Control              NA                0.3333333   0.2135618   0.4531048
0         6 months    ki1000304-VITAMIN-A      INDIA      VitA                 NA                0.3548387   0.2352503   0.4744271
0         6 months    ki1148112-iLiNS-DOSE     MALAWI     Control              NA                0.3222591   0.3134379   0.3310804
0         6 months    ki1148112-iLiNS-DOSE     MALAWI     LNS                  NA                0.2978015   0.2785263   0.3170766
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI     Control              NA                0.2200000   0.1947462   0.2452538
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI     Maternal             NA                0.2117117   0.1746044   0.2488190
0         24 months   ki1000111-WASH-Kenya     KENYA      Control              NA                0.3093333   0.2762459   0.3424207
0         24 months   ki1000111-WASH-Kenya     KENYA      LNS                  NA                0.2903226   0.2503672   0.3302780
0         24 months   ki1000111-WASH-Kenya     KENYA      Other                NA                0.3241870   0.2949348   0.3534392
0         24 months   ki1148112-iLiNS-DOSE     MALAWI     Control              NA                0.5118110   0.4973881   0.5262340
0         24 months   ki1148112-iLiNS-DOSE     MALAWI     LNS                  NA                0.5023474   0.4699867   0.5347082
1         6 months    ki1000304-VITAMIN-A      INDIA      Control              NA                0.3585062   0.3314236   0.3855888
1         6 months    ki1000304-VITAMIN-A      INDIA      VitA                 NA                0.3302286   0.3034008   0.3570564


### Parameter: E(Y)


cleanck   agecat      studyid                  country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -----------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    iLiNS_DYADM_LNS          MALAWI     NA                   NA                0.1923077   0.1386188   0.2459966
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN   NA                   NA                0.3013699   0.2404592   0.3622805
0         6 months    ki1000304-VITAMIN-A      INDIA      NA                   NA                0.3442623   0.2596048   0.4289198
0         6 months    ki1148112-iLiNS-DOSE     MALAWI     NA                   NA                0.3018868   0.2806848   0.3230888
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI     NA                   NA                0.2142857   0.1693983   0.2591731
0         24 months   ki1000111-WASH-Kenya     KENYA      NA                   NA                0.3116592   0.2924312   0.3308872
0         24 months   ki1148112-iLiNS-DOSE     MALAWI     NA                   NA                0.5039164   0.4684862   0.5393467
1         6 months    ki1000304-VITAMIN-A      INDIA      NA                   NA                0.3445096   0.3254380   0.3635813


### Parameter: RR


cleanck   agecat      studyid                  country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -----------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    iLiNS_DYADM_LNS          MALAWI     Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    iLiNS_DYADM_LNS          MALAWI     LNS                  Control           0.7575758   0.5711286   1.0048893
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN   Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN   Maternal             Control           0.8288525   0.6764813   1.0155438
0         6 months    ki1000304-VITAMIN-A      INDIA      Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1000304-VITAMIN-A      INDIA      VitA                 Control           1.0645161   0.6504336   1.7422141
0         6 months    ki1148112-iLiNS-DOSE     MALAWI     Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1148112-iLiNS-DOSE     MALAWI     LNS                  Control           0.9241056   0.8613933   0.9913835
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI     Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI     Maternal             Control           0.9623260   0.7804234   1.1866267
0         24 months   ki1000111-WASH-Kenya     KENYA      Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1000111-WASH-Kenya     KENYA      LNS                  Control           0.9385428   0.7884155   1.1172568
0         24 months   ki1000111-WASH-Kenya     KENYA      Other                Control           1.0480183   0.9111583   1.2054353
0         24 months   ki1148112-iLiNS-DOSE     MALAWI     Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1148112-iLiNS-DOSE     MALAWI     LNS                  Control           0.9815096   0.9148669   1.0530068
1         6 months    ki1000304-VITAMIN-A      INDIA      Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000304-VITAMIN-A      INDIA      VitA                 Control           0.9211238   0.8244026   1.0291926


### Parameter: PAR


cleanck   agecat      studyid                  country    intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -----------------------  ---------  -------------------  ---------------  -----------  -----------  -----------
0         6 months    iLiNS_DYADM_LNS          MALAWI     Control              NA                -0.0276923   -0.0644548    0.0090701
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN   Control              NA                -0.0150858   -0.0460715    0.0158999
0         6 months    ki1000304-VITAMIN-A      INDIA      Control              NA                 0.0109290   -0.0751062    0.0969641
0         6 months    ki1148112-iLiNS-DOSE     MALAWI     Control              NA                -0.0203723   -0.0396521   -0.0010926
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI     Control              NA                -0.0057143   -0.0428239    0.0313954
0         24 months   ki1000111-WASH-Kenya     KENYA      Control              NA                 0.0023259   -0.0246574    0.0293091
0         24 months   ki1148112-iLiNS-DOSE     MALAWI     Control              NA                -0.0078946   -0.0402563    0.0244671
1         6 months    ki1000304-VITAMIN-A      INDIA      Control              NA                -0.0139966   -0.0328738    0.0048806


### Parameter: PAF


cleanck   agecat      studyid                  country    intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -----------------------  ---------  -------------------  ---------------  -----------  -----------  -----------
0         6 months    iLiNS_DYADM_LNS          MALAWI     Control              NA                -0.1440000   -0.3873614    0.0566726
0         6 months    ki1000125-AgaKhanUniv    PAKISTAN   Control              NA                -0.0500575   -0.1641547    0.0528571
0         6 months    ki1000304-VITAMIN-A      INDIA      Control              NA                 0.0317460   -0.2533836    0.2520121
0         6 months    ki1148112-iLiNS-DOSE     MALAWI     Control              NA                -0.0674834   -0.1379117   -0.0014140
0         6 months    ki1148112-iLiNS-DYAD-M   MALAWI     Control              NA                -0.0266667   -0.2208200    0.1366094
0         24 months   ki1000111-WASH-Kenya     KENYA      Control              NA                 0.0074628   -0.0830048    0.0903734
0         24 months   ki1148112-iLiNS-DOSE     MALAWI     Control              NA                -0.0156664   -0.0830346    0.0475112
1         6 months    ki1000304-VITAMIN-A      INDIA      Control              NA                -0.0406276   -0.0968948    0.0127534
