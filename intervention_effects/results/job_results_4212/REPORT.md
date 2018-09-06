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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                     country                         stunted   n_cell       n
----------  --------------------------  -----------------------------  --------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                                0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                                1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                              0       11      11
Birth       ki1000125-AgaKhanUniv       PAKISTAN                              1        0      11
Birth       ki1000304b-SAS-CompFeed     INDIA                                 0      106     144
Birth       ki1000304b-SAS-CompFeed     INDIA                                 1       38     144
Birth       ki1119695-PROBIT            BELARUS                               0    13851   13884
Birth       ki1119695-PROBIT            BELARUS                               1       33   13884
Birth       ki1126311-ZVITAMBO          ZIMBABWE                              0    12398   13830
Birth       ki1126311-ZVITAMBO          ZIMBABWE                              1     1432   13830
Birth       ki1135781-COHORTS           GUATEMALA                             0      802     852
Birth       ki1135781-COHORTS           GUATEMALA                             1       50     852
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                                0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                                1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                            0    26550   39226
Birth       kiGH5241-JiVitA-3           BANGLADESH                            1    12676   39226
Birth       kiGH5241-JiVitA-4           BANGLADESH                            0     1150    1644
Birth       kiGH5241-JiVitA-4           BANGLADESH                            1      494    1644
6 months    iLiNS_DYADM_LNS             MALAWI                                0      528     683
6 months    iLiNS_DYADM_LNS             MALAWI                                1      155     683
6 months    ki1000107-Serrinha-VitA     BRAZIL                                0       26      35
6 months    ki1000107-Serrinha-VitA     BRAZIL                                1        9      35
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                            0      582     682
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                            1      100     682
6 months    ki1000111-WASH-Kenya        KENYA                                 0       63      74
6 months    ki1000111-WASH-Kenya        KENYA                                 1       11      74
6 months    ki1000125-AgaKhanUniv       PAKISTAN                              0      493     695
6 months    ki1000125-AgaKhanUniv       PAKISTAN                              1      202     695
6 months    ki1000304-EU                INDIA                                 0      246     363
6 months    ki1000304-EU                INDIA                                 1      117     363
6 months    ki1000304-VITAMIN-A         INDIA                                 0     1644    2508
6 months    ki1000304-VITAMIN-A         INDIA                                 1      864    2508
6 months    ki1000304-Vitamin-B12       INDIA                                 0       58      81
6 months    ki1000304-Vitamin-B12       INDIA                                 1       23      81
6 months    ki1000304-ZnMort            INDIA                                 0       93     145
6 months    ki1000304-ZnMort            INDIA                                 1       52     145
6 months    ki1000304b-SAS-CompFeed     INDIA                                 0      444     617
6 months    ki1000304b-SAS-CompFeed     INDIA                                 1      173     617
6 months    ki1000304b-SAS-FoodSuppl    INDIA                                 0      204     355
6 months    ki1000304b-SAS-FoodSuppl    INDIA                                 1      151     355
6 months    ki1017093b-PROVIDE          BANGLADESH                            0       36      46
6 months    ki1017093b-PROVIDE          BANGLADESH                            1       10      46
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF          0     1521    1707
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF          1      186    1707
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                          0      557     630
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                          1       73     630
6 months    ki1112895-Guatemala BSC     GUATEMALA                             0      152     218
6 months    ki1112895-Guatemala BSC     GUATEMALA                             1       66     218
6 months    ki1119695-PROBIT            BELARUS                               0    13576   14500
6 months    ki1119695-PROBIT            BELARUS                               1      924   14500
6 months    ki1126311-ZVITAMBO          ZIMBABWE                              0     6486    7776
6 months    ki1126311-ZVITAMBO          ZIMBABWE                              1     1290    7776
6 months    ki1135781-COHORTS           GUATEMALA                             0      543     932
6 months    ki1135781-COHORTS           GUATEMALA                             1      389     932
6 months    ki1148112-iLiNS-DOSE        MALAWI                                0     1347    1930
6 months    ki1148112-iLiNS-DOSE        MALAWI                                1      583    1930
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                                0      796    1029
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                                1      233    1029
6 months    ki1148112-LCNI-5            MALAWI                                0      530     839
6 months    ki1148112-LCNI-5            MALAWI                                1      309     839
6 months    kiGH5241-JiVitA-3           BANGLADESH                            0    25065   33483
6 months    kiGH5241-JiVitA-3           BANGLADESH                            1     8418   33483
6 months    kiGH5241-JiVitA-4           BANGLADESH                            0     7005    9386
6 months    kiGH5241-JiVitA-4           BANGLADESH                            1     2381    9386
24 months   iLiNS_DYADM_LNS             MALAWI                                0       20      35
24 months   iLiNS_DYADM_LNS             MALAWI                                1       15      35
24 months   ki1000107-Serrinha-VitA     BRAZIL                                0       74     131
24 months   ki1000107-Serrinha-VitA     BRAZIL                                1       57     131
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                            0      704    1187
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                            1      483    1187
24 months   ki1000111-WASH-Kenya        KENYA                                 0     1565    2264
24 months   ki1000111-WASH-Kenya        KENYA                                 1      699    2264
24 months   ki1000125-AgaKhanUniv       PAKISTAN                              0        1       3
24 months   ki1000125-AgaKhanUniv       PAKISTAN                              1        2       3
24 months   ki1000304-EU                INDIA                                 0      101     253
24 months   ki1000304-EU                INDIA                                 1      152     253
24 months   ki1000304-Vitamin-B12       INDIA                                 0       74     133
24 months   ki1000304-Vitamin-B12       INDIA                                 1       59     133
24 months   ki1000304-ZnMort            INDIA                                 0       57     140
24 months   ki1000304-ZnMort            INDIA                                 1       83     140
24 months   ki1017093b-PROVIDE          BANGLADESH                            0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                            1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF          0        3       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF          1        1       4
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                          0      752    1169
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                          1      417    1169
24 months   ki1119695-PROBIT            BELARUS                               0      741     841
24 months   ki1119695-PROBIT            BELARUS                               1      100     841
24 months   ki1126311-ZVITAMBO          ZIMBABWE                              0       14      37
24 months   ki1126311-ZVITAMBO          ZIMBABWE                              1       23      37
24 months   ki1135781-COHORTS           GUATEMALA                             0       74     335
24 months   ki1135781-COHORTS           GUATEMALA                             1      261     335
24 months   ki1148112-iLiNS-DOSE        MALAWI                                0      385     776
24 months   ki1148112-iLiNS-DOSE        MALAWI                                1      391     776
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                                0       38      65
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                                1       27      65
24 months   ki1148112-LCNI-5            MALAWI                                0      241     385
24 months   ki1148112-LCNI-5            MALAWI                                1      144     385
24 months   kiGH5241-JiVitA-3           BANGLADESH                            0       75     158
24 months   kiGH5241-JiVitA-3           BANGLADESH                            1       83     158
24 months   kiGH5241-JiVitA-4           BANGLADESH                            0     1170    2004
24 months   kiGH5241-JiVitA-4           BANGLADESH                            1      834    2004


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/4fbac6d7-3afb-48ad-9d2a-3a899d8a8e6f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4fbac6d7-3afb-48ad-9d2a-3a899d8a8e6f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4fbac6d7-3afb-48ad-9d2a-3a899d8a8e6f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4fbac6d7-3afb-48ad-9d2a-3a899d8a8e6f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2428571    0.1331025   0.3526118
Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2837838    0.1362664   0.4313011
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0030978    0.0008776   0.0053180
Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0016890    0.0004528   0.0029251
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1043781    0.0941738   0.1145824
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1032656    0.0974116   0.1091196
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0466830    0.0261760   0.0671901
Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0696629    0.0459959   0.0933300
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3412682    0.3306851   0.3518513
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3052600    0.2946370   0.3158829
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3080357    0.2378939   0.3781775
Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3259912    0.2564599   0.3955224
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2803235    0.2294740   0.3311729
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2336182    0.1893198   0.2779167
6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2198795    0.1752964   0.2644626
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.3750000    0.1343209   0.6156791
6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.1578947   -0.0084591   0.3242486
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1801242    0.1207205   0.2395280
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1542553    0.1025866   0.2059240
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1261261    0.0904423   0.1618100
6 months    ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0800000   -0.0270709   0.1870709
6 months    ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2000000   -0.0038060   0.4038060
6 months    ki1000111-WASH-Kenya        KENYA                          Other                NA                0.1764706    0.0474560   0.3054852
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3280000    0.2804482   0.3755518
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2468750    0.1995971   0.2941529
6 months    ki1000304-EU                INDIA                          Control              NA                0.3484848    0.2820236   0.4149461
6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.2909091    0.2215130   0.3603051
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3573123    0.3308995   0.3837250
6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3314562    0.3052817   0.3576306
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                0.3529412    0.1243580   0.5815243
6 months    ki1000304-Vitamin-B12       INDIA                          Other                NA                0.2656250    0.1567448   0.3745052
6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.3604651    0.2586376   0.4622927
6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3559322    0.2333368   0.4785276
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2779661    0.2398152   0.3161170
6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2826087    0.2395426   0.3256748
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5222222    0.4188795   0.6255650
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3924528    0.3335791   0.4513265
6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.2000000   -0.0506575   0.4506575
6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2222222    0.0849158   0.3595287
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1105882    0.0807628   0.1404137
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1061321    0.0768061   0.1354580
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1095571    0.0886519   0.1304623
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1111111    0.0426170   0.1796052
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1165756    0.0897101   0.1434411
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3240741    0.2356020   0.4125462
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2818182    0.1975523   0.3660841
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0725534    0.0489400   0.0961668
6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0552247    0.0397225   0.0707269
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1633612    0.1468065   0.1799159
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1667235    0.1571798   0.1762673
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4646018    0.4185983   0.5106053
6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3729167    0.3296325   0.4162008
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3281250    0.2766674   0.3795826
6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2968944    0.2745711   0.3192177
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2336182    0.1893307   0.2779058
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2227139    0.1913804   0.2540473
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3444976    0.2800341   0.4089611
6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3649289    0.3189704   0.4108874
6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3990385    0.3324489   0.4656280
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2622150    0.2503688   0.2740612
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2408163    0.2298086   0.2518240
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2382124    0.2106401   0.2657847
6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2434312    0.2173942   0.2694683
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2684102    0.2465460   0.2902743
24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.5833333    0.3003214   0.8663453
24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3478261    0.1503377   0.5453145
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.4366197    0.3208126   0.5524269
24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.4333333    0.3074665   0.5592002
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4243542    0.3654850   0.4832235
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3778502    0.3235915   0.4321088
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4137931    0.3746604   0.4529258
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3065789    0.2737916   0.3393663
24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2920000    0.2521373   0.3318627
24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3187251    0.2898950   0.3475552
24 months   ki1000304-EU                INDIA                          Control              NA                0.6320000    0.5472898   0.7167102
24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5703125    0.4843843   0.6562407
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.3684211    0.2144705   0.5223716
24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4736842    0.3728999   0.5744685
24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.6400000    0.5309777   0.7490223
24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5384615    0.4168347   0.6600884
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3636364    0.2778877   0.4493851
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3559160    0.3269160   0.3849161
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1256684    0.0460845   0.2052524
24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1134904    0.0624582   0.1645225
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.4545455    0.1562344   0.7528565
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.6923077    0.5124542   0.8721612
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8011696    0.7412591   0.8610801
24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7560976    0.6902754   0.8219198
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5116279    0.4253130   0.5979428
24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5023184    0.4637669   0.5408699
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.5833333    0.3022229   0.8644437
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3773585    0.2458442   0.5088728
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3783784    0.2880389   0.4687179
24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3910615    0.3194808   0.4626421
24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3368421    0.2416781   0.4320061
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4788732    0.3232867   0.6344597
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.5632184    0.4340842   0.6923526
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4335260    0.3636278   0.5034242
24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4039497    0.3410293   0.4668702
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4137931    0.3620401   0.4655461


### Parameter: E(Y)


agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2638889   0.1700887   0.3576891
Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0023768   0.0010945   0.0036592
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0586854   0.0428942   0.0744767
Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3231530   0.3154984   0.3308077
Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3004866   0.2649179   0.3360553
6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2269400   0.1955046   0.2583753
6 months    ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.2571429   0.1102338   0.4040519
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1466276   0.1200600   0.1731951
6 months    ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.1486486   0.0670427   0.2302545
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2906475   0.2568657   0.3244293
6 months    ki1000304-EU                INDIA                          NA                   NA                0.3223140   0.2741694   0.3704587
6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3444976   0.3258960   0.3630992
6 months    ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.2839506   0.1851417   0.3827595
6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3586207   0.2802882   0.4369532
6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2803890   0.2513583   0.3094196
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4253521   0.3738504   0.4768538
6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2173913   0.0968779   0.3379047
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1089631   0.0941772   0.1237489
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1158730   0.0908597   0.1408863
6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3027523   0.2416221   0.3638824
6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0637241   0.0488374   0.0786108
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1658951   0.1576266   0.1741635
6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4173820   0.3857058   0.4490581
6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3020725   0.2815825   0.3225626
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2264334   0.2008493   0.2520176
6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2514112   0.2432817   0.2595406
6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2536757   0.2392674   0.2680840
24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.4285714   0.2622297   0.5949132
24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.4351145   0.3498912   0.5203378
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4069082   0.3789496   0.4348667
24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3087456   0.2897118   0.3277794
24 months   ki1000304-EU                INDIA                          NA                   NA                0.6007905   0.5403247   0.6612563
24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4436090   0.3588568   0.5283613
24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5928571   0.5111821   0.6745321
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3567151   0.3292432   0.3841871
24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1189061   0.0738430   0.1639691
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.6216216   0.4631969   0.7800464
24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7791045   0.7346141   0.8235949
24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5038660   0.4686650   0.5390669
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4153846   0.2946537   0.5361155
24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3740260   0.3256297   0.4224222
24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.5253165   0.4248368   0.6257961
24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4161677   0.3814286   0.4509067


### Parameter: RR


agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1685215   0.5864380    2.3283661
Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.5452096   0.1955764    1.5198843
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9893416   0.8836223    1.1077096
Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.4922531   0.8563787    2.6002739
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8944869   0.8537410    0.9371776
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0582902   0.7746526    1.4457813
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9100355   0.6801878    1.2175531
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.9411916   0.7130390    1.2423466
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.4210526   0.1226198    1.4458132
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8563830   0.5352078    1.3702936
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7002175   0.4534432    1.0812918
6 months    ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000111-WASH-Kenya        KENYA                          LNS                  Control           2.5000000   0.4649245   13.4430430
6 months    ki1000111-WASH-Kenya        KENYA                          Other                Control           2.2058824   0.4800253   10.1367924
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.7526677   0.5919560    0.9570115
6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.8347826   0.6150830    1.1329561
6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9276372   0.8325334    1.0336052
6 months    ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          Other                Control           0.7526042   0.3496985    1.6197180
6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           0.9874248   0.6324741    1.5415774
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0167020   0.8281815    1.2481359
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7515054   0.5862545    0.9633366
6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.1111111   0.2747318    4.4937204
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9597049   0.6523018    1.4119745
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9906760   0.7119533    1.3785158
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.0491803   0.5432930    2.0261249
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.8696104   0.5800747    1.3036635
6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7611589   0.4964738    1.1669556
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0205825   0.9084508    1.1465548
6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8026587   0.6890841    0.9349526
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9048211   0.7603818    1.0766975
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9533240   0.7528608    1.2071642
6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0593075   0.8454039    1.3273329
6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1583200   0.9014478    1.4883892
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9183927   0.8612170    0.9793643
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0219083   0.8728819    1.1963779
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1267684   0.9780563    1.2980920
24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.5962733   0.2825535    1.2583167
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.9924731   0.6697186    1.4707712
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8904121   0.7292530    1.0871861
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9751124   0.8244017    1.1533749
24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9524464   0.8008029    1.1328056
24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0396184   0.9037380    1.1959289
24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9023932   0.7375922    1.1040159
24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.2857143   0.8044465    2.0549051
24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.8413462   0.6340267    1.1164567
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.9787691   0.7626556    1.2561225
24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9030935   0.4135076    1.9723406
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.5230769   0.7519394    3.0850404
24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9437422   0.8414195    1.0585081
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9818041   0.8157019    1.1817299
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.6469003   0.3569058    1.1725222
24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0335196   0.7650031    1.3962854
24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.8902256   0.6149757    1.2886712
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1761325   0.7903419    1.7502397
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9317774   0.7444223    1.1662857
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9544828   0.7783881    1.1704153


### Parameter: PAR


agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0210317   -0.0756267    0.1176902
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0007210   -0.0020329    0.0005909
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0008351   -0.0096655    0.0079954
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0120024   -0.0043720    0.0283768
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0181152   -0.0258442   -0.0103862
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0075491   -0.0667305    0.0516323
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0066783   -0.0372330    0.0238764
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.1178571   -0.2807908    0.0450765
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0334967   -0.0841775    0.0171842
6 months    ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0686486   -0.0332220    0.1705193
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0373525   -0.0683730   -0.0063321
6 months    ki1000304-EU                INDIA                          Control              NA                -0.0261708   -0.0699469    0.0176053
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0128146   -0.0312511    0.0056218
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0689906   -0.2691936    0.1312124
6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0018444   -0.0666922    0.0630033
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0024229   -0.0276876    0.0325333
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0968701   -0.1858481   -0.0078921
6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0173913   -0.2062951    0.2410778
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0016251   -0.0274171    0.0241668
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0047619   -0.0593531    0.0688769
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0213218   -0.0830365    0.0403929
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0088293   -0.0233345    0.0056759
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0025339   -0.0118665    0.0169343
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0472198   -0.0798841   -0.0145555
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0260525   -0.0728464    0.0207415
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0071848   -0.0429318    0.0285622
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0237980   -0.0323421    0.0799381
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0108038   -0.0190370   -0.0025707
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0154633   -0.0084519    0.0393785
24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1547619   -0.3846369    0.0751131
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0015052   -0.0798434    0.0768330
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0174461   -0.0690681    0.0341760
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0021666   -0.0245833    0.0289165
24 months   ki1000304-EU                INDIA                          Control              NA                -0.0312095   -0.0923748    0.0299559
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0751880   -0.0564951    0.2068710
24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0471429   -0.1234437    0.0291580
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0069212   -0.0880717    0.0742293
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0067624   -0.0592671    0.0457423
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1670762   -0.0802601    0.4144124
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0220651   -0.0657045    0.0215743
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0077619   -0.0865804    0.0710565
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1679487   -0.4217622    0.0858647
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0043524   -0.0804935    0.0717887
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0464432   -0.0650481    0.1579345
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0173583   -0.0771756    0.0424589


### Parameter: PAF


agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0796992   -0.3575557    0.3761188
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.3033298   -0.9090816    0.1102169
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0080648   -0.0970581    0.0737093
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.2045209   -0.1227089    0.4363748
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0560577   -0.0803583   -0.0323036
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0251229   -0.2421633    0.1539945
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0294274   -0.1732388    0.0967560
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.4583333   -1.2527251    0.0559274
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2284472   -0.6257166    0.0717432
6 months    ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.4618182   -0.7877860    0.8379897
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1285149   -0.2403670   -0.0267491
6 months    ki1000304-EU                INDIA                          Control              NA                -0.0811966   -0.2259316    0.0464508
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0371981   -0.0921232    0.0149647
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.2429668   -1.1917164    0.2950884
6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0051431   -0.2032552    0.1603504
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0086411   -0.1046156    0.1102856
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.2277410   -0.4575620   -0.0341570
6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0800000   -1.8138190    0.6991988
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0149146   -0.2814893    0.1962074
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0410959   -0.7074745    0.4614871
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0704265   -0.2949324    0.1151562
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1385549   -0.3817324    0.0618246
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0152741   -0.0754686    0.0983603
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1131333   -0.1945101   -0.0373004
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0862457   -0.2527378    0.0581192
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0317303   -0.2022997    0.1146405
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0646165   -0.1009505    0.2052847
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0429727   -0.0762012   -0.0107702
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0609570   -0.0381755    0.1506236
24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.3611111   -1.0465317    0.0947497
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0034594   -0.2006629    0.1613544
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0428747   -0.1777945    0.0765896
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0070175   -0.0835152    0.0899858
24 months   ki1000304-EU                INDIA                          Control              NA                -0.0519474   -0.1591648    0.0453530
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1694915   -0.1881497    0.4194803
24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0795181   -0.2173265    0.0426897
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0194027   -0.2742800    0.1844949
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0568717   -0.5950492    0.2997221
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2687747   -0.2741775    0.5803642
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0283211   -0.0860409    0.0263310
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0154047   -0.1845292    0.1295725
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.4043210   -1.1871555    0.0983186
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0116366   -0.2371380    0.1727611
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0884100   -0.1530101    0.2792809
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0417100   -0.1957832    0.0925113
