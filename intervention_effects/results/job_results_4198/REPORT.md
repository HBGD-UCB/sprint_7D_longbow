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

**Outcome Variable:** ever_stunted

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

agecat        studyid                     country                         ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  -------------  -------  ------
0-6 months    iLiNS_DYADM_LNS             MALAWI                                     0       33      43
0-6 months    iLiNS_DYADM_LNS             MALAWI                                     1       10      43
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                                     0        9      10
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                                     1        1      10
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                                 0      209     232
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                                 1       23     232
0-6 months    ki1000111-WASH-Kenya        KENYA                                      0       85      92
0-6 months    ki1000111-WASH-Kenya        KENYA                                      1        7      92
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                                   0      215     292
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                                   1       77     292
0-6 months    ki1000304-EU                INDIA                                      0        7      14
0-6 months    ki1000304-EU                INDIA                                      1        7      14
0-6 months    ki1000304-VITAMIN-A         INDIA                                      0      227     334
0-6 months    ki1000304-VITAMIN-A         INDIA                                      1      107     334
0-6 months    ki1000304-Vitamin-B12       INDIA                                      0        1       1
0-6 months    ki1000304-Vitamin-B12       INDIA                                      1        0       1
0-6 months    ki1000304-ZnMort            INDIA                                      0      109     181
0-6 months    ki1000304-ZnMort            INDIA                                      1       72     181
0-6 months    ki1000304b-SAS-CompFeed     INDIA                                      0      569     792
0-6 months    ki1000304b-SAS-CompFeed     INDIA                                      1      223     792
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                                      0      257     416
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                                      1      159     416
0-6 months    ki1017093b-PROVIDE          BANGLADESH                                 0      551     640
0-6 months    ki1017093b-PROVIDE          BANGLADESH                                 1       89     640
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF               0     2075    2234
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF               1      159    2234
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                               0       41      46
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                               1        5      46
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                                  0      186     241
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                                  1       55     241
0-6 months    ki1119695-PROBIT            BELARUS                                    0    15133   16185
0-6 months    ki1119695-PROBIT            BELARUS                                    1     1052   16185
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                                   0     7507    9102
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                                   1     1595    9102
0-6 months    ki1135781-COHORTS           GUATEMALA                                  0      205     298
0-6 months    ki1135781-COHORTS           GUATEMALA                                  1       93     298
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                                     0      849    1197
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                                     1      348    1197
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                                     0       54      70
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                                     1       16      70
0-6 months    ki1148112-LCNI-5            MALAWI                                     0      175     272
0-6 months    ki1148112-LCNI-5            MALAWI                                     1       97     272
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                                 0    28808   38718
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                                 1     9910   38718
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                                 0     6834    9136
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                                 1     2302    9136
6-24 months   iLiNS_DYADM_LNS             MALAWI                                     0      354     494
6-24 months   iLiNS_DYADM_LNS             MALAWI                                     1      140     494
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                               0     1662    2468
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                               1      806    2468
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                                     0      348     493
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                                     1      145     493
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                                 0     2961    4783
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                                 1     1822    4783
6-24 months   ki1000111-WASH-Kenya        KENYA                                      0     4935    6624
6-24 months   ki1000111-WASH-Kenya        KENYA                                      1     1689    6624
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                                   0      605    1367
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                                   1      762    1367
6-24 months   ki1000304-EU                INDIA                                      0     1072    2008
6-24 months   ki1000304-EU                INDIA                                      1      936    2008
6-24 months   ki1000304-VITAMIN-A         INDIA                                      0     1813    2789
6-24 months   ki1000304-VITAMIN-A         INDIA                                      1      976    2789
6-24 months   ki1000304-Vitamin-B12       INDIA                                      0      424     804
6-24 months   ki1000304-Vitamin-B12       INDIA                                      1      380     804
6-24 months   ki1000304-ZnMort            INDIA                                      0      886    1855
6-24 months   ki1000304-ZnMort            INDIA                                      1      969    1855
6-24 months   ki1000304b-SAS-CompFeed     INDIA                                      0      353     627
6-24 months   ki1000304b-SAS-CompFeed     INDIA                                      1      274     627
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                                      0       93     243
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                                      1      150     243
6-24 months   ki1017093b-PROVIDE          BANGLADESH                                 0      305     342
6-24 months   ki1017093b-PROVIDE          BANGLADESH                                 1       37     342
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF               0     1476    1806
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF               1      330    1806
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                               0     4725    7157
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                               1     2432    7157
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                                  0      128     182
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                                  1       54     182
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                               0     2160    3265
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                               1     1105    3265
6-24 months   ki1119695-PROBIT            BELARUS                                    0    13362   14207
6-24 months   ki1119695-PROBIT            BELARUS                                    1      845   14207
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                                   0     6582    8408
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                                   1     1826    8408
6-24 months   ki1135781-COHORTS           GUATEMALA                                  0      179     481
6-24 months   ki1135781-COHORTS           GUATEMALA                                  1      302     481
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                                     0      867    1472
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                                     1      605    1472
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                                     0      538     761
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                                     1      223     761
6-24 months   ki1148112-LCNI-5            MALAWI                                     0      346     730
6-24 months   ki1148112-LCNI-5            MALAWI                                     1      384     730
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                                 0    14710   17791
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                                 1     3081   17791
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                                 0     4708    6475
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                                 1     1767    6475


The following strata were considered:

* agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA

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
![](/tmp/ebfd17f8-f631-4e1d-8de0-681f3b48a06f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ebfd17f8-f631-4e1d-8de0-681f3b48a06f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ebfd17f8-f631-4e1d-8de0-681f3b48a06f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ebfd17f8-f631-4e1d-8de0-681f3b48a06f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2173913    0.0468274   0.3879552
0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2500000    0.0579814   0.4420186
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1395349    0.0357438   0.2433259
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1014493    0.0300560   0.1728426
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0833333    0.0337757   0.1328910
0-6 months    ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0740741   -0.0252514   0.1733996
0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                NA                0.1190476    0.0205710   0.2175243
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2877698    0.2123790   0.3631606
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2418301    0.1738650   0.3097951
0-6 months    ki1000304-EU                INDIA                          Control              NA                0.6666667    0.2752327   1.0581007
0-6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.3750000    0.0268623   0.7231377
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3099415    0.2405216   0.3793614
0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3312883    0.2589234   0.4036532
0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.3932584    0.2914938   0.4950231
0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4021739    0.3017004   0.5026474
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2806540    0.2373440   0.3239639
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2823529    0.2603472   0.3043586
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4000000    0.3061830   0.4938170
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3762058    0.3223014   0.4301102
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1445783    0.0910387   0.1981179
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1371308    0.1061396   0.1681220
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0718133    0.0503677   0.0932589
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0648649    0.0443702   0.0853595
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0739750    0.0586570   0.0892931
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0000000    0.0000000   0.0000000
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1282051    0.0221215   0.2342887
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2500000    0.1723644   0.3276356
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2066116    0.1343215   0.2789016
0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0682721    0.0491625   0.0873817
0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0619480    0.0477866   0.0761093
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1697288    0.1543394   0.1851182
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1770833    0.1680203   0.1861464
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3404255    0.2620805   0.4187706
0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2866242    0.2157736   0.3574748
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3191489    0.2524877   0.3858102
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2854311    0.2575534   0.3133088
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2173913    0.0476052   0.3871774
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2340426    0.1121230   0.3559621
0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3676471    0.2528347   0.4824594
0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3237410    0.2458126   0.4016694
0-6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4153846    0.2953652   0.5354040
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2770833    0.2664347   0.2877319
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2351675    0.2259086   0.2444265
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2328535    0.2049215   0.2607856
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2516026    0.2260057   0.2771994
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2627396    0.2419463   0.2835329
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2656250    0.2113572   0.3198928
6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3025210    0.2440384   0.3610037
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                0.3251634    0.2645625   0.3857643
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 NA                0.3270474    0.2407653   0.4133295
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2561983    0.2011432   0.3112535
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.3306773    0.2724171   0.3889375
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3929795    0.3649665   0.4209924
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3300000    0.3033929   0.3566071
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4004141    0.3808700   0.4199582
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2531868    0.2353171   0.2710565
6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2190934    0.1978456   0.2403412
6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2744556    0.2581936   0.2907176
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5857360    0.5481129   0.6233590
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.5310734    0.4943012   0.5678457
6-24 months   ki1000304-EU                INDIA                          Control              NA                0.4863281    0.4557075   0.5169487
6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4451220    0.4140623   0.4761816
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3579627    0.3327921   0.3831333
6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3419355    0.3170386   0.3668324
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.5000000    0.4303124   0.5696876
6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4636964    0.4239677   0.5034251
6-24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.5281385    0.4959419   0.5603352
6-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5166488    0.4845403   0.5487572
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4508475    0.3735530   0.5281419
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4246988    0.3372473   0.5121503
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.7049180    0.5902297   0.8196064
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5879121    0.5162550   0.6595691
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1428571    0.0708558   0.2148585
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.0956175    0.0591848   0.1320503
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1828194    0.1472554   0.2183834
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1670379    0.1325262   0.2015495
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1904762    0.1648573   0.2160950
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2871287    0.2616562   0.3126012
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3505467    0.3384170   0.3626764
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2446809    0.1575352   0.3318265
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.3522727    0.2521947   0.4523508
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3751568    0.3238069   0.4265068
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3265802    0.2620394   0.3911210
6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0672606    0.0478946   0.0866265
6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0524625    0.0404155   0.0645095
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.2128362    0.1954076   0.2302649
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2186357    0.2084200   0.2288515
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7035398    0.6439361   0.7631435
6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5607843    0.4998072   0.6217614
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4024390    0.3411378   0.4637403
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4127243    0.3851565   0.4402921
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2656250    0.2114151   0.3198349
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3069307    0.2666426   0.3472188
6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4916201    0.4183329   0.5649073
6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5322581    0.4815195   0.5829967
6-24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.5474860    0.4745198   0.6204522
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1713258    0.1568981   0.1857536
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1749182    0.1622791   0.1875573
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2904517    0.2539719   0.3269315
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2520092    0.2189505   0.2850679
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2747989    0.2469635   0.3026343


### Parameter: E(Y)


agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2325581   0.1047931   0.3603232
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.0991379   0.0605998   0.1376761
0-6 months    ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0760870   0.0216119   0.1305621
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2636986   0.2130715   0.3143258
0-6 months    ki1000304-EU                INDIA                          NA                   NA                0.5000000   0.2282019   0.7717981
0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3203593   0.2702424   0.3704762
0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3977901   0.3262889   0.4692912
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2815657   0.2581773   0.3049540
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1390625   0.1122345   0.1658905
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0711728   0.0605086   0.0818370
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1086957   0.0177544   0.1996369
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2282158   0.1751196   0.2813119
0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0649985   0.0530039   0.0769930
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1752362   0.1674257   0.1830467
0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3120805   0.2593852   0.3647759
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2907268   0.2649914   0.3164623
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2285714   0.1294923   0.3276506
0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3566176   0.2995882   0.4136471
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2559533   0.2487104   0.2631962
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2519702   0.2379258   0.2660146
6-24 months   iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2834008   0.2435562   0.3232455
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   NA                   NA                0.3265802   0.2600546   0.3931059
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.2941176   0.2538559   0.3343794
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3809325   0.3671687   0.3946962
6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2549819   0.2444850   0.2654787
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5574250   0.5310854   0.5837646
6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4661355   0.4443109   0.4879600
6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3499462   0.3322420   0.3676504
6-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4726368   0.4381058   0.5071678
6-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5223720   0.4996352   0.5451087
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4370016   0.3770013   0.4970019
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.6172840   0.5560459   0.6785220
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1081871   0.0752189   0.1411554
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1827243   0.1648967   0.2005518
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3398072   0.3288332   0.3507812
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2967033   0.2301546   0.3632520
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3384380   0.2882099   0.3886661
6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0594777   0.0476257   0.0713298
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2171741   0.2083603   0.2259879
6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.6278586   0.5846160   0.6711013
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4110054   0.3858622   0.4361487
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2930355   0.2606423   0.3254286
6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5260274   0.4897810   0.5622738
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1731775   0.1636227   0.1827322
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2728958   0.2544375   0.2913540


### Parameter: RR


agecat        studyid                     country                        intervention_level   baseline_level            estimate          ci_lower           ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  -----------------  ----------------  -----------------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control                  1.1500000         0.3835817          3.4477660
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control                  0.7270531         0.2611306          2.0242986
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control                  0.5972222         0.2304307          1.5478597
0-6 months    ki1000111-WASH-Kenya        KENYA                          Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                  Control                  0.0000000         0.0000000          0.0000002
0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                Control                  1.6071429         0.3325178          7.7677287
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control                  0.8403595         0.5722721          1.2340354
0-6 months    ki1000304-EU                INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1000304-EU                INDIA                          Zinc                 Control                  0.5625000         0.1875288          1.6872413
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control                  1.0688737         0.7817254          1.4614991
0-6 months    ki1000304-ZnMort            INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control                  1.0226708         0.7137148          1.4653690
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control                  1.0060537         0.8465611          1.1955948
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control                  0.9405145         0.7144982          1.2380261
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control                  0.9484880         0.6146414          1.4636657
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control                  0.9032432         0.5847820          1.3951326
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control                  1.0301025         0.7162405          1.4815011
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           14826768.4606318   5049394.6549304   43536518.3370119
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control                  0.8264463         0.5176582          1.3194295
0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control                  0.9073691         0.6327107          1.3012560
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control                  1.0433312         0.9401658          1.1578170
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control                  0.8419586         0.6006385          1.1802344
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control                  0.8943508         0.7101805          1.1262818
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control                  1.0765957         0.4210515          2.7527708
0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control                  0.8805755         0.5936455          1.3061891
0-6 months    ki1148112-LCNI-5            MALAWI                         Other                Control                  1.1298462         0.7383261          1.7289817
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control                  0.8487249         0.8032688          0.8967534
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control                  1.0000000         1.0000000          1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control                  1.0805186         0.9232043          1.2646394
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control                  1.1283471         0.9773101          1.3027260
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control                  1.1389026         0.8596741          1.5088266
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                 Control                  1.0057941         0.7273772          1.3907801
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control                  1.2907081         0.9775619          1.7041657
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control                  0.8397386         0.7540588          0.9351537
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control                  1.0189186         0.9345867          1.1108602
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control                  0.8653429         0.7675330          0.9756171
6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control                  1.0840043         0.9885745          1.1886461
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control                  0.9066772         0.8249643          0.9964838
6-24 months   ki1000304-EU                INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000304-EU                INDIA                          Zinc                 Control                  0.9152708         0.8331673          1.0054652
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          VitA                 Control                  0.9552266         0.8632691          1.0569796
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control                  0.9273927         0.7874290          1.0922347
6-24 months   ki1000304-ZnMort            INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control                  0.9782448         0.8966844          1.0672237
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control                  0.9420011         0.7206101          1.2314093
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control                  0.8340148         0.6805919          1.0220232
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control                  0.6693227         0.3558248          1.2590267
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control                  0.9136770         0.6879385          1.2134887
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control                  1.0418818         0.8224469          1.3198636
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control                  1.2208695         1.1099772          1.3428404
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control                  1.4397233         0.9128941          2.2705844
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control                  0.8705165         0.6854033          1.1056249
6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control                  0.7799892         0.5401745          1.1262716
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control                  1.0272485         0.9348244          1.1288104
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control                  0.7970897         0.6944525          0.9148962
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control                  1.0255574         0.8684117          1.2111397
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control                  1.1555038         0.9065442          1.4728338
6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control                  1.0826613         0.9070805          1.2922287
6-24 months   ki1148112-LCNI-5            MALAWI                         Other                Control                  1.1136364         0.9118027          1.3601473
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control                  1.0209681         0.9137790          1.1407309
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control                  1.0000000         1.0000000          1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control                  0.8676458         0.7235783          1.0403978
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control                  0.9461089         0.8051323          1.1117701


### Parameter: PAR


agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0151668   -0.1043916    0.1347253
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0403970   -0.1313062    0.0505123
0-6 months    ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0020129   -0.0819064    0.0859321
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0240712   -0.0773217    0.0291794
0-6 months    ki1000304-EU                INDIA                          Control              NA                -0.1666667   -0.4761224    0.1427891
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0104178   -0.0385340    0.0593695
0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0045316   -0.0681599    0.0772231
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0009117   -0.0251036    0.0269270
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0177885   -0.0986847    0.0631078
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0055158   -0.0513333    0.0403017
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0006405   -0.0191958    0.0179148
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1086956    0.0177544    0.1996369
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0217842   -0.0751154    0.0315469
0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0032736   -0.0155223    0.0089750
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0055074   -0.0078670    0.0188818
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0283450   -0.0840796    0.0273896
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0284221   -0.0893334    0.0324891
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0111801   -0.1291777    0.1515380
0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0110294   -0.1102428    0.0881840
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0211300   -0.0285150   -0.0137451
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0191167   -0.0048195    0.0430529
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0177758   -0.0206987    0.0562503
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0014168   -0.0781613    0.0809950
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0379193   -0.0030238    0.0788624
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0120470   -0.0363556    0.0122616
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0017951   -0.0127020    0.0162922
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0283109   -0.0555967   -0.0010252
6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0201927   -0.0415851    0.0011997
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0080165   -0.0257271    0.0096942
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0273632   -0.0878348    0.0331084
6-24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0057666   -0.0285892    0.0170560
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0138459   -0.0766176    0.0489259
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0876341   -0.1891217    0.0138536
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0346700   -0.0939343    0.0245943
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0000951   -0.0308639    0.0306737
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0526785    0.0292367    0.0761203
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0520224   -0.0126178    0.1166627
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0367189   -0.0994140    0.0259763
6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0077829   -0.0197486    0.0041829
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0043379   -0.0107728    0.0194486
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0756812   -0.1213333   -0.0300291
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0085664   -0.0474158    0.0645486
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0274105   -0.0174322    0.0722532
6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0344073   -0.0292387    0.0980533
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0018516   -0.0080342    0.0117374
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0175559   -0.0484335    0.0133216


### Parameter: PAF


agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0652174   -0.6192261    0.4603480
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.4074823   -1.6820318    0.2613785
0-6 months    ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0264550   -2.0221187    0.6863823
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0912828   -0.3129115    0.0929334
0-6 months    ki1000304-EU                INDIA                          Control              NA                -0.3333333   -1.1900300    0.1882404
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0325190   -0.1330030    0.1738596
0-6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0113920   -0.1893302    0.1782385
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0032380   -0.0937335    0.0916118
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0465409   -0.2811429    0.1451010
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0396643   -0.4272440    0.2426650
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0089992   -0.3064828    0.2207479
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.9999999    0.9999998    1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0954545   -0.3554785    0.1146886
0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0503644   -0.2543377    0.1204399
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0314286   -0.0479730    0.1048142
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0908259   -0.2848596    0.0739057
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0977623   -0.3285827    0.0929567
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0489130   -0.8136265    0.5012389
0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0309278   -0.3502987    0.2129059
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0825542   -0.1117487   -0.0541264
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0758689   -0.0243553    0.1662871
6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                 0.0627232   -0.0832839    0.1890512
6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control              NA                 0.0043384   -0.2709846    0.2200204
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.1289256   -0.0216612    0.2573168
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0316250   -0.0974563    0.0302575
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0070400   -0.0514744    0.0622981
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0507888   -0.1009979   -0.0028694
6-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0433193   -0.0902752    0.0016143
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0229077   -0.0747917    0.0264716
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0578947   -0.1939692    0.0626716
6-24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0110392   -0.0556906    0.0317236
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0316838   -0.1869179    0.1032477
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1419672   -0.3206632    0.0125498
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.3204633   -0.9903855    0.1239771
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0005206   -0.1839095    0.1544611
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1550246    0.0831704    0.2212474
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.1753349   -0.0726062    0.3659625
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1084951   -0.3222071    0.0706740
6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1308533   -0.3429057    0.0477148
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0199742   -0.0521318    0.0871385
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1205386   -0.1970551   -0.0489131
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0208426   -0.1252966    0.1480031
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0935398   -0.0730658    0.2342780
6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0654097   -0.0638679    0.1789779
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0106920   -0.0481385    0.0662205
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0643320   -0.1836503    0.0429584
