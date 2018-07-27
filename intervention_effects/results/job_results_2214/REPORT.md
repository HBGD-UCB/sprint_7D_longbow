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

* single
* agecat
* studyid
* country

## Data Summary

single   agecat      studyid                    country                        tr          stunted   n_cell       n
-------  ----------  -------------------------  -----------------------------  ---------  --------  -------  ------
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0      342    1543
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1       39    1543
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0      340    1543
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1       45    1543
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0      690    1543
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1       87    1543
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0       33     151
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        8     151
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0       36     151
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        0     151
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0       68     151
1        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        6     151
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           0        1       4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control           1        0       4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             0        2       4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other             1        0       4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       4
0        24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       4
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control           0       61     186
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control           1       30     186
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other             0       70     186
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other             1       25     186
1        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control           0        8      26
1        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control           1        4      26
1        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other             0        8      26
1        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other             1        6      26
0        Birth       ki1119695-PROBIT           BELARUS                        Control           0     6519   13343
0        Birth       ki1119695-PROBIT           BELARUS                        Control           1       21   13343
0        Birth       ki1119695-PROBIT           BELARUS                        Maternal          0     6793   13343
0        Birth       ki1119695-PROBIT           BELARUS                        Maternal          1       10   13343
0        6 months    ki1119695-PROBIT           BELARUS                        Control           0     6368   13915
0        6 months    ki1119695-PROBIT           BELARUS                        Control           1      485   13915
0        6 months    ki1119695-PROBIT           BELARUS                        Maternal          0     6677   13915
0        6 months    ki1119695-PROBIT           BELARUS                        Maternal          1      385   13915
1        Birth       ki1119695-PROBIT           BELARUS                        Control           0      239     541
1        Birth       ki1119695-PROBIT           BELARUS                        Control           1        0     541
1        Birth       ki1119695-PROBIT           BELARUS                        Maternal          0      300     541
1        Birth       ki1119695-PROBIT           BELARUS                        Maternal          1        2     541
1        6 months    ki1119695-PROBIT           BELARUS                        Control           0      228     585
1        6 months    ki1119695-PROBIT           BELARUS                        Control           1       31     585
1        6 months    ki1119695-PROBIT           BELARUS                        Maternal          0      303     585
1        6 months    ki1119695-PROBIT           BELARUS                        Maternal          1       23     585
0        24 months   ki1119695-PROBIT           BELARUS                        Control           0      316     814
0        24 months   ki1119695-PROBIT           BELARUS                        Control           1       45     814
0        24 months   ki1119695-PROBIT           BELARUS                        Maternal          0      401     814
0        24 months   ki1119695-PROBIT           BELARUS                        Maternal          1       52     814
1        24 months   ki1119695-PROBIT           BELARUS                        Control           0       11      27
1        24 months   ki1119695-PROBIT           BELARUS                        Control           1        2      27
1        24 months   ki1119695-PROBIT           BELARUS                        Maternal          0       13      27
1        24 months   ki1119695-PROBIT           BELARUS                        Maternal          1        1      27
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0     2889   12902
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1      330   12902
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     8693   12902
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      990   12902
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0     1512    7289
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1      289    7289
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0     4580    7289
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1      908    7289
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           0       81     458
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       23     458
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0      289     458
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       65     458
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           0      181     870
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control           1       27     870
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0      582     870
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       80     870
0        24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           0        6      35
0        24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           1        4      35
0        24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              0        8      35
0        24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1       17      35
1        24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Control           1        1       2
1        24 months   ki1126311-ZVITAMBO         ZIMBABWE                       VitA              1        1       2
0        6 months    ki1135781-COHORTS          GUATEMALA                      Control           0      208     798
0        6 months    ki1135781-COHORTS          GUATEMALA                      Control           1      170     798
0        6 months    ki1135781-COHORTS          GUATEMALA                      Other             0      267     798
0        6 months    ki1135781-COHORTS          GUATEMALA                      Other             1      153     798
0        Birth       ki1135781-COHORTS          GUATEMALA                      Control           0      318     719
0        Birth       ki1135781-COHORTS          GUATEMALA                      Control           1       16     719
0        Birth       ki1135781-COHORTS          GUATEMALA                      Other             0      361     719
0        Birth       ki1135781-COHORTS          GUATEMALA                      Other             1       24     719
0        24 months   ki1135781-COHORTS          GUATEMALA                      Control           0       28     270
0        24 months   ki1135781-COHORTS          GUATEMALA                      Control           1      108     270
0        24 months   ki1135781-COHORTS          GUATEMALA                      Other             0       36     270
0        24 months   ki1135781-COHORTS          GUATEMALA                      Other             1       98     270
1        Birth       ki1135781-COHORTS          GUATEMALA                      Control           0       28      48
1        Birth       ki1135781-COHORTS          GUATEMALA                      Control           1        1      48
1        Birth       ki1135781-COHORTS          GUATEMALA                      Other             0       15      48
1        Birth       ki1135781-COHORTS          GUATEMALA                      Other             1        4      48
1        6 months    ki1135781-COHORTS          GUATEMALA                      Control           0       17      66
1        6 months    ki1135781-COHORTS          GUATEMALA                      Control           1       21      66
1        6 months    ki1135781-COHORTS          GUATEMALA                      Other             0       13      66
1        6 months    ki1135781-COHORTS          GUATEMALA                      Other             1       15      66
1        24 months   ki1135781-COHORTS          GUATEMALA                      Control           0        2      31
1        24 months   ki1135781-COHORTS          GUATEMALA                      Control           1       15      31
1        24 months   ki1135781-COHORTS          GUATEMALA                      Other             0        2      31
1        24 months   ki1135781-COHORTS          GUATEMALA                      Other             1       12      31
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           0       73     674
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           1       37     674
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               0      376     674
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               1      188     674
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           0      135    1202
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control           1       64    1202
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               0      727    1202
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS               1      276    1202
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           0       20     263
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           1       23     263
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               0      101     263
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               1      119     263
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           0       43     511
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control           1       42     511
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               0      221     511
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS               1      205     511
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0       47     193
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       12     193
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       97     193
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       37     193
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0      222     836
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1       70     836
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0      430     836
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1      114     836
0        Birth       ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        1       1
1        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        0      12
1        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        3      12
1        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0        5      12
1        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1        4      12
0        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           0        5      53
0        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control           1        4      53
0        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          0       28      53
0        24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal          1       16      53
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0      222     558
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       70     558
0        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0      208     558
0        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       58     558
1        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           0       47     125
1        6 months    iLiNS_DYADM_LNS            MALAWI                         Control           1       12     125
1        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               0       51     125
1        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS               1       15     125
0        Birth       iLiNS_DYADM_LNS            MALAWI                         LNS               1        1       1
1        24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        0       7
1        24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        3       7
1        24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0        2       7
1        24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        2       7
0        24 months   iLiNS_DYADM_LNS            MALAWI                         Control           0        5      28
0        24 months   iLiNS_DYADM_LNS            MALAWI                         Control           1        4      28
0        24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               0       13      28
0        24 months   iLiNS_DYADM_LNS            MALAWI                         LNS               1        6      28


The following strata were considered:

* single: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* single: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 0, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 0, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* single: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 0, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 0, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 0, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 0, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 0, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* single: 0, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* single: 0, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 0, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 0, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* single: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* single: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* single: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* single: 1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* single: 1, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 0, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* single: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* single: 1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* single: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* single: 0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* single: 1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* single: 0, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* single: 0, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* single: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* single: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/27a9b9e4-69a7-409f-b3de-9a54a33028f7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/27a9b9e4-69a7-409f-b3de-9a54a33028f7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/27a9b9e4-69a7-409f-b3de-9a54a33028f7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/27a9b9e4-69a7-409f-b3de-9a54a33028f7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


single   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1119695-PROBIT           BELARUS                        Control              NA                0.0032110   0.0020125   0.0044095
0        Birth       ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0014699   0.0008620   0.0020779
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1025163   0.0999019   0.1051307
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1022410   0.0977120   0.1067701
0        Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                0.0479042   0.0372573   0.0585511
0        Birth       ki1135781-COHORTS          GUATEMALA                      Other                NA                0.0623377   0.0493972   0.0752781
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.2397260   0.2140790   0.2653731
0        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2180451   0.1943691   0.2417211
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1023622   0.0719150   0.1328094
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1168831   0.0847803   0.1489860
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1119691   0.0897901   0.1341481
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                0.3296703   0.2822886   0.3770520
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                NA                0.2631579   0.2178094   0.3085064
0        6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.0707719   0.0595232   0.0820207
0        6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0545171   0.0465254   0.0625089
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1604664   0.1562777   0.1646551
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1654519   0.1580494   0.1728544
0        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.4497354   0.4259655   0.4735054
0        6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.3642857   0.3400479   0.3885236
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.3216080   0.3108594   0.3323567
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.2751745   0.2521019   0.2982470
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2397260   0.2226126   0.2568394
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2095588   0.1872904   0.2318272
0        24 months   ki1119695-PROBIT           BELARUS                        Control              NA                0.1246537   0.0889570   0.1603504
0        24 months   ki1119695-PROBIT           BELARUS                        Maternal             NA                0.1147903   0.0840629   0.1455177
0        24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                0.7941176   0.7598242   0.8284111
0        24 months   ki1135781-COHORTS          GUATEMALA                      Other                NA                0.7313433   0.6940267   0.7686599
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.4941176   0.4764206   0.5118147
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.4812207   0.4416274   0.5208139
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.1298077   0.1188815   0.1407339
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1208459   0.1019418   0.1397500
1        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                0.2033898   0.1547160   0.2520637
1        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  NA                0.2272727   0.1736757   0.2808698
1        6 months    ki1119695-PROBIT           BELARUS                        Control              NA                0.1196911   0.0904135   0.1489687
1        6 months    ki1119695-PROBIT           BELARUS                        Maternal             NA                0.0705521   0.0539114   0.0871929
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                0.2211538   0.2030218   0.2392859
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 NA                0.1836158   0.1524082   0.2148235
1        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                0.5526316   0.4609121   0.6443511
1        6 months    ki1135781-COHORTS          GUATEMALA                      Other                NA                0.5357143   0.4567451   0.6146835
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.3363636   0.3219433   0.3507840
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.3333333   0.3007539   0.3659128
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2033898   0.1719100   0.2348697
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             NA                0.2761194   0.2234264   0.3288124
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                0.5348837   0.5104627   0.5593048
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  NA                0.5409091   0.4857214   0.5960968


### Parameter: E(Y)


single   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.0023233   0.0009399   0.0037067
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1023097   0.0970802   0.1075392
0        Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0556328   0.0388671   0.0723985
0        6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2293907   0.1944746   0.2643068
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1108231   0.0951550   0.1264911
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.2956989   0.2299382   0.3614596
0        6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0625225   0.0479052   0.0771397
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1642201   0.1557145   0.1727256
0        6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4047619   0.3706847   0.4388391
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.2828619   0.2573898   0.3083340
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2200957   0.1919941   0.2481973
0        24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1191646   0.0724281   0.1659011
0        24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7629630   0.7121433   0.8137826
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.4833659   0.4399956   0.5267363
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1229885   0.1011525   0.1448245
1        6 months    iLiNS_DYADM_LNS            MALAWI                         NA                   NA                0.2160000   0.1435694   0.2884306
1        6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0923077   0.0566778   0.1279376
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1921397   0.1560182   0.2282613
1        6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5454545   0.4244061   0.6665030
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.3338279   0.2981996   0.3694562
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2538860   0.1923231   0.3154490
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.5399240   0.4795738   0.6002741


### Parameter: RR


single   agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       ki1119695-PROBIT           BELARUS                        Maternal             Control           0.4577812   0.2620344   0.7997563
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.9973149   0.9476188   1.0496171
0        Birth       ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       ki1135781-COHORTS          GUATEMALA                      Other                Control           1.3012987   0.9600624   1.7638210
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           0.9095596   0.7809623   1.0593325
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1418581   0.7617005   1.7117488
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0938521   0.7651681   1.5637248
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Other                Control           0.7982456   0.6377988   0.9990549
0        6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.7703215   0.6213560   0.9550003
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           1.0310687   0.9790200   1.0858846
0        6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.8100000   0.7440151   0.8818369
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.8556206   0.7817731   0.9364439
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           0.8741597   0.7691203   0.9935444
0        24 months   ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1119695-PROBIT           BELARUS                        Maternal             Control           0.9208732   0.6205100   1.3666298
0        24 months   ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9209508   0.8614013   0.9846171
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.9738989   0.8903134   1.0653318
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.9309612   0.7794420   1.1119348
1        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    iLiNS_DYADM_LNS            MALAWI                         LNS                  Control           1.1174242   0.7985500   1.5636302
1        6 months    ki1119695-PROBIT           BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1119695-PROBIT           BELARUS                        Maternal             Control           0.5894518   0.4199565   0.8273557
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       VitA                 Control           0.8302628   0.6874840   1.0026944
1        6 months    ki1135781-COHORTS          GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1135781-COHORTS          GUATEMALA                      Other                Control           0.9693878   0.7764132   1.2103254
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           0.9909910   0.8906736   1.1026073
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Maternal             Control           1.3575871   1.0618357   1.7357135
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         LNS                  Control           1.0112648   0.9043168   1.1308610


### Parameter: PAR


single   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0        Birth       ki1119695-PROBIT           BELARUS                        Control              NA                -0.0008877   -0.0015545   -0.0002209
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0002066   -0.0047356    0.0043224
0        Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.0077286   -0.0052226    0.0206798
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0103353   -0.0340284    0.0133577
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0084609   -0.0182732    0.0351949
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.0339714   -0.0795723    0.0116295
0        6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0082495   -0.0170233    0.0005243
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0037537   -0.0036490    0.0111563
0        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0449735   -0.0693917   -0.0205554
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0387461   -0.0618393   -0.0156530
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0196303   -0.0419201    0.0026594
0        24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0054891   -0.0359830    0.0250047
0        24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0311547   -0.0686593    0.0063499
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0107517   -0.0503471    0.0288437
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0068192   -0.0257250    0.0120866
1        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0126102   -0.0410280    0.0662483
1        6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.0273834   -0.0470849   -0.0076819
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0290141   -0.0602551    0.0022268
1        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0071770   -0.0861724    0.0718183
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0025357   -0.0351153    0.0300438
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0504962   -0.0024096    0.1034019
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0050402   -0.0501481    0.0602286


### Parameter: PAF


single   agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0        Birth       ki1119695-PROBIT           BELARUS                        Control              NA                -0.3820805   -0.9091681   -0.0005125
0        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0020193   -0.0473730    0.0413705
0        Birth       ki1135781-COHORTS          GUATEMALA                      Control              NA                 0.1389222   -0.0890065    0.3191454
0        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                -0.0450557   -0.1588980    0.0576036
0        6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0763457   -0.1990775    0.2885053
0        6 months    ki1112895-Guatemala BSC    GUATEMALA                      Control              NA                -0.1148851   -0.3019286    0.0452865
0        6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.1319441   -0.3058940    0.0188351
0        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                 0.0228574   -0.0222018    0.0659305
0        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.1111111   -0.1805412   -0.0457644
0        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.1369790   -0.2338560   -0.0477084
0        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0891900   -0.2055155    0.0159107
0        24 months   ki1119695-PROBIT           BELARUS                        Control              NA                -0.0460633   -0.3514126    0.1902928
0        24 months   ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0408338   -0.0933105    0.0091241
0        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0222434   -0.1095111    0.0581604
1        Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.0554457   -0.2309105    0.0950068
1        6 months    iLiNS_DYADM_LNS            MALAWI                         Control              NA                 0.0583804   -0.2075137    0.2657247
1        6 months    ki1119695-PROBIT           BELARUS                        Control              NA                -0.2966538   -0.6268611   -0.0334694
1        6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Control              NA                -0.1510052   -0.3548643    0.0221803
1        6 months    ki1135781-COHORTS          GUATEMALA                      Control              NA                -0.0131579   -0.1710647    0.1234567
1        6 months    ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                -0.0075960   -0.1108902    0.0860937
1        6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1988931    0.0110540    0.3510543
1        24 months   ki1148112-iLiNS-DOSE       MALAWI                         Control              NA                 0.0093351   -0.0972829    0.1055935
