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

**Outcome Variable:** sstunted

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

agecat      studyid                     country                         sstunted   n_cell       n
----------  --------------------------  -----------------------------  ---------  -------  ------
Birth       iLiNS_DYADM_LNS             MALAWI                                 0        0       1
Birth       iLiNS_DYADM_LNS             MALAWI                                 1        1       1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                               0       11      11
Birth       ki1000125-AgaKhanUniv       PAKISTAN                               1        0      11
Birth       ki1000304b-SAS-CompFeed     INDIA                                  0      133     144
Birth       ki1000304b-SAS-CompFeed     INDIA                                  1       11     144
Birth       ki1119695-PROBIT            BELARUS                                0    13879   13884
Birth       ki1119695-PROBIT            BELARUS                                1        5   13884
Birth       ki1126311-ZVITAMBO          ZIMBABWE                               0    13389   13830
Birth       ki1126311-ZVITAMBO          ZIMBABWE                               1      441   13830
Birth       ki1135781-COHORTS           GUATEMALA                              0      841     852
Birth       ki1135781-COHORTS           GUATEMALA                              1       11     852
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                                 0        0       1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                                 1        1       1
Birth       kiGH5241-JiVitA-3           BANGLADESH                             0    35144   39226
Birth       kiGH5241-JiVitA-3           BANGLADESH                             1     4082   39226
Birth       kiGH5241-JiVitA-4           BANGLADESH                             0     1516    1644
Birth       kiGH5241-JiVitA-4           BANGLADESH                             1      128    1644
6 months    iLiNS_DYADM_LNS             MALAWI                                 0      650     683
6 months    iLiNS_DYADM_LNS             MALAWI                                 1       33     683
6 months    ki1000107-Serrinha-VitA     BRAZIL                                 0       30      35
6 months    ki1000107-Serrinha-VitA     BRAZIL                                 1        5      35
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                             0      654     682
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                             1       28     682
6 months    ki1000111-WASH-Kenya        KENYA                                  0       71      74
6 months    ki1000111-WASH-Kenya        KENYA                                  1        3      74
6 months    ki1000125-AgaKhanUniv       PAKISTAN                               0      614     695
6 months    ki1000125-AgaKhanUniv       PAKISTAN                               1       81     695
6 months    ki1000304-EU                INDIA                                  0      323     363
6 months    ki1000304-EU                INDIA                                  1       40     363
6 months    ki1000304-VITAMIN-A         INDIA                                  0     2261    2508
6 months    ki1000304-VITAMIN-A         INDIA                                  1      247    2508
6 months    ki1000304-Vitamin-B12       INDIA                                  0       74      81
6 months    ki1000304-Vitamin-B12       INDIA                                  1        7      81
6 months    ki1000304-ZnMort            INDIA                                  0      132     145
6 months    ki1000304-ZnMort            INDIA                                  1       13     145
6 months    ki1000304b-SAS-CompFeed     INDIA                                  0      562     617
6 months    ki1000304b-SAS-CompFeed     INDIA                                  1       55     617
6 months    ki1000304b-SAS-FoodSuppl    INDIA                                  0      303     355
6 months    ki1000304b-SAS-FoodSuppl    INDIA                                  1       52     355
6 months    ki1017093b-PROVIDE          BANGLADESH                             0       45      46
6 months    ki1017093b-PROVIDE          BANGLADESH                             1        1      46
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF           0     1682    1707
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF           1       25    1707
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                           0      614     630
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                           1       16     630
6 months    ki1112895-Guatemala BSC     GUATEMALA                              0      198     218
6 months    ki1112895-Guatemala BSC     GUATEMALA                              1       20     218
6 months    ki1119695-PROBIT            BELARUS                                0    14270   14500
6 months    ki1119695-PROBIT            BELARUS                                1      230   14500
6 months    ki1126311-ZVITAMBO          ZIMBABWE                               0     7445    7776
6 months    ki1126311-ZVITAMBO          ZIMBABWE                               1      331    7776
6 months    ki1135781-COHORTS           GUATEMALA                              0      809     932
6 months    ki1135781-COHORTS           GUATEMALA                              1      123     932
6 months    ki1148112-iLiNS-DOSE        MALAWI                                 0     1803    1930
6 months    ki1148112-iLiNS-DOSE        MALAWI                                 1      127    1930
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                                 0      976    1029
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                                 1       53    1029
6 months    ki1148112-LCNI-5            MALAWI                                 0      768     839
6 months    ki1148112-LCNI-5            MALAWI                                 1       71     839
6 months    kiGH5241-JiVitA-3           BANGLADESH                             0    31452   33483
6 months    kiGH5241-JiVitA-3           BANGLADESH                             1     2031   33483
6 months    kiGH5241-JiVitA-4           BANGLADESH                             0     8858    9386
6 months    kiGH5241-JiVitA-4           BANGLADESH                             1      528    9386
24 months   iLiNS_DYADM_LNS             MALAWI                                 0       31      35
24 months   iLiNS_DYADM_LNS             MALAWI                                 1        4      35
24 months   ki1000107-Serrinha-VitA     BRAZIL                                 0      103     131
24 months   ki1000107-Serrinha-VitA     BRAZIL                                 1       28     131
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                             0     1048    1187
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                             1      139    1187
24 months   ki1000111-WASH-Kenya        KENYA                                  0     2081    2264
24 months   ki1000111-WASH-Kenya        KENYA                                  1      183    2264
24 months   ki1000125-AgaKhanUniv       PAKISTAN                               0        2       3
24 months   ki1000125-AgaKhanUniv       PAKISTAN                               1        1       3
24 months   ki1000304-EU                INDIA                                  0      197     253
24 months   ki1000304-EU                INDIA                                  1       56     253
24 months   ki1000304-Vitamin-B12       INDIA                                  0      108     133
24 months   ki1000304-Vitamin-B12       INDIA                                  1       25     133
24 months   ki1000304-ZnMort            INDIA                                  0      106     140
24 months   ki1000304-ZnMort            INDIA                                  1       34     140
24 months   ki1017093b-PROVIDE          BANGLADESH                             0        2       2
24 months   ki1017093b-PROVIDE          BANGLADESH                             1        0       2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF           0        3       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF           1        1       4
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                           0     1034    1169
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                           1      135    1169
24 months   ki1119695-PROBIT            BELARUS                                0      823     841
24 months   ki1119695-PROBIT            BELARUS                                1       18     841
24 months   ki1126311-ZVITAMBO          ZIMBABWE                               0       22      37
24 months   ki1126311-ZVITAMBO          ZIMBABWE                               1       15      37
24 months   ki1135781-COHORTS           GUATEMALA                              0      191     335
24 months   ki1135781-COHORTS           GUATEMALA                              1      144     335
24 months   ki1148112-iLiNS-DOSE        MALAWI                                 0      636     776
24 months   ki1148112-iLiNS-DOSE        MALAWI                                 1      140     776
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                                 0       55      65
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                                 1       10      65
24 months   ki1148112-LCNI-5            MALAWI                                 0      346     385
24 months   ki1148112-LCNI-5            MALAWI                                 1       39     385
24 months   kiGH5241-JiVitA-3           BANGLADESH                             0      118     158
24 months   kiGH5241-JiVitA-3           BANGLADESH                             1       40     158
24 months   kiGH5241-JiVitA-4           BANGLADESH                             0     1803    2004
24 months   kiGH5241-JiVitA-4           BANGLADESH                             1      201    2004


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
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
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
![](/tmp/34986891-5e40-4ddd-904e-e891aae0ab33/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34986891-5e40-4ddd-904e-e891aae0ab33/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34986891-5e40-4ddd-904e-e891aae0ab33/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34986891-5e40-4ddd-904e-e891aae0ab33/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.0571429    0.0042326   0.1100531
Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.0945946    0.0034662   0.1857230
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0007376    0.0002344   0.0012407
Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0000000    0.0000000   0.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0324732    0.0265574   0.0383889
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0316925    0.0283225   0.0350625
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0098280    0.0002386   0.0194175
Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0157303    0.0041626   0.0272981
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1124564    0.1056828   0.1192300
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.0957738    0.0894830   0.1020646
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.0803571    0.0331062   0.1276081
Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.0616740    0.0222935   0.1010545
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.0862534    0.0551100   0.1173968
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.0626781    0.0373025   0.0880536
6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.0331325    0.0138658   0.0523993
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.1875000   -0.0065417   0.3815417
6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.1052632   -0.0347445   0.2452708
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.0496894    0.0160988   0.0832801
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.0425532    0.0136789   0.0714275
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0360360    0.0160032   0.0560689
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.1280000    0.0941617   0.1618383
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.1031250    0.0697798   0.1364702
6 months    ki1000304-EU                INDIA                          Control              NA                0.1060606    0.0631123   0.1490089
6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.1151515    0.0663791   0.1639239
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0956522    0.0794414   0.1118630
6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.1013677    0.0845858   0.1181495
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                0.1176471   -0.0364637   0.2717578
6 months    ki1000304-Vitamin-B12       INDIA                          Other                NA                0.0781250    0.0119663   0.1442837
6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.0697674    0.0157388   0.1237961
6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.1186441    0.0358454   0.2014428
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.0949153    0.0683820   0.1214485
6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.0838509    0.0573397   0.1103621
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.1666667    0.0895633   0.2437700
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.1396226    0.0978338   0.1814115
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0235294    0.0091144   0.0379445
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0094340    0.0002299   0.0186381
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0128205    0.0052907   0.0203503
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0246914   -0.0091302   0.0585130
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.0255009    0.0123039   0.0386979
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.1111111    0.0517042   0.1705180
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.0727273    0.0240863   0.1213683
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0194038    0.0101914   0.0286162
6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0124526    0.0077509   0.0171544
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0354906    0.0272057   0.0437755
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0448805    0.0395792   0.0501819
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.1592920    0.1255375   0.1930465
6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.1062500    0.0786675   0.1338325
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.0718750    0.0435690   0.1001810
6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.0645963    0.0525861   0.0766065
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.0626781    0.0373088   0.0880473
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.0457227    0.0299920   0.0614534
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.0669856    0.0330724   0.1008989
6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.0971564    0.0688820   0.1254308
6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.0769231    0.0406885   0.1131576
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.0659911    0.0603117   0.0716705
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.0554274    0.0502752   0.0605795
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.0574006    0.0436679   0.0711333
6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.0552550    0.0430378   0.0674723
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.0562056    0.0456325   0.0667786
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2253521    0.1277934   0.3229108
24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.2000000    0.0983994   0.3016006
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1254613    0.0860073   0.1649152
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1172638    0.0812591   0.1532686
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1133005    0.0881164   0.1384846
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.1000000    0.0786667   0.1213333
24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0560000    0.0358424   0.0761576
24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0786853    0.0620271   0.0953435
24 months   ki1000304-EU                INDIA                          Control              NA                0.2240000    0.1507668   0.2972332
24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.2187500    0.1469917   0.2905083
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.1052632    0.0073184   0.2032079
24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.2210526    0.1372945   0.3048108
24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.2800000    0.1780190   0.3819810
24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.2000000    0.1024094   0.2975906
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1157025    0.0586845   0.1727205
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1154580    0.0961016   0.1348144
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0187166   -0.0058807   0.0433139
24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0235546    0.0023583   0.0447509
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1818182   -0.0492525   0.4128889
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.5000000    0.3051587   0.6948413
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4678363    0.3929385   0.5427340
24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3902439    0.3154749   0.4650129
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1937984    0.1255441   0.2620528
24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1777434    0.1482669   0.2072200
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.0833333   -0.0742605   0.2409272
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1698113    0.0679408   0.2716819
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.1351351    0.0714542   0.1988161
24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.0949721    0.0519674   0.1379767
24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.0736842    0.0210803   0.1262881
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2816901    0.1477978   0.4155825
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2298851    0.1156462   0.3441239
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.1117534    0.0689711   0.1545357
24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.1041293    0.0707573   0.1375012
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.0915948    0.0618302   0.1213595


### Parameter: E(Y)


agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.0763889   0.0213605   0.1314173
Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0003601   0.0001082   0.0006120
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0318872   0.0289588   0.0348156
Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0129108   0.0053261   0.0204955
Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1040636   0.0993965   0.1087307
Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.0778589   0.0559066   0.0998111
6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.0483163   0.0322228   0.0644097
6 months    ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.1428571   0.0252358   0.2604785
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.0410557   0.0261533   0.0559582
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.1165468   0.0926736   0.1404199
6 months    ki1000304-EU                INDIA                          NA                   NA                0.1101928   0.0779362   0.1424494
6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0984849   0.0868210   0.1101487
6 months    ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.0864198   0.0248478   0.1479917
6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.0896552   0.0429938   0.1363165
6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.0891410   0.0699902   0.1082918
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.1464789   0.1096455   0.1833122
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0146456   0.0089451   0.0203460
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.0253968   0.0131019   0.0376918
6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.0917431   0.0533362   0.1301500
6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0158621   0.0104045   0.0213196
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0425669   0.0380795   0.0470542
6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.1319742   0.1102330   0.1537155
6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.0658031   0.0547388   0.0768674
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.0515063   0.0379950   0.0650177
6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.0846246   0.0657805   0.1034686
6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.0606576   0.0567961   0.0645192
6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.0562540   0.0493164   0.0631915
24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.2137405   0.1432707   0.2842102
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1171019   0.0988023   0.1354016
24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0808304   0.0696001   0.0920607
24 months   ki1000304-EU                INDIA                          NA                   NA                0.2213439   0.1700867   0.2726010
24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.1879699   0.1213213   0.2546186
24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.2428571   0.1715710   0.3141433
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1154833   0.0971543   0.1338123
24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0214031   0.0054187   0.0373875
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.4054054   0.2450247   0.5657861
24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4298507   0.3767589   0.4829426
24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1804124   0.1533399   0.2074849
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.1538462   0.0654515   0.2422408
24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.1012987   0.0711206   0.1314768
24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2531646   0.1662034   0.3401257
24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.1002994   0.0803286   0.1202702


### Parameter: RR


agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.6554054   0.4293100    6.3831889
Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.0000000   0.0000000    0.0000001
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9759597   0.7903569    1.2051484
Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.6005618   0.4716784    5.4312383
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8516527   0.7790290    0.9310468
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.7674988   0.3221119    1.8287259
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0733753   0.5383956    2.1399402
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.5286145   0.2602651    1.0736486
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.5614035   0.1040825    3.0281160
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8563830   0.3286190    2.2317389
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7252252   0.3022487    1.7401287
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8056641   0.5305986    1.2233251
6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-EU                INDIA                          Zinc                 Control           1.0857143   0.6042658    1.9507567
6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0597528   0.8362036    1.3430652
6 months    ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          Other                Control           0.6640625   0.1395673    3.1596160
6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           1.7005650   0.5995909    4.8231576
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8834295   0.5792101    1.3474344
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8377358   0.4828503    1.4534553
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.4009434   0.1266951    1.2688386
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.5448718   0.2331915    1.2731392
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.0327869   0.2388275    4.4661889
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.6545455   0.2780175    1.5410169
6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6417614   0.3509861    1.1734302
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.2645754   0.9734715    1.6427301
6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.6670139   0.4770906    0.9325430
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8987308   0.5814229    1.3892075
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.7294851   0.4288554    1.2408578
6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.4504062   0.8088720    2.6007555
6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1483516   0.5751099    2.2929732
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8399225   0.7399859    0.9533558
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9626214   0.6948696    1.3335452
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9791810   0.7221925    1.3276176
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.8875000   0.4553028    1.7299615
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9346618   0.6022534    1.4505402
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9030716   0.6144363    1.3272951
24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.5600000   0.3685258    0.8509580
24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.7868526   0.5825938    1.0627251
24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9765625   0.6145579    1.5518056
24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           2.1000000   0.7689508    5.7350872
24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.7142857   0.3885369    1.3131418
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.9978871   0.5929474    1.6793712
24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.2584888   0.2551604    6.2070520
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           2.7500000   0.7278292   10.3904873
24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8341463   0.6498433    1.0707199
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9171561   0.6214120    1.3536515
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           2.0377358   0.2802264   14.8179028
24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.7027933   0.3655961    1.3509949
24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.5452632   0.2317952    1.2826491
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8160920   0.4103839    1.6228856
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9317774   0.5655069    1.5352759
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8196158   0.4960459    1.3542498


### Parameter: PAR


agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0192460   -0.0395652    0.0780572
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0003774   -0.0006916   -0.0000633
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0005860   -0.0056964    0.0045244
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0030828   -0.0047676    0.0109332
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0083928   -0.0131065   -0.0036790
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0024983   -0.0411951    0.0361986
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0143618   -0.0298888    0.0011651
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0446429   -0.1752649    0.0859792
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0086337   -0.0372289    0.0199615
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0114532   -0.0333465    0.0104400
6 months    ki1000304-EU                INDIA                          Control              NA                 0.0041322   -0.0254110    0.0336754
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0028327   -0.0087319    0.0143973
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0312273   -0.1637869    0.1013323
6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0198877   -0.0205317    0.0603071
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0057742   -0.0256356    0.0140871
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0201878   -0.0856652    0.0452896
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0088838   -0.0205807    0.0028131
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0007055   -0.0309319    0.0323428
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0193680   -0.0581941    0.0194581
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0035418   -0.0088564    0.0017729
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0070763   -0.0003366    0.0144891
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0273178   -0.0498325   -0.0048031
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0060719   -0.0317225    0.0195787
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0111717   -0.0308462    0.0085027
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0176389   -0.0128932    0.0481710
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0053334   -0.0092361   -0.0014307
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0011466   -0.0129338    0.0106406
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0116117   -0.0761623    0.0529390
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0083593   -0.0427210    0.0260023
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0191696   -0.0357732   -0.0025660
24 months   ki1000304-EU                INDIA                          Control              NA                -0.0026561   -0.0545299    0.0492177
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0827068   -0.0097778    0.1751914
24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0371429   -0.1030128    0.0287271
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0002192   -0.0542005    0.0537622
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0026865   -0.0155185    0.0208915
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2235872    0.0059452    0.4412293
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0379855   -0.0899617    0.0139907
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0133861   -0.0753755    0.0486034
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0705128   -0.0827167    0.2237424
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0338364   -0.0850968    0.0174239
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0285256   -0.1257808    0.0687297
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0114540   -0.0472648    0.0243569


### Parameter: PAF


agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.2519481   -0.8640133    0.6997974
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -1.0480896   -1.9539988   -0.4199976
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0183766   -0.1919318    0.1299075
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.2387760   -0.6567218    0.6502358
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0806503   -0.1268989   -0.0362997
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0320871   -0.6684832    0.3615736
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.2972460   -0.6446720   -0.0232114
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.3125000   -1.5932009    0.3357027
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2102928   -1.1452027    0.3171700
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0982716   -0.3022322    0.0737439
6 months    ki1000304-EU                INDIA                          Control              NA                 0.0375000   -0.2714413    0.2713731
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0287625   -0.0960123    0.1393325
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.3613445   -3.1511438    0.5535546
6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.2218247   -0.3664654    0.5568444
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0647766   -0.3144324    0.1374610
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1378205   -0.6841463    0.2312809
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.6065882   -1.5859636    0.0018708
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0277778   -2.5010736    0.7300211
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.2111111   -0.7077384    0.1410920
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.2232846   -0.5724474    0.0483464
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1662388   -0.0264213    0.3227365
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.2069933   -0.3877392   -0.0497887
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0922736   -0.5603346    0.2353809
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.2169005   -0.6605794    0.1082349
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.2084372   -0.2446109    0.4965723
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0879267   -0.1540488   -0.0255931
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0203822   -0.2529726    0.1690323
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0543260   -0.4037261    0.2081053
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0713850   -0.4087361    0.1851805
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.2371585   -0.4581567   -0.0496547
24 months   ki1000304-EU                INDIA                          Control              NA                -0.0120000   -0.2757076    0.1971954
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.4400000   -0.3039978    0.7595088
24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.1529412   -0.4575040    0.0879796
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0018978   -0.5975147    0.3716495
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.1255199   -1.3343648    0.6724096
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.5515152   -0.4277720    0.8591241
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0883691   -0.2166112    0.0263552
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0741971   -0.4789768    0.2197988
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.4583333   -2.2326165    0.9092368
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.3340263   -0.9393723    0.0823700
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.1126761   -0.5713145    0.2120941
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1141978   -0.5328055    0.1900886
