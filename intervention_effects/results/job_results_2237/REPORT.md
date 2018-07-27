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

* predexfd6
* agecat
* studyid
* country

## Data Summary

predexfd6   agecat      studyid                    country      tr          stunted   n_cell       n
----------  ----------  -------------------------  -----------  ---------  --------  -------  ------
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Control           0       67     257
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Control           1       30     257
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Other             0      114     257
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Other             1       46     257
1           Birth       ki1000304b-SAS-CompFeed    INDIA        Control           0       12      36
1           Birth       ki1000304b-SAS-CompFeed    INDIA        Control           1        2      36
1           Birth       ki1000304b-SAS-CompFeed    INDIA        Other             0       20      36
1           Birth       ki1000304b-SAS-CompFeed    INDIA        Other             1        2      36
0           Birth       ki1000304b-SAS-CompFeed    INDIA        Control           0        1       1
0           6 months    ki1000304b-SAS-CompFeed    INDIA        Control           0        7      14
0           6 months    ki1000304b-SAS-CompFeed    INDIA        Control           1        3      14
0           6 months    ki1000304b-SAS-CompFeed    INDIA        Other             0        4      14
0           6 months    ki1000304b-SAS-CompFeed    INDIA        Other             1        0      14
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control           0       17     160
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control           1       24     160
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other             0       67     160
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other             1       52     160
0           6 months    ki1017093b-PROVIDE         BANGLADESH   Control           0        4      18
0           6 months    ki1017093b-PROVIDE         BANGLADESH   Control           1        0      18
0           6 months    ki1017093b-PROVIDE         BANGLADESH   Other             0       10      18
0           6 months    ki1017093b-PROVIDE         BANGLADESH   Other             1        4      18
1           6 months    ki1017093b-PROVIDE         BANGLADESH   Control           0        4      28
1           6 months    ki1017093b-PROVIDE         BANGLADESH   Control           1        2      28
1           6 months    ki1017093b-PROVIDE         BANGLADESH   Other             0       18      28
1           6 months    ki1017093b-PROVIDE         BANGLADESH   Other             1        4      28
0           24 months   ki1017093b-PROVIDE         BANGLADESH   Other             0        1       1
1           24 months   ki1017093b-PROVIDE         BANGLADESH   Other             0        1       1
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control           0      113    1014
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control           1       52    1014
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS               0      614    1014
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS               1      235    1014
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       Control           0       31     442
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       Control           1       41     442
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS               0      171     442
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS               1      199     442
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control           0       14     161
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control           1        6     161
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS               0       96     161
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS               1       45     161
0           24 months   ki1148112-iLiNS-DOSE       MALAWI       Control           0        5      59
0           24 months   ki1148112-iLiNS-DOSE       MALAWI       Control           1        2      59
0           24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS               0       22      59
0           24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS               1       30      59
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control           0       22      94
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control           1        9      94
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal          0       48      94
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal          1       15      94
1           24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control           0        2      12
1           24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control           1        1      12
1           24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal          0        7      12
1           24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal          1        2      12
0           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control           0        0       3
0           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control           1        1       3
0           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal          0        2       3
0           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal          1        0       3
0           6 months    ki1148112-LCNI-5           MALAWI       Control           0       32     225
0           6 months    ki1148112-LCNI-5           MALAWI       Control           1       21     225
0           6 months    ki1148112-LCNI-5           MALAWI       LNS               0       77     225
0           6 months    ki1148112-LCNI-5           MALAWI       LNS               1       39     225
0           6 months    ki1148112-LCNI-5           MALAWI       Other             0       36     225
0           6 months    ki1148112-LCNI-5           MALAWI       Other             1       20     225
1           6 months    ki1148112-LCNI-5           MALAWI       Control           0       11      47
1           6 months    ki1148112-LCNI-5           MALAWI       Control           1        4      47
1           6 months    ki1148112-LCNI-5           MALAWI       LNS               0       17      47
1           6 months    ki1148112-LCNI-5           MALAWI       LNS               1        6      47
1           6 months    ki1148112-LCNI-5           MALAWI       Other             0        2      47
1           6 months    ki1148112-LCNI-5           MALAWI       Other             1        7      47
0           24 months   ki1148112-LCNI-5           MALAWI       Control           0        9      44
0           24 months   ki1148112-LCNI-5           MALAWI       Control           1        5      44
0           24 months   ki1148112-LCNI-5           MALAWI       LNS               0       10      44
0           24 months   ki1148112-LCNI-5           MALAWI       LNS               1       10      44
0           24 months   ki1148112-LCNI-5           MALAWI       Other             0        8      44
0           24 months   ki1148112-LCNI-5           MALAWI       Other             1        2      44
1           24 months   ki1148112-LCNI-5           MALAWI       Control           0        2       7
1           24 months   ki1148112-LCNI-5           MALAWI       Control           1        0       7
1           24 months   ki1148112-LCNI-5           MALAWI       LNS               0        4       7
1           24 months   ki1148112-LCNI-5           MALAWI       LNS               1        1       7
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control           0     5050   15096
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control           1     2307   15096
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal          0     5515   15096
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal          1     2224   15096
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control           0     4890   13211
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control           1     1579   13211
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal          0     5257   13211
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal          1     1485   13211
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control           0     1267    3986
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control           1      857    3986
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal          0     1208    3986
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal          1      654    3986
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control           0     1195    3424
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control           1      573    3424
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal          0     1121    3424
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal          1      535    3424
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Control           0        6      40
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Control           1        7      40
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal          0       13      40
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal          1       14      40
0           24 months   kiGH5241-JiVitA-3          BANGLADESH   Control           0        7      20
0           24 months   kiGH5241-JiVitA-3          BANGLADESH   Control           1        6      20
0           24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal          0        2      20
0           24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal          1        5      20
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control           0      666    3328
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control           1      194    3328
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS               0      710    3328
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS               1      212    3328
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Other             0     1161    3328
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Other             1      385    3328
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control           0      118     619
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control           1       47     619
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS               0      120     619
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS               1       56     619
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Other             0      201     619
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Other             1       77     619
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control           0      150     898
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control           1       64     898
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS               0      175     898
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS               1       72     898
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Other             0      286     898
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Other             1      151     898
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control           0       25     148
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control           1       15     148
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS               0       22     148
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS               1       16     148
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Other             0       44     148
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Other             1       26     148
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control           0       23     198
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control           1       20     198
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS               0       37     198
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS               1       28     198
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Other             0       57     198
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Other             1       33     198
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control           0      101     666
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control           1       77     666
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS               0       99     666
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS               1       75     666
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Other             0      175     666
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Other             1      139     666
1           6 months    iLiNS_DYADM_LNS            MALAWI       Control           0       22      61
1           6 months    iLiNS_DYADM_LNS            MALAWI       Control           1        9      61
1           6 months    iLiNS_DYADM_LNS            MALAWI       LNS               0       22      61
1           6 months    iLiNS_DYADM_LNS            MALAWI       LNS               1        8      61
1           24 months   iLiNS_DYADM_LNS            MALAWI       Control           0        2       7
1           24 months   iLiNS_DYADM_LNS            MALAWI       Control           1        1       7
1           24 months   iLiNS_DYADM_LNS            MALAWI       LNS               0        3       7
1           24 months   iLiNS_DYADM_LNS            MALAWI       LNS               1        1       7
0           6 months    iLiNS_DYADM_LNS            MALAWI       Control           0        0       3
0           6 months    iLiNS_DYADM_LNS            MALAWI       Control           1        1       3
0           6 months    iLiNS_DYADM_LNS            MALAWI       LNS               0        2       3
0           6 months    iLiNS_DYADM_LNS            MALAWI       LNS               1        0       3


The following strata were considered:

* predexfd6: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 0, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* predexfd6: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 0, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* predexfd6: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* predexfd6: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* predexfd6: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 0, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* predexfd6: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* predexfd6: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* predexfd6: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* predexfd6: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* predexfd6: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* predexfd6: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4a4a00ba-f302-42db-9892-8580f6efeeba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4a4a00ba-f302-42db-9892-8580f6efeeba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4a4a00ba-f302-42db-9892-8580f6efeeba/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4a4a00ba-f302-42db-9892-8580f6efeeba/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


predexfd6   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.4034840   0.3914734   0.4154946
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.3512352   0.3382223   0.3642482
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.3750000   0.2270859   0.5229141
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.4210526   0.2524572   0.5896480
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3714286   0.2543774   0.4884797
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.5853659   0.4340920   0.7366397
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.4369748   0.3475767   0.5263729
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.3000000   0.2749735   0.3250265
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.3191489   0.2515550   0.3867428
0           6 months    ki1148112-LCNI-5           MALAWI       Control              NA                0.3962264   0.2642531   0.5281997
0           6 months    ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3362069   0.2500468   0.4223670
0           6 months    ki1148112-LCNI-5           MALAWI       Other                NA                0.3571429   0.2313663   0.4829194
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.3240950   0.3102774   0.3379126
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.3230676   0.3095466   0.3365887
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2990654   0.2273176   0.3708133
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2914980   0.2333439   0.3496520
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3455378   0.2941389   0.3969367
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.4651163   0.3028706   0.6273620
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.4307692   0.3056746   0.5558638
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.3666667   0.2620154   0.4713180
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.3135789   0.3076498   0.3195080
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.2873756   0.2813163   0.2934349
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2848485   0.2116311   0.3580658
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.3181818   0.2410489   0.3953147
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2769784   0.2204503   0.3335066
1           6 months    iLiNS_DYADM_LNS            MALAWI       Control              NA                0.2903226   0.2084461   0.3721991
1           6 months    iLiNS_DYADM_LNS            MALAWI       LNS                  NA                0.2666667   0.1881967   0.3451366
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Control              NA                0.3092784   0.1900328   0.4285239
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Other                NA                0.2875000   0.2339413   0.3410587
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.3151515   0.3036111   0.3266920
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.2767962   0.2515853   0.3020071
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                0.2903226   0.2373447   0.3433004
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal             NA                0.2380952   0.1672291   0.3089614
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.2440872   0.2374831   0.2506912
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.2202611   0.2140420   0.2264801
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2255814   0.1917254   0.2594373
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2299349   0.2009727   0.2588972
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2490298   0.2230171   0.2750424
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.5694444   0.5507925   0.5880964
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.5378378   0.4952641   0.5804115
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.5384615   0.4392149   0.6377082
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.5185185   0.3950500   0.6419870
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.4325843   0.3519158   0.5132527
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.4310345   0.3443701   0.5176988
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.4426752   0.3802475   0.5051028


### Parameter: E(Y)


predexfd6   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.3790768   0.3612523   0.3969013
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3851351   0.3041471   0.4661232
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.4750000   0.3973796   0.5526204
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.3167702   0.2446854   0.3888550
0           6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3555556   0.2928696   0.4182416
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.3235981   0.3042651   0.3429312
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.3195991   0.2851973   0.3540009
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.4090909   0.3365982   0.4815837
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.3001457   0.2915966   0.3086949
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2907916   0.2518865   0.3296967
1           6 months    iLiNS_DYADM_LNS            MALAWI       NA                   NA                0.2786885   0.1652414   0.3921356
1           6 months    ki1000304b-SAS-CompFeed    INDIA        NA                   NA                0.2957198   0.2395510   0.3518887
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.2830375   0.2552970   0.3107779
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       NA                   NA                0.2553191   0.1666988   0.3439395
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2319279   0.2228159   0.2410400
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2376803   0.2206903   0.2546703
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.5429864   0.4964934   0.5894795
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.5250000   0.3666127   0.6833873
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.4369369   0.3939807   0.4798931


### Parameter: RR


predexfd6   agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.8705060   0.8300995   0.9128794
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.1228070   0.6400633   1.9696420
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.9904762   0.5978764   1.6408795
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           0.7464986   0.5368882   1.0379445
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           1.0638298   0.8472531   1.3357682
0           6 months    ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0           6 months    ki1148112-LCNI-5           MALAWI       LNS                  Control           0.8485222   0.5573767   1.2917473
0           6 months    ki1148112-LCNI-5           MALAWI       Other                Control           0.9013605   0.5551134   1.4635763
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9968300   0.9390232   1.0581953
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.9746964   0.7132826   1.3319167
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.1553919   0.8712120   1.5322682
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.9261538   0.5883840   1.4578250
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.7883333   0.5023638   1.2370905
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9164380   0.8908429   0.9427685
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.1170213   0.7845663   1.5903518
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.9723710   0.7002624   1.3502160
1           6 months    iLiNS_DYADM_LNS            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           6 months    iLiNS_DYADM_LNS            MALAWI       LNS                  Control           0.9185185   0.6110493   1.3807007
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Other                Control           0.9295833   0.6059180   1.4261421
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.8782957   0.7961731   0.9688891
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Maternal             Control           0.8201058   0.5784258   1.1627654
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9023868   0.8677702   0.9383843
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0192991   0.8378447   1.2400517
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.1039463   0.9194784   1.3254226
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.9444957   0.8669531   1.0289740
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9629630   0.7125833   1.3013183
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.9964174   0.7574078   1.3108494
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.0233270   0.8100031   1.2928322


### Parameter: PAR


predexfd6   agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0244072   -0.0376080   -0.0112064
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0101351   -0.1186353    0.1389056
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.1103659   -0.2414413    0.0207096
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                 0.0167702   -0.0508308    0.0843712
0           6 months    ki1148112-LCNI-5           MALAWI       Control              NA                -0.0406709   -0.1553058    0.0739641
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0004969   -0.0140175    0.0130238
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0205337   -0.0417193    0.0827866
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0560254   -0.1975475    0.0854968
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0134332   -0.0196095   -0.0072569
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0059431   -0.0574285    0.0693148
1           6 months    iLiNS_DYADM_LNS            MALAWI       Control              NA                -0.0116341   -0.0901610    0.0668929
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Control              NA                -0.0135585   -0.0956081    0.0684910
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0321140   -0.0573400   -0.0068881
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                -0.0350034   -0.1060450    0.0360382
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0121592   -0.0184699   -0.0058486
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0120989   -0.0168901    0.0410879
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0264580   -0.0690457    0.0161296
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0134615   -0.1368983    0.1099753
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0043527   -0.0654478    0.0741531


### Parameter: PAF


predexfd6   agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0643860   -0.1021573   -0.0279091
0           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0263158   -0.3722101    0.3090993
0           6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.2323492   -0.5456350    0.0174365
0           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                 0.0529412   -0.1724067    0.2349750
0           6 months    ki1148112-LCNI-5           MALAWI       Control              NA                -0.1143868   -0.4884734    0.1656835
0           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0015355   -0.0442685    0.0394487
0           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0642483   -0.1526199    0.2403122
0           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.1369509   -0.5407808    0.1610374
1           Birth       kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0447555   -0.0664928   -0.0234613
1           Birth       kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0204377   -0.2235390    0.2157648
1           6 months    iLiNS_DYADM_LNS            MALAWI       Control              NA                -0.0417457   -0.3811507    0.2142536
1           6 months    ki1000304b-SAS-CompFeed    INDIA        Control              NA                -0.0458492   -0.3584062    0.1947913
1           6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.1134621   -0.2173751   -0.0184190
1           6 months    ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                -0.1370968   -0.5035771    0.1400580
1           6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0524268   -0.0814883   -0.0241463
1           6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0509041   -0.0793797    0.1654623
1           24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0487269   -0.1343109    0.0303999
1           24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0256410   -0.2975567    0.1892921
1           24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0099618   -0.1633613    0.1574624
