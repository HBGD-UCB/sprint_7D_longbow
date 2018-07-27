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

* safeh20
* agecat
* studyid
* country

## Data Summary

safeh20   agecat      studyid                     country        tr          stunted   n_cell       n
--------  ----------  --------------------------  -------------  ---------  --------  -------  ------
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control           0      251     691
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control           1      122     691
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal          0      239     691
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal          1       79     691
1         24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control           0        0       3
1         24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control           1        1       3
1         24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal          0        1       3
1         24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal          1        1       3
1         Birth       ki1000125-AgaKhanUniv       PAKISTAN       Control           0        7      11
1         Birth       ki1000125-AgaKhanUniv       PAKISTAN       Maternal          0        4      11
1         6 months    ki1000304-VITAMIN-A         INDIA          Control           0      811    2503
1         6 months    ki1000304-VITAMIN-A         INDIA          Control           1      451    2503
1         6 months    ki1000304-VITAMIN-A         INDIA          VitA              0      830    2503
1         6 months    ki1000304-VITAMIN-A         INDIA          VitA              1      411    2503
0         6 months    ki1000304-VITAMIN-A         INDIA          Control           0        2       5
0         6 months    ki1000304-VITAMIN-A         INDIA          Control           1        1       5
0         6 months    ki1000304-VITAMIN-A         INDIA          VitA              0        1       5
0         6 months    ki1000304-VITAMIN-A         INDIA          VitA              1        1       5
1         6 months    ki1000304-ZnMort            INDIA          Control           0       47     124
1         6 months    ki1000304-ZnMort            INDIA          Control           1       24     124
1         6 months    ki1000304-ZnMort            INDIA          Zinc              0       35     124
1         6 months    ki1000304-ZnMort            INDIA          Zinc              1       18     124
1         24 months   ki1000304-ZnMort            INDIA          Control           0       22     122
1         24 months   ki1000304-ZnMort            INDIA          Control           1       42     122
1         24 months   ki1000304-ZnMort            INDIA          Zinc              0       29     122
1         24 months   ki1000304-ZnMort            INDIA          Zinc              1       29     122
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control           0       43     355
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control           1       47     355
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other             0      161     355
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other             1      104     355
1         6 months    ki1017093b-PROVIDE          BANGLADESH     Control           0        8      45
1         6 months    ki1017093b-PROVIDE          BANGLADESH     Control           1        2      45
1         6 months    ki1017093b-PROVIDE          BANGLADESH     Other             0       27      45
1         6 months    ki1017093b-PROVIDE          BANGLADESH     Other             1        8      45
1         24 months   ki1017093b-PROVIDE          BANGLADESH     Other             0        2       2
0         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              0      299     337
0         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              1       38     337
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              0      393     644
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              1      251     644
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              0      274     387
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              1      113     387
1         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              0      176     200
1         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              1       24     200
1         6 months    ki1148112-iLiNS-DOSE        MALAWI         Control           0      141    1231
1         6 months    ki1148112-iLiNS-DOSE        MALAWI         Control           1       70    1231
1         6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS               0      713    1231
1         6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS               1      307    1231
1         24 months   ki1148112-iLiNS-DOSE        MALAWI         Control           0       54     663
1         24 months   ki1148112-iLiNS-DOSE        MALAWI         Control           1       58     663
1         24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS               0      280     663
1         24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS               1      271     663
0         6 months    ki1148112-iLiNS-DOSE        MALAWI         Control           0        8      88
0         6 months    ki1148112-iLiNS-DOSE        MALAWI         Control           1        4      88
0         6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS               0       56      88
0         6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS               1       20      88
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         Control           0        2      48
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         Control           1        1      48
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS               0       18      48
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS               1       27      48
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control           0        7      38
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control           1        6      38
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          0       16      38
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          1        9      38
1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control           0        0       4
1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control           1        1       4
1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          0        2       4
1         24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          1        1       4
0         6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control           0        2       4
0         6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control           1        0       4
0         6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          0        1       4
0         6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          1        1       4
1         6 months    ki1148112-LCNI-5            MALAWI         Control           0      118     672
1         6 months    ki1148112-LCNI-5            MALAWI         Control           1       58     672
1         6 months    ki1148112-LCNI-5            MALAWI         LNS               0      218     672
1         6 months    ki1148112-LCNI-5            MALAWI         LNS               1      120     672
1         6 months    ki1148112-LCNI-5            MALAWI         Other             0       92     672
1         6 months    ki1148112-LCNI-5            MALAWI         Other             1       66     672
1         24 months   ki1148112-LCNI-5            MALAWI         Control           0       59     315
1         24 months   ki1148112-LCNI-5            MALAWI         Control           1       36     315
1         24 months   ki1148112-LCNI-5            MALAWI         LNS               0       92     315
1         24 months   ki1148112-LCNI-5            MALAWI         LNS               1       55     315
1         24 months   ki1148112-LCNI-5            MALAWI         Other             0       47     315
1         24 months   ki1148112-LCNI-5            MALAWI         Other             1       26     315
0         6 months    ki1148112-LCNI-5            MALAWI         Control           0       15     144
0         6 months    ki1148112-LCNI-5            MALAWI         Control           1        9     144
0         6 months    ki1148112-LCNI-5            MALAWI         LNS               0       46     144
0         6 months    ki1148112-LCNI-5            MALAWI         LNS               1       27     144
0         6 months    ki1148112-LCNI-5            MALAWI         Other             0       31     144
0         6 months    ki1148112-LCNI-5            MALAWI         Other             1       16     144
0         24 months   ki1148112-LCNI-5            MALAWI         Control           0       10      67
0         24 months   ki1148112-LCNI-5            MALAWI         Control           1        4      67
0         24 months   ki1148112-LCNI-5            MALAWI         LNS               0       17      67
0         24 months   ki1148112-LCNI-5            MALAWI         LNS               1       15      67
0         24 months   ki1148112-LCNI-5            MALAWI         Other             0       15      67
0         24 months   ki1148112-LCNI-5            MALAWI         Other             1        6      67
1         Birth       kiGH5241-JiVitA-3           BANGLADESH     Control           0     6403   19558
1         Birth       kiGH5241-JiVitA-3           BANGLADESH     Control           1     3319   19558
1         Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal          0     6836   19558
1         Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal          1     3000   19558
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control           0     6116   16736
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control           1     2171   16736
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal          0     6416   16736
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal          1     2033   16736
1         24 months   kiGH5241-JiVitA-3           BANGLADESH     Control           0       24      98
1         24 months   kiGH5241-JiVitA-3           BANGLADESH     Control           1       21      98
1         24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal          0       23      98
1         24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal          1       30      98
0         Birth       kiGH5241-JiVitA-3           BANGLADESH     Control           0        8      35
0         Birth       kiGH5241-JiVitA-3           BANGLADESH     Control           1        4      35
0         Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal          0       12      35
0         Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal          1       11      35
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control           0        4      20
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control           1        2      20
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal          0        8      20
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal          1        6      20
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control           0      950    4791
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control           1      298    4791
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS               0     1002    4791
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS               1      321    4791
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Other             0     1626    4791
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Other             1      594    4791
1         Birth       kiGH5241-JiVitA-4           BANGLADESH     Control           0      155     822
1         Birth       kiGH5241-JiVitA-4           BANGLADESH     Control           1       69     822
1         Birth       kiGH5241-JiVitA-4           BANGLADESH     LNS               0      153     822
1         Birth       kiGH5241-JiVitA-4           BANGLADESH     LNS               1       74     822
1         Birth       kiGH5241-JiVitA-4           BANGLADESH     Other             0      267     822
1         Birth       kiGH5241-JiVitA-4           BANGLADESH     Other             1      104     822
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control           0      164    1093
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control           1      121    1093
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS               0      183    1093
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS               1      119    1093
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Other             0      301    1093
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Other             1      205    1093
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS               0        1       1
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS               0        1       1
1         6 months    iLiNS_DYADM_LNS             MALAWI         Control           0        7      27
1         6 months    iLiNS_DYADM_LNS             MALAWI         Control           1        6      27
1         6 months    iLiNS_DYADM_LNS             MALAWI         LNS               0        7      27
1         6 months    iLiNS_DYADM_LNS             MALAWI         LNS               1        7      27
1         24 months   iLiNS_DYADM_LNS             MALAWI         Control           0        0       3
1         24 months   iLiNS_DYADM_LNS             MALAWI         Control           1        1       3
1         24 months   iLiNS_DYADM_LNS             MALAWI         LNS               0        2       3
1         24 months   iLiNS_DYADM_LNS             MALAWI         LNS               1        0       3
0         6 months    iLiNS_DYADM_LNS             MALAWI         Control           0        2       2


The following strata were considered:

* safeh20: 0, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 0, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 0, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 0, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* safeh20: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* safeh20: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* safeh20: 1, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* safeh20: 1, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* safeh20: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* safeh20: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* safeh20: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* safeh20: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* safeh20: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* safeh20: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* safeh20: 0, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* safeh20: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* safeh20: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     393 251
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     299  38
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     274 113
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     176  24
```




# Results Detail

## Results Plots
![](/tmp/ad3cd58c-d9fa-4824-8c6a-e8239631dc79/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ad3cd58c-d9fa-4824-8c6a-e8239631dc79/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ad3cd58c-d9fa-4824-8c6a-e8239631dc79/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ad3cd58c-d9fa-4824-8c6a-e8239631dc79/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


safeh20   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    ki1148112-LCNI-5           MALAWI       Control              NA                0.3750000   0.1806380   0.5693620
0         6 months    ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3698630   0.2587313   0.4809947
0         6 months    ki1148112-LCNI-5           MALAWI       Other                NA                0.3404255   0.2044830   0.4763681
1         Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.3413907   0.3361336   0.3466477
1         Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.3050020   0.2996439   0.3103601
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.3080357   0.2378939   0.3781775
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3259912   0.2564599   0.3955224
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2803235   0.2294740   0.3311729
1         6 months    iLiNS_DYADM_LNS            MALAWI       Control              NA                0.4615385   0.3285749   0.5945020
1         6 months    iLiNS_DYADM_LNS            MALAWI       LNS                  NA                0.5000000   0.3616072   0.6383928
1         6 months    ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                0.3270777   0.3013592   0.3527963
1         6 months    ki1000125-AgaKhanUniv      PAKISTAN     Maternal             NA                0.2484277   0.2265559   0.2702994
1         6 months    ki1000304-VITAMIN-A        INDIA        Control              NA                0.3573693   0.3440358   0.3707027
1         6 months    ki1000304-VITAMIN-A        INDIA        VitA                 NA                0.3311845   0.3181993   0.3441697
1         6 months    ki1000304-ZnMort           INDIA        Control              NA                0.3380282   0.2275508   0.4485056
1         6 months    ki1000304-ZnMort           INDIA        Zinc                 NA                0.3396226   0.2116071   0.4676382
1         6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.5222222   0.4960227   0.5484218
1         6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.3924528   0.3485048   0.4364008
1         6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.3317536   0.3208596   0.3426475
1         6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.3009804   0.2776469   0.3243139
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                0.4615385   0.3675859   0.5554910
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal             NA                0.3600000   0.2345512   0.4854488
1         6 months    ki1148112-LCNI-5           MALAWI       Control              NA                0.3295455   0.2600498   0.3990411
1         6 months    ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3550296   0.3039773   0.4060819
1         6 months    ki1148112-LCNI-5           MALAWI       Other                NA                0.4177215   0.3407639   0.4946792
1         6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.2619766   0.2561128   0.2678404
1         6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.2406202   0.2350636   0.2461768
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2387821   0.2116499   0.2659142
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2426304   0.2167159   0.2685449
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2675676   0.2456408   0.2894943
1         24 months   ki1000304-ZnMort           INDIA        Control              NA                0.6562500   0.5394074   0.7730926
1         24 months   ki1000304-ZnMort           INDIA        Zinc                 NA                0.5000000   0.3707914   0.6292086
1         24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.5178571   0.5022126   0.5335017
1         24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.4918330   0.4571154   0.5265507
1         24 months   ki1148112-LCNI-5           MALAWI       Control              NA                0.3789474   0.2812393   0.4766554
1         24 months   ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3741497   0.2957999   0.4524994
1         24 months   ki1148112-LCNI-5           MALAWI       Other                NA                0.3561644   0.2461398   0.4661890
1         24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.4666667   0.3967870   0.5365463
1         24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.5660377   0.4951086   0.6369669
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.4245614   0.3557302   0.4933926
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3940397   0.3316967   0.4563827
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.4051383   0.3537830   0.4564937


### Parameter: E(Y)


safeh20   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3611111   0.2823860   0.4398362
1         Birth       kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.3230903   0.3154243   0.3307563
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3004866   0.2649179   0.3360553
1         6 months    iLiNS_DYADM_LNS            MALAWI       NA                   NA                0.4814815   0.2894231   0.6735399
1         6 months    ki1000125-AgaKhanUniv      PAKISTAN     NA                   NA                0.2908828   0.2569951   0.3247704
1         6 months    ki1000304-VITAMIN-A        INDIA        NA                   NA                0.3443867   0.3257679   0.3630055
1         6 months    ki1000304-ZnMort           INDIA        NA                   NA                0.3387097   0.2550713   0.4223480
1         6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4253521   0.3738504   0.4768538
1         6 months    ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.3062551   0.2804956   0.3320146
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI       NA                   NA                0.3947368   0.2372395   0.5522342
1         6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3630952   0.3267092   0.3994812
1         6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2511950   0.2430674   0.2593226
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2531831   0.2388346   0.2675315
1         24 months   ki1000304-ZnMort           INDIA        NA                   NA                0.5819672   0.4940832   0.6698512
1         24 months   ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.4962293   0.4581423   0.5343163
1         24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.3714286   0.3179847   0.4248725
1         24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.5204082   0.4200084   0.6208080
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.4071363   0.3727269   0.4415458


### Parameter: RR


safeh20   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1148112-LCNI-5           MALAWI       LNS                  Control           0.9863014   0.5417841   1.7955313
0         6 months    ki1148112-LCNI-5           MALAWI       Other                Control           0.9078014   0.4718839   1.7464114
1         Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.8934106   0.8727770   0.9145320
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0582902   0.7746526   1.4457813
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.9100355   0.6801878   1.2175531
1         6 months    iLiNS_DYADM_LNS            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    iLiNS_DYADM_LNS            MALAWI       LNS                  Control           1.0833333   0.7265391   1.6153447
1         6 months    ki1000125-AgaKhanUniv      PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000125-AgaKhanUniv      PAKISTAN     Maternal             Control           0.7595371   0.6749688   0.8547010
1         6 months    ki1000304-VITAMIN-A        INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000304-VITAMIN-A        INDIA        VitA                 Control           0.9267292   0.8779048   0.9782690
1         6 months    ki1000304-ZnMort           INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000304-ZnMort           INDIA        Zinc                 Control           1.0047170   0.6100649   1.6546701
1         6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           0.7515054   0.6647234   0.8496172
1         6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.9072409   0.8339848   0.9869317
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal             Control           0.7800000   0.5209863   1.1677850
1         6 months    ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1148112-LCNI-5           MALAWI       LNS                  Control           1.0773312   0.8346381   1.3905936
1         6 months    ki1148112-LCNI-5           MALAWI       Other                Control           1.2675687   0.9579853   1.6771974
1         6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9184797   0.8894069   0.9485029
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0161165   0.8693787   1.1876214
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.1205514   0.9740644   1.2890683
1         24 months   ki1000304-ZnMort           INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1000304-ZnMort           INDIA        Zinc                 Control           0.7619048   0.5566890   1.0427705
1         24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.9497465   0.8795531   1.0255419
1         24 months   ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1148112-LCNI-5           MALAWI       LNS                  Control           0.9873394   0.7082868   1.3763337
1         24 months   ki1148112-LCNI-5           MALAWI       Other                Control           0.9398782   0.6285209   1.4054760
1         24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           1.2129380   0.9978297   1.4744185
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.9281101   0.7397913   1.1643668
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.9542515   0.7768732   1.1721293


### Parameter: PAR


safeh20   agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0         6 months    ki1148112-LCNI-5           MALAWI       Control              NA                -0.0138889   -0.1910386    0.1632608
1         Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0183004   -0.0239006   -0.0127001
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0075491   -0.0667305    0.0516323
1         6 months    iLiNS_DYADM_LNS            MALAWI       Control              NA                 0.0199430   -0.1186468    0.1585328
1         6 months    ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                -0.0361950   -0.0582614   -0.0141285
1         6 months    ki1000304-VITAMIN-A        INDIA        Control              NA                -0.0129825   -0.0259778    0.0000128
1         6 months    ki1000304-ZnMort           INDIA        Control              NA                 0.0006815   -0.0715933    0.0729563
1         6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0968701   -0.1412098   -0.0525304
1         6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0254985   -0.0488410   -0.0021560
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                -0.0668016   -0.1932070    0.0596038
1         6 months    ki1148112-LCNI-5           MALAWI       Control              NA                 0.0335498   -0.0266480    0.0937475
1         6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0107816   -0.0164230   -0.0051401
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0144010   -0.0092212    0.0380232
1         24 months   ki1000304-ZnMort           INDIA        Control              NA                -0.0742828   -0.1582600    0.0096945
1         24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0216279   -0.0563535    0.0130977
1         24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.0075188   -0.0890338    0.0739962
1         24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0537415   -0.0181280    0.1256110
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0174251   -0.0762774    0.0414272


### Parameter: PAF


safeh20   agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0         6 months    ki1148112-LCNI-5           MALAWI       Control              NA                -0.0384615   -0.6655437    0.3525223
1         Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0566416   -0.0751364   -0.0384650
1         Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0251229   -0.2421633    0.1539945
1         6 months    iLiNS_DYADM_LNS            MALAWI       Control              NA                 0.0414201   -0.2786250    0.2813566
1         6 months    ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                -0.1244315   -0.2138125   -0.0416322
1         6 months    ki1000304-VITAMIN-A        INDIA        Control              NA                -0.0376975   -0.0776311    0.0007562
1         6 months    ki1000304-ZnMort           INDIA        Control              NA                 0.0020121   -0.2358992    0.1941253
1         6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.2277410   -0.3634831   -0.1055128
1         6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0832590   -0.1691094   -0.0037127
1         6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                -0.1692308   -0.6135243    0.1527239
1         6 months    ki1148112-LCNI-5           MALAWI       Control              NA                 0.0923994   -0.0895101    0.2439365
1         6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0429211   -0.0666282   -0.0197409
1         6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0568798   -0.0411079    0.1456450
1         24 months   ki1000304-ZnMort           INDIA        Control              NA                -0.1276408   -0.2846843    0.0102051
1         24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0435845   -0.1192431    0.0269598
1         24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.0202429   -0.2651031    0.1772247
1         24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.1032680   -0.0303704    0.2195735
1         24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0427991   -0.1978087    0.0921505
