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
* intXmbmi

## Data Summary

agecat      studyid                     country                        intXmbmi                         stunted   n_cell      n
----------  --------------------------  -----------------------------  ------------------------------  --------  -------  -----
Birth       iLiNS_DYADM_LNS             MALAWI                         Underweight_Birth                      0        0      1
Birth       iLiNS_DYADM_LNS             MALAWI                         Underweight_Birth                      1        1      1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_Birth              0        4      4
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_Birth              1        0      4
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth                    0       43     60
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth                    1       17     60
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth                      0       16     27
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth                      1       11     27
Birth       ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_Birth              0        2      2
Birth       ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_Birth              1        0      2
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth                    0     8129   8149
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth                    1       20   8149
Birth       ki1119695-PROBIT            BELARUS                        Underweight_Birth                      0      522    523
Birth       ki1119695-PROBIT            BELARUS                        Underweight_Birth                      1        1    523
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth              0     5039   5051
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth              1       12   5051
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth                    0     5912   6598
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth                    1      686   6598
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth                      0      432    510
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth                      1       78    510
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth              0     2334   2526
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth              1      192   2526
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Underweight_Birth                      0        0      1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Underweight_Birth                      1        1      1
6 months    iLiNS_DYADM_LNS             MALAWI                         Normal weight_6 months                 0        2      2
6 months    iLiNS_DYADM_LNS             MALAWI                         Normal weight_6 months                 1        0      2
6 months    iLiNS_DYADM_LNS             MALAWI                         Underweight_6 months                   0        0      1
6 months    iLiNS_DYADM_LNS             MALAWI                         Underweight_6 months                   1        1      1
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months                 0      378    432
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months                 1       54    432
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months                   0      165    209
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months                   1       44    209
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6 months           0       39     41
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6 months           1        2     41
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months           0      141    184
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months           1       43    184
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months                 0      286    396
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months                 1      110    396
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months                   0       81    129
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months                   1       48    129
6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6 months           0       29     32
6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6 months           1        3     32
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months                 0       27     32
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months                 1        5     32
6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_6 months                   0        3      6
6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_6 months                   1        3      6
6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_6 months           0        6      7
6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_6 months           1        1      7
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months                 0      771    853
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months                 1       82    853
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6 months                   0       24     27
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6 months                   1        3     27
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months           0      692    785
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months           1       93    785
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_6 months                 0      389    442
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_6 months                 1       53    442
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_6 months                   0       43     50
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_6 months                   1        7     50
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_6 months           0       39     41
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_6 months           1        2     41
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months                 0     6685   7110
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months                 1      425   7110
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months                   0      418    462
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months                   1       44    462
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months           0     4158   4424
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months           1      266   4424
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months                 0     3728   4524
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months                 1      796   4524
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months                   0      266    338
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months                   1       72    338
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months           0     1549   1779
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months           1      230   1779
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months                 0     1064   1540
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months                 1      476   1540
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months                   0       79    136
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months                   1       57    136
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months           0      198    244
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months           1       46    244
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Normal weight_6 months                 0        2      3
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Normal weight_6 months                 1        1      3
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Underweight_6 months                   0        0      1
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Underweight_6 months                   1        1      1
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months                 0      414    651
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months                 1      237    651
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months                   0       83    145
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months                   1       62    145
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months           0       32     40
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months           1        8     40
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months                0      420    699
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months                1      279    699
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months                  0      204    384
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months                  1      180    384
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months          0       79    103
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months          1       24    103
24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_24 months                0        2      2
24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_24 months                1        0      2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_24 months                0        2      2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_24 months                1        0      2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_24 months          0        1      2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_24 months          1        1      2
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_24 months                0      514    769
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_24 months                1      255    769
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_24 months                  0       57     98
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_24 months                  1       41     98
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_24 months          0       55     73
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_24 months          1       18     73
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months                0      443    497
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months                1       54    497
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months                  0       22     28
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months                  1        6     28
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months          0      269    308
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months          1       39    308
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months                0        5     16
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months                1       11     16
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_24 months                  0        1      2
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_24 months                  1        1      2
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_24 months          0        1      4
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_24 months          1        3      4
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months                0      296    620
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months                1      324    620
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months                  0       24     60
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months                  1       36     60
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months          0       62     90
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months          1       28     90
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months                0      193    303
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months                1      110    303
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months                  0       34     62
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months                  1       28     62
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months          0       14     19
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months          1        5     19


The following strata were considered:

* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Underweight_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Underweight_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Underweight_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Underweight_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Underweight_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Underweight_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Underweight_6 months
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Underweight_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmbmi: Overweight or Obese_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Normal weight_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Overweight or Obese_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Underweight_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Normal weight_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Overweight or Obese_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Underweight_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Normal weight_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Overweight or Obese_Birth
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Underweight_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Underweight_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Underweight_Birth
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN, intXmbmi: Overweight or Obese_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Overweight or Obese_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Underweight_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Underweight_Birth
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Underweight_6 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Underweight_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Overweight or Obese_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     389  53
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     43  7
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     514 255
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     57 41
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     55 18
```




# Results Detail

## Results Plots
![](/tmp/4e981de1-71f7-4e7f-8e12-dcc77c0d4420/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4e981de1-71f7-4e7f-8e12-dcc77c0d4420/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4e981de1-71f7-4e7f-8e12-dcc77c0d4420/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e981de1-71f7-4e7f-8e12-dcc77c0d4420/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Control              NA                0.3225806    0.1086976   0.5364637
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Other                NA                0.2413793    0.0699490   0.4128096
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth               Control              NA                0.2727273    0.0377409   0.5077137
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth               Other                NA                0.5000000    0.2198039   0.7801961
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth             Control              NA                0.0038023    0.0016507   0.0059538
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth             Maternal             NA                0.0011893   -0.0005275   0.0029062
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth       Control              NA                0.0024067   -0.0007809   0.0055943
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth       Maternal             NA                0.0023456   -0.0007789   0.0054700
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             Control              NA                0.1051033    0.0902863   0.1199203
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             VitA                 NA                0.1035945    0.0951064   0.1120826
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               Control              NA                0.1403509    0.0765260   0.2041758
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               VitA                 NA                0.1565657    0.1207395   0.1923918
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       Control              NA                0.0738363    0.0532978   0.0943748
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       VitA                 NA                0.0767210    0.0647608   0.0886812
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Control              NA                0.1700000    0.0962920   0.2437080
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          LNS                  NA                0.1333333    0.0724419   0.1942248
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Other                NA                0.0990566    0.0587966   0.1393166
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Control              NA                0.2142857    0.1065587   0.3220127
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            LNS                  NA                0.2166667    0.1121746   0.3211587
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Other                NA                0.2043011    0.1221605   0.2864417
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Control              NA                0.2395833    0.1539683   0.3251984
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Maternal             NA                0.2272727    0.1394763   0.3150692
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Control              NA                0.2817680    0.2092159   0.3543200
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Other                NA                0.2744186    0.2461553   0.3026819
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Control              NA                0.3333333    0.2378865   0.4287802
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Other                NA                0.4126984    0.2546667   0.5707302
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months          Control              NA                0.2500000   -0.0548582   0.5548582
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months          Other                NA                0.1250000   -0.0094298   0.2594298
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Control              NA                0.1004367    0.0614831   0.1393902
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Other                NA                0.0857143    0.0478299   0.1235987
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Zinc                 NA                0.0990338    0.0702434   0.1278243
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Control              NA                0.1276596    0.0799269   0.1753922
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Other                NA                0.1157895    0.0702634   0.1613156
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Zinc                 NA                0.1154791    0.0844097   0.1465486
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Control              NA                0.0676370    0.0454851   0.0897888
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Maternal             NA                0.0521353    0.0364869   0.0677837
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Control              NA                0.1165919    0.0738600   0.1593239
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Maternal             NA                0.0753138    0.0318509   0.1187767
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Control              NA                0.0603487    0.0390480   0.0816494
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Maternal             NA                0.0598994    0.0411386   0.0786602
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          Control              NA                0.1665198    0.1448438   0.1881958
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          VitA                 NA                0.1791089    0.1661978   0.1920199
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            Control              NA                0.2739726    0.1715112   0.3764340
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            VitA                 NA                0.1962264    0.1483398   0.2441130
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    Control              NA                0.1359447    0.1036912   0.1681982
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    VitA                 NA                0.1271375    0.1093294   0.1449457
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          Control              NA                0.3280000    0.2697842   0.3862158
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          LNS                  NA                0.3054264    0.2802840   0.3305688
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            Control              NA                0.5217391    0.3168373   0.7266410
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            LNS                  NA                0.3982301    0.3076373   0.4888229
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    Control              NA                0.2222222    0.1005041   0.3439403
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    LNS                  NA                0.1809045    0.1273119   0.2344972
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Control              NA                0.3292683    0.2572887   0.4012479
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          LNS                  NA                0.3701493    0.3184044   0.4218941
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Other                NA                0.3881579    0.3106254   0.4656904
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Control              NA                0.4242424    0.2550345   0.5934504
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            LNS                  NA                0.3970588    0.2803614   0.5137563
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Other                NA                0.4772727    0.3291760   0.6253694
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    Control              NA                0.2727273    0.0061873   0.5392673
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    LNS                  NA                0.1666667   -0.0076919   0.3410252
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    Other                NA                0.1818182   -0.0490122   0.4126486
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Control              NA                0.3878788    0.3134769   0.4622806
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         LNS                  NA                0.3785311    0.3070267   0.4500355
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Other                NA                0.4145658    0.3634258   0.4657058
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Control              NA                0.5609756    0.4534223   0.6685289
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           LNS                  NA                0.4300000    0.3328403   0.5271597
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Other                NA                0.4504950    0.3817930   0.5191971
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Control              NA                0.2173913    0.0479980   0.3867846
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   LNS                  NA                0.2000000    0.0561645   0.3438355
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Other                NA                0.2600000    0.1378245   0.3821755
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Control              NA                0.1052632    0.0312461   0.1792802
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Maternal             NA                0.1115242    0.0629192   0.1601291
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months           Control              NA                0.1818182   -0.1672567   0.5308930
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months           Maternal             NA                0.2352941   -0.0143305   0.4849187
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Control              NA                0.1526718    0.0530996   0.2522440
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Maternal             NA                0.1073446   -0.0153347   0.2300240
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         Control              NA                0.5714286    0.1928064   0.9500507
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         VitA                 NA                0.7777778    0.4972585   1.0582971
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         Control              NA                0.5436893    0.4474205   0.6399582
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         LNS                  NA                0.5183752    0.4752700   0.5614805
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           Control              NA                0.5000000    0.0965478   0.9034522
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           LNS                  NA                0.6111111    0.4799897   0.7422325
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   Control              NA                0.3684211    0.1503070   0.5865351
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   LNS                  NA                0.2957746    0.1890213   0.4025280
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Control              NA                0.3777778    0.2774467   0.4781089
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         LNS                  NA                0.3931034    0.3134705   0.4727364
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Other                NA                0.2794118    0.1725857   0.3862379
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Control              NA                0.4375000    0.1924418   0.6825582
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           LNS                  NA                0.4000000    0.2063959   0.5936041
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Other                NA                0.5238095    0.3084588   0.7391603
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   Control              NA                0.2000000   -0.1602165   0.5602165
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   LNS                  NA                0.3333333    0.0169154   0.6497513
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   Other                NA                0.2000000   -0.1602165   0.5602165


### Parameter: E(Y)


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             NA                   NA                0.2833333   0.1434542   0.4232125
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth               NA                   NA                0.4074074   0.2051492   0.6096656
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth             NA                   NA                0.0024543   0.0009988   0.0039098
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth       NA                   NA                0.0023758   0.0001450   0.0046065
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             NA                   NA                0.1039709   0.0966056   0.1113362
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               NA                   NA                0.1529412   0.1216726   0.1842098
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       NA                   NA                0.0760095   0.0656727   0.0863463
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          NA                   NA                0.1250000   0.0937774   0.1562226
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            NA                   NA                0.2105263   0.1551227   0.2659300
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    NA                   NA                0.2336957   0.1723832   0.2950081
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          NA                   NA                0.2777778   0.2413281   0.3142275
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            NA                   NA                0.3720930   0.2781350   0.4660511
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months          NA                   NA                0.1562500   0.0284343   0.2840657
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          NA                   NA                0.0961313   0.0763382   0.1159244
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    NA                   NA                0.1184713   0.0958502   0.1410925
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          NA                   NA                0.0597750   0.0453286   0.0742213
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            NA                   NA                0.0952381   0.0635513   0.1269249
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    NA                   NA                0.0601266   0.0458796   0.0743736
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          NA                   NA                0.1759505   0.1648535   0.1870475
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            NA                   NA                0.2130178   0.1693035   0.2567320
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    NA                   NA                0.1292861   0.1136907   0.1448815
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          NA                   NA                0.3090909   0.2860031   0.3321787
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            NA                   NA                0.4191176   0.3358851   0.5023502
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    NA                   NA                0.1885246   0.1393471   0.2377021
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          NA                   NA                0.3640553   0.3270653   0.4010453
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            NA                   NA                0.4275862   0.3467820   0.5083904
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    NA                   NA                0.2000000   0.0744618   0.3255382
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         NA                   NA                0.3991416   0.3628113   0.4354720
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           NA                   NA                0.4687500   0.4187732   0.5187268
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   NA                   NA                0.2330097   0.1509689   0.3150505
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         NA                   NA                0.1086519   0.0656960   0.1516078
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months           NA                   NA                0.2142857   0.0104049   0.4181666
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   NA                   NA                0.1266234   0.0453237   0.2079231
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         NA                   NA                0.6875000   0.4529347   0.9220653
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         NA                   NA                0.5225806   0.4832320   0.5619293
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           NA                   NA                0.6000000   0.4749949   0.7250051
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   NA                   NA                0.3111111   0.2149310   0.4072913
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         NA                   NA                0.3630363   0.3088016   0.4172710
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           NA                   NA                0.4516129   0.3267280   0.5764978
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   NA                   NA                0.2631579   0.0597315   0.4665843


### Parameter: RR


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Control              Control           1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Other                Control           0.7482759   0.2831850    1.977212
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth               Control              Control           1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth               Other                Control           1.8333333   0.6277918    5.353863
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth             Control              Control           1.0000000   1.0000000    1.000000
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth             Maternal             Control           0.3127973   0.0661912    1.478174
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth       Control              Control           1.0000000   1.0000000    1.000000
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth       Maternal             Control           0.9745895   0.1489103    6.378502
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             Control              Control           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             VitA                 Control           0.9856449   0.8373472    1.160207
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               Control              Control           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               VitA                 Control           1.1155303   0.6704887    1.855971
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       Control              Control           1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       VitA                 Control           1.0390687   0.7553733    1.429312
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          LNS                  Control           0.7843137   0.4178350    1.472227
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Other                Control           0.5826859   0.3216168    1.055675
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            LNS                  Control           1.0111111   0.5037887    2.029314
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Other                Control           0.9534050   0.5008537    1.814863
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Maternal             Control           0.9486166   0.5604632    1.605589
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Other                Control           0.9739170   0.7382507    1.284813
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Other                Control           1.2380952   0.7670739    1.998347
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months          Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months          Other                Control           0.5000000   0.0983662    2.541522
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Other                Control           0.8534161   0.4740076    1.536514
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Zinc                 Control           0.9860323   0.6072785    1.601011
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Other                Control           0.9070175   0.5271995    1.560474
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Zinc                 Control           0.9045864   0.5706832    1.433854
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Maternal             Control           0.7708110   0.4963175    1.197116
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Maternal             Control           0.6459607   0.3259549    1.280132
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Maternal             Control           0.9925553   0.6197157    1.589706
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          VitA                 Control           1.0756010   0.9268925    1.248168
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            VitA                 Control           0.7162264   0.4582585    1.119412
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    VitA                 Control           0.9352152   0.7099965    1.231876
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          LNS                  Control           0.9311779   0.7657092    1.132404
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            LNS                  Control           0.7632743   0.4848114    1.201679
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    LNS                  Control           0.8140704   0.4367377    1.517411
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          LNS                  Control           1.1241570   0.8672328    1.457197
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Other                Control           1.1788499   0.8767101    1.585116
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            LNS                  Control           0.9359244   0.5702623    1.536055
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Other                Control           1.1250000   0.6787160    1.864734
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    Control              Control           1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    LNS                  Control           0.6111111   0.1460057    2.557824
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    Other                Control           0.6666667   0.1343062    3.309188
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         LNS                  Control           0.9759004   0.7455671    1.277392
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Other                Control           1.0688025   0.8508492    1.342587
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           LNS                  Control           0.7665217   0.5699394    1.030909
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Other                Control           0.8030564   0.6285675    1.025983
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   LNS                  Control           0.9200000   0.3186217    2.656442
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Other                Control           1.1960000   0.4814512    2.971051
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Maternal             Control           1.0594795   0.4632200    2.423248
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months           Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months           Maternal             Control           1.2941176   0.1450038   11.549633
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Maternal             Control           0.7031073   0.1872881    2.639570
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         VitA                 Control           1.3611111   0.6401267    2.894151
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         LNS                  Control           0.9534402   0.7840377    1.159444
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           LNS                  Control           1.2222222   0.5303207    2.816838
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   LNS                  Control           0.8028169   0.4013193    1.605991
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         LNS                  Control           1.0405680   0.7450863    1.453230
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Other                Control           0.7396194   0.4643406    1.178094
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           LNS                  Control           0.9142857   0.4360961    1.916821
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Other                Control           1.1972789   0.5976400    2.398562
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   Control              Control           1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   LNS                  Control           1.6666667   0.2175999   12.765528
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   Other                Control           1.0000000   0.0783072   12.770214


### Parameter: PAR


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Control              NA                -0.0392473   -0.1766002   0.0981056
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth               Control              NA                 0.1346801   -0.0710875   0.3404478
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth             Control              NA                -0.0013480   -0.0027999   0.0001039
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth       Control              NA                -0.0000310   -0.0022913   0.0022294
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             Control              NA                -0.0011324   -0.0139485   0.0116837
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               Control              NA                 0.0125903   -0.0442445   0.0694251
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       Control              NA                 0.0021732   -0.0157322   0.0200786
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Control              NA                -0.0450000   -0.1073899   0.0173899
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Control              NA                -0.0037594   -0.0957141   0.0881953
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Control              NA                -0.0058877   -0.0645436   0.0527683
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Control              NA                -0.0039902   -0.0464645   0.0384841
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Control              NA                 0.0387597   -0.0534432   0.1309625
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months          Control              NA                -0.0937500   -0.3443615   0.1568615
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Control              NA                -0.0043054   -0.0373874   0.0287767
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Control              NA                -0.0091882   -0.0504049   0.0320284
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Control              NA                -0.0078620   -0.0214989   0.0057749
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Control              NA                -0.0213538   -0.0542008   0.0114931
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Control              NA                -0.0002221   -0.0142315   0.0137873
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          Control              NA                 0.0094307   -0.0094701   0.0283314
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            Control              NA                -0.0609549   -0.1496932   0.0277835
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    Control              NA                -0.0066586   -0.0345142   0.0211970
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          Control              NA                -0.0189091   -0.0720295   0.0342113
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            Control              NA                -0.1026215   -0.2889322   0.0836893
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    Control              NA                -0.0336976   -0.1421830   0.0747877
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Control              NA                 0.0347870   -0.0279736   0.0975476
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Control              NA                 0.0033438   -0.1454126   0.1521001
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    Control              NA                -0.0727273   -0.2911979   0.1457434
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Control              NA                 0.0112628   -0.0538689   0.0763946
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Control              NA                -0.0922256   -0.1877506   0.0032994
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Control              NA                 0.0156184   -0.1347476   0.1659844
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Control              NA                 0.0033888   -0.0445343   0.0513118
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months           Control              NA                 0.0324675   -0.2286947   0.2936297
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Control              NA                -0.0260484   -0.1162885   0.0641917
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         Control              NA                 0.1160714   -0.1540031   0.3861459
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         Control              NA                -0.0211087   -0.1090674   0.0668501
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           Control              NA                 0.1000000   -0.2818969   0.4818969
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   Control              NA                -0.0573099   -0.2489807   0.1343608
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Control              NA                -0.0147415   -0.0985730   0.0690901
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Control              NA                 0.0141129   -0.1972030   0.2254288
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   Control              NA                 0.0631579   -0.2575376   0.3838534


### Parameter: PAF


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Control              NA                -0.1385199   -0.7302482    0.2508430
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth               Control              NA                 0.3305785   -0.3622380    0.6710376
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth             Control              NA                -0.5492395   -1.3531587   -0.0199666
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth       Control              NA                -0.0130365   -1.5911648    0.6039453
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             Control              NA                -0.0108913   -0.1419861    0.1051544
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               Control              NA                 0.0823212   -0.3754244    0.3877276
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       Control              NA                 0.0285915   -0.2379605    0.2377508
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Control              NA                -0.3600000   -0.9558491    0.0543238
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Control              NA                -0.0178571   -0.5633174    0.3372855
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Control              NA                -0.0251938   -0.3095384    0.1974101
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Control              NA                -0.0143646   -0.1778983    0.1264648
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Control              NA                 0.1041667   -0.1664297    0.3119882
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months          Control              NA                -0.6000000   -3.2765293    0.4013837
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Control              NA                -0.0447865   -0.4522333    0.2483448
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Control              NA                -0.0775566   -0.4878794    0.2196086
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Control              NA                -0.1315270   -0.3774522    0.0704916
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Control              NA                -0.2242152   -0.6451003    0.0889899
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Control              NA                -0.0036939   -0.2658070    0.2041430
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          Control              NA                 0.0535984   -0.0601205    0.1551187
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            Control              NA                -0.2861492   -0.7763640    0.0687834
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    Control              NA                -0.0515027   -0.2905461    0.1432635
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          Control              NA                -0.0611765   -0.2477321    0.0974862
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            Control              NA                -0.2448513   -0.7821294    0.1304477
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    Control              NA                -0.1787440   -0.9191992    0.2760328
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Control              NA                 0.0955542   -0.0943759    0.2525217
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Control              NA                 0.0078201   -0.4088737    0.3012710
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months    Control              NA                -0.3636364   -2.0211281    0.3845001
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Control              NA                 0.0282177   -0.1494693    0.1784375
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Control              NA                -0.1967480   -0.4203334   -0.0083588
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Control              NA                 0.0670290   -0.8628399    0.5327377
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Control              NA                 0.0311891   -0.5339914    0.3881357
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months           Control              NA                 0.1515152   -2.6733972    0.8040161
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Control              NA                -0.2057154   -1.2767223    0.3614726
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         Control              NA                 0.1688312   -0.3512387    0.4887346
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         Control              NA                -0.0403931   -0.2231306    0.1150431
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           Control              NA                 0.1666667   -0.7917184    0.6124143
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   Control              NA                -0.1842105   -0.9926793    0.2962467
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Control              NA                -0.0406061   -0.2991688    0.1664971
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Control              NA                 0.0312500   -0.5703651    0.4023832
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months   Control              NA                 0.2400000   -2.7453826    0.8457834
