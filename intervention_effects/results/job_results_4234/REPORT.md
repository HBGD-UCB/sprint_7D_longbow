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
* intXmbmi

## Data Summary

agecat      studyid                     country                        intXmbmi                         sstunted   n_cell      n
----------  --------------------------  -----------------------------  ------------------------------  ---------  -------  -----
Birth       iLiNS_DYADM_LNS             MALAWI                         Underweight_Birth                       0        0      1
Birth       iLiNS_DYADM_LNS             MALAWI                         Underweight_Birth                       1        1      1
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_Birth               0        4      4
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_Birth               1        0      4
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth                     0       53     60
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth                     1        7     60
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth                       0       24     27
Birth       ki1000304b-SAS-CompFeed     INDIA                          Underweight_Birth                       1        3     27
Birth       ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_Birth               0        2      2
Birth       ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_Birth               1        0      2
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth                     0     8145   8149
Birth       ki1119695-PROBIT            BELARUS                        Normal weight_Birth                     1        4   8149
Birth       ki1119695-PROBIT            BELARUS                        Underweight_Birth                       0      523    523
Birth       ki1119695-PROBIT            BELARUS                        Underweight_Birth                       1        0    523
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth               0     5050   5051
Birth       ki1119695-PROBIT            BELARUS                        Overweight or Obese_Birth               1        1   5051
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth                     0     6394   6598
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth                     1      204   6598
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth                       0      484    510
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth                       1       26    510
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth               0     2473   2526
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth               1       53   2526
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Underweight_Birth                       0        0      1
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Underweight_Birth                       1        1      1
6 months    iLiNS_DYADM_LNS             MALAWI                         Normal weight_6 months                  0        2      2
6 months    iLiNS_DYADM_LNS             MALAWI                         Normal weight_6 months                  1        0      2
6 months    iLiNS_DYADM_LNS             MALAWI                         Underweight_6 months                    0        1      1
6 months    iLiNS_DYADM_LNS             MALAWI                         Underweight_6 months                    1        0      1
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months                  0      420    432
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months                  1       12    432
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months                    0      194    209
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months                    1       15    209
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6 months            0       40     41
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_6 months            1        1     41
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months            0      174    184
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months            1       10    184
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months                  0      364    396
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months                  1       32    396
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months                    0      110    129
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months                    1       19    129
6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6 months            0       32     32
6 months    ki1000304b-SAS-CompFeed     INDIA                          Overweight or Obese_6 months            1        0     32
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months                  0       32     32
6 months    ki1017093b-PROVIDE          BANGLADESH                     Normal weight_6 months                  1        0     32
6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_6 months                    0        5      6
6 months    ki1017093b-PROVIDE          BANGLADESH                     Underweight_6 months                    1        1      6
6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_6 months            0        7      7
6 months    ki1017093b-PROVIDE          BANGLADESH                     Overweight or Obese_6 months            1        0      7
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months                  0      839    853
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months                  1       14    853
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6 months                    0       27     27
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Underweight_6 months                    1        0     27
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months            0      775    785
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months            1       10    785
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_6 months                  0      431    442
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_6 months                  1       11    442
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_6 months                    0       48     50
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_6 months                    1        2     50
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_6 months            0       41     41
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_6 months            1        0     41
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months                  0     7024   7110
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months                  1       86   7110
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months                    0      452    462
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months                    1       10    462
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months            0     4346   4424
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months            1       78   4424
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months                  0     4325   4524
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months                  1      199   4524
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months                    0      321    338
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months                    1       17    338
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months            0     1721   1779
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months            1       58   1779
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months                  0     1440   1540
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months                  1      100   1540
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months                    0      120    136
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months                    1       16    136
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months            0      234    244
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months            1       10    244
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Normal weight_6 months                  0        2      3
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Normal weight_6 months                  1        1      3
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Underweight_6 months                    0        1      1
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Underweight_6 months                    1        0      1
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months                  0      592    651
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months                  1       59    651
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months                    0      135    145
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months                    1       10    145
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months            0       38     40
6 months    ki1148112-LCNI-5            MALAWI                         Overweight or Obese_6 months            1        2     40
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months                 0      619    699
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months                 1       80    699
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months                   0      332    384
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months                   1       52    384
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months           0       96    103
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months           1        7    103
24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_24 months                 0        2      2
24 months   ki1017093b-PROVIDE          BANGLADESH                     Normal weight_24 months                 1        0      2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_24 months                 0        2      2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_24 months                 1        0      2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_24 months           0        1      2
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_24 months           1        1      2
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_24 months                 0      696    769
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Normal weight_24 months                 1       73    769
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_24 months                   0       84     98
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Underweight_24 months                   1       14     98
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_24 months           0       65     73
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Overweight or Obese_24 months           1        8     73
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months                 0      489    497
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months                 1        8    497
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months                   0       27     28
24 months   ki1119695-PROBIT            BELARUS                        Underweight_24 months                   1        1     28
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months           0      299    308
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months           1        9    308
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months                 0        9     16
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months                 1        7     16
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_24 months                   0        2      2
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_24 months                   1        0      2
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_24 months           0        2      4
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_24 months           1        2      4
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months                 0      503    620
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months                 1      117    620
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months                   0       49     60
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months                   1       11     60
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months           0       79     90
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months           1       11     90
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months                 0      271    303
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months                 1       32    303
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months                   0       56     62
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months                   1        6     62
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months           0       18     19
24 months   ki1148112-LCNI-5            MALAWI                         Overweight or Obese_24 months           1        1     19


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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Underweight_Birth
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Overweight or Obese_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Normal weight_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Underweight_Birth
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Overweight or Obese_Birth
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Underweight_Birth
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO, intXmbmi: Overweight or Obese_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Normal weight_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXmbmi: Underweight_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Overweight or Obese_6 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Normal weight_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS, intXmbmi: Underweight_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Underweight_24 months
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE, intXmbmi: Overweight or Obese_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXmbmi: Overweight or Obese_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     431  11
##           sstunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     696  73
##           sstunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     84 14
##           sstunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     65  8
```




# Results Detail

## Results Plots
![](/tmp/2bea6a56-97bd-424e-b80b-0097f1be6c23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2bea6a56-97bd-424e-b80b-0097f1be6c23/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2bea6a56-97bd-424e-b80b-0097f1be6c23/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2bea6a56-97bd-424e-b80b-0097f1be6c23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Control              NA                0.1290323   -0.0691503   0.3272148
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Other                NA                0.1034483   -0.0004177   0.2073142
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             Control              NA                0.0346294    0.0257958   0.0434630
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             VitA                 NA                0.0296850    0.0249577   0.0344123
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               Control              NA                0.0438597    0.0062313   0.0814880
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               VitA                 NA                0.0530303    0.0309372   0.0751234
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       Control              NA                0.0112360    0.0029577   0.0195143
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       VitA                 NA                0.0241724    0.0172706   0.0310741
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Control              NA                0.0400000    0.0015482   0.0784518
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          LNS                  NA                0.0333333    0.0011791   0.0654876
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Other                NA                0.0188679    0.0005317   0.0372041
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Control              NA                0.0714286    0.0038142   0.1390430
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            LNS                  NA                0.0666667    0.0033983   0.1299350
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Other                NA                0.0752688    0.0215207   0.1290170
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Control              NA                0.0520833    0.0075146   0.0966521
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Maternal             NA                0.0568182    0.0083193   0.1053170
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Control              NA                0.0939227    0.0827428   0.1051025
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Other                NA                0.0697674    0.0306973   0.1088376
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Control              NA                0.1212121    0.0366082   0.2058161
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Other                NA                0.1746032    0.0815946   0.2676118
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Control              NA                0.0218341    0.0028950   0.0407731
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Other                NA                0.0142857   -0.0017733   0.0303448
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Zinc                 NA                0.0144928    0.0029739   0.0260116
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Control              NA                0.0265957    0.0035814   0.0496101
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Other                NA                0.0052632   -0.0050318   0.0155581
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Zinc                 NA                0.0098280    0.0002381   0.0194179
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Control              NA                0.0151256    0.0073826   0.0228686
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Maternal             NA                0.0091514    0.0047456   0.0135573
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Control              NA                0.0179372   -0.0147005   0.0505750
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Maternal             NA                0.0251046    0.0097318   0.0404774
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Control              NA                0.0205633    0.0116520   0.0294745
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Maternal             NA                0.0146319    0.0069908   0.0222730
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          Control              NA                0.0396476    0.0282943   0.0510009
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          VitA                 NA                0.0454411    0.0384284   0.0524538
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            Control              NA                0.0547945    0.0025114   0.1070777
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            VitA                 NA                0.0490566    0.0230134   0.0750998
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    Control              NA                0.0230415    0.0089220   0.0371609
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    VitA                 NA                0.0356877    0.0257708   0.0456047
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          Control              NA                0.0680000    0.0367837   0.0992163
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          LNS                  NA                0.0643411    0.0509475   0.0777347
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            Control              NA                0.1739130    0.0184362   0.3293899
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            LNS                  NA                0.1061947    0.0491803   0.1632091
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    Control              NA                0.0444444   -0.0158907   0.1047796
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    LNS                  NA                0.0402010    0.0128532   0.0675488
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Control              NA                0.0792683    0.0378896   0.1206469
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          LNS                  NA                0.1044776    0.0716976   0.1372576
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Other                NA                0.0723684    0.0311471   0.1135898
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Control              NA                0.0303030   -0.0283857   0.0889918
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            LNS                  NA                0.0735294    0.0112789   0.1357799
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Other                NA                0.0909091    0.0056714   0.1761468
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Control              NA                0.1030303    0.0566121   0.1494485
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         LNS                  NA                0.1186441    0.0709712   0.1663169
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Other                NA                0.1176471    0.0842016   0.1510925
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Control              NA                0.1829268    0.0991398   0.2667138
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           LNS                  NA                0.1200000    0.0562256   0.1837744
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Other                NA                0.1237624    0.0782904   0.1692344
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Control              NA                0.0869565   -0.0287611   0.2026741
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   LNS                  NA                0.1000000   -0.0078766   0.2078766
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Other                NA                0.0400000   -0.0145817   0.0945817
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Control              NA                0.0175439   -0.0217878   0.0568756
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Maternal             NA                0.0148699   -0.0014888   0.0312286
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Control              NA                0.0152672   -0.0247572   0.0552916
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Maternal             NA                0.0395480   -0.0757032   0.1547992
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         Control              NA                0.2857143   -0.0599189   0.6313474
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         VitA                 NA                0.5555556    0.2202709   0.8908402
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         Control              NA                0.2135922    0.1343792   0.2928053
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         LNS                  NA                0.1837524    0.1503421   0.2171628
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           Control              NA                0.0000000    0.0000000   0.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           LNS                  NA                0.2037037    0.0953765   0.3120309
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   Control              NA                0.1578947   -0.0069840   0.3227734
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   LNS                  NA                0.1126761    0.0387152   0.1866369
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Control              NA                0.1222222    0.0544406   0.1900039
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         LNS                  NA                0.1034483    0.0537969   0.1530996
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Other                NA                0.0882353    0.0207088   0.1557618
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Control              NA                0.1875000   -0.0053108   0.3803108
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           LNS                  NA                0.0800000   -0.0272131   0.1872131
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Other                NA                0.0476190   -0.0442068   0.1394449


### Parameter: E(Y)


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             NA                   NA                0.1166667   -0.0002179   0.2335512
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             NA                   NA                0.0309185    0.0267415   0.0350955
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               NA                   NA                0.0509804    0.0318718   0.0700890
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       NA                   NA                0.0209818    0.0153915   0.0265721
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          NA                   NA                0.0277778    0.0122632   0.0432924
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            NA                   NA                0.0717703    0.0366938   0.1068469
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    NA                   NA                0.0543478    0.0215021   0.0871936
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          NA                   NA                0.0808081    0.0569696   0.1046466
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            NA                   NA                0.1472868    0.0809345   0.2136391
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          NA                   NA                0.0164127    0.0078812   0.0249441
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    NA                   NA                0.0127389    0.0048888   0.0205889
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          NA                   NA                0.0120956    0.0073627   0.0168286
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            NA                   NA                0.0216450    0.0039826   0.0393075
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    NA                   NA                0.0176311    0.0115476   0.0237146
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          NA                   NA                0.0439876    0.0380113   0.0499639
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            NA                   NA                0.0502959    0.0269616   0.0736301
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    NA                   NA                0.0326026    0.0243477   0.0408575
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          NA                   NA                0.0649351    0.0526242   0.0772460
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            NA                   NA                0.1176471    0.0632979   0.1719962
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    NA                   NA                0.0409836    0.0160570   0.0659102
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          NA                   NA                0.0906298    0.0685601   0.1126995
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            NA                   NA                0.0689655    0.0275783   0.1103527
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         NA                   NA                0.1144492    0.0908317   0.1380667
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           NA                   NA                0.1354167    0.1011487   0.1696846
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   NA                   NA                0.0679612    0.0191189   0.1168034
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         NA                   NA                0.0160966   -0.0041054   0.0362986
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   NA                   NA                0.0292208   -0.0395613   0.0980029
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         NA                   NA                0.4375000    0.1864543   0.6885457
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         NA                   NA                0.1887097    0.1578857   0.2195336
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           NA                   NA                0.1833333    0.0845997   0.2820670
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   NA                   NA                0.1222222    0.0541734   0.1902710
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         NA                   NA                0.1056106    0.0709479   0.1402732
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           NA                   NA                0.0967742    0.0225815   0.1709669


### Parameter: RR


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level           estimate          ci_lower          ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  ----------------  ----------------  ----------------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Control              Control                 1.0000000         1.0000000          1.000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Other                Control                 0.8017241         0.1292526          4.972911
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             Control              Control                 1.0000000         1.0000000          1.000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             VitA                 Control                 0.8572188         0.6345883          1.157954
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               Control              Control                 1.0000000         1.0000000          1.000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               VitA                 Control                 1.2090909         0.4658633          3.138046
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       Control              Control                 1.0000000         1.0000000          1.000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       VitA                 Control                 2.1513400         0.9762186          4.741012
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          LNS                  Control                 0.8333333         0.2134918          3.252792
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Other                Control                 0.4716981         0.1202293          1.850623
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            LNS                  Control                 0.9333333         0.2442886          3.565909
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Other                Control                 1.0537634         0.3219473          3.449065
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Maternal             Control                 1.0909091         0.3257429          3.653442
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Other                Control                 0.7428181         0.4190762          1.316655
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Other                Control                 1.4404762         0.5978861          3.470513
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Other                Control                 0.6542857         0.1581682          2.706548
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Zinc                 Control                 0.6637681         0.2046812          2.152558
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Other                Control                 0.1978947         0.0233087          1.680158
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Zinc                 Control                 0.3695332         0.1002869          1.361641
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Maternal             Control                 0.6050294         0.2999336          1.220472
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Maternal             Control                 1.3995815         0.2104700          9.306926
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Maternal             Control                 0.7115564         0.3610828          1.402206
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          VitA                 Control                 1.1461264         0.8278649          1.586739
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            VitA                 Control                 0.8952830         0.3004342          2.667911
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    VitA                 Control                 1.5488476         0.7903052          3.035446
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          LNS                  Control                 0.9461924         0.5715719          1.566347
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            LNS                  Control                 0.6106195         0.2152192          1.732448
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    LNS                  Control                 0.9045226         0.1981366          4.129278
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          LNS                  Control                 1.3180253         0.7168367          2.423412
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Other                Control                 0.9129555         0.4216044          1.976942
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Control              Control                 1.0000000         1.0000000          1.000000
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            LNS                  Control                 2.4264706         0.2930984         20.087993
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Other                Control                 3.0000000         0.3488404         25.799763
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         LNS                  Control                 1.1515454         0.6296591          2.105992
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Other                Control                 1.1418685         0.6702807          1.945250
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           LNS                  Control                 0.6560000         0.3252400          1.323134
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Other                Control                 0.6765677         0.3760961          1.217092
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   LNS                  Control                 1.1500000         0.2073563          6.377911
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Other                Control                 0.4600000         0.0683892          3.094056
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Maternal             Control                 0.8475836         0.0700714         10.252371
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Maternal             Control                 2.5903955         0.0503574        133.250444
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         VitA                 Control                 1.9444444         0.5031202          7.514832
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         LNS                  Control                 0.8602954         0.5692055          1.300248
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           LNS                  Control           8666536.0504134   3412289.1374847   22011278.671561
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   LNS                  Control                 0.7136150         0.2078756          2.449765
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         LNS                  Control                 0.8463950         0.4064885          1.762373
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Other                Control                 0.7219251         0.2805657          1.857590
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Control              Control                 1.0000000         1.0000000          1.000000
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           LNS                  Control                 0.4266667         0.0787892          2.310527
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Other                Control                 0.2539683         0.0285544          2.258838


### Parameter: PAR


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Control              NA                -0.0123656   -0.1189641   0.0942329
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             Control              NA                -0.0037109   -0.0112306   0.0038088
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               Control              NA                 0.0071207   -0.0267620   0.0410035
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       Control              NA                 0.0097458    0.0016232   0.0178685
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Control              NA                -0.0122222   -0.0443895   0.0199451
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Control              NA                 0.0003418   -0.0575561   0.0582396
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Control              NA                 0.0022645   -0.0292392   0.0337681
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Control              NA                -0.0131146   -0.0368648   0.0106357
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Control              NA                 0.0260747   -0.0369090   0.0890584
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Control              NA                -0.0054214   -0.0208773   0.0100345
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Control              NA                -0.0138569   -0.0322304   0.0045166
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Control              NA                -0.0030299   -0.0074961   0.0014363
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Control              NA                 0.0037078   -0.0146915   0.0221071
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Control              NA                -0.0029322   -0.0089290   0.0030647
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          Control              NA                 0.0043400   -0.0056568   0.0143369
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            Control              NA                -0.0044987   -0.0502945   0.0412972
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    Control              NA                 0.0095611   -0.0034862   0.0226084
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          Control              NA                -0.0030649   -0.0315190   0.0253891
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            Control              NA                -0.0562660   -0.1939275   0.0813956
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    Control              NA                -0.0034608   -0.0574879   0.0505662
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Control              NA                 0.0113615   -0.0251980   0.0479210
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Control              NA                 0.0386625   -0.0212498   0.0985748
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Control              NA                 0.0114189   -0.0297541   0.0525919
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Control              NA                -0.0475102   -0.1195956   0.0245753
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Control              NA                -0.0189954   -0.1179695   0.0799788
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Control              NA                -0.0014473   -0.0244226   0.0215281
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Control              NA                 0.0139536   -0.0571653   0.0850725
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         Control              NA                 0.1517857   -0.1274216   0.4309930
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         Control              NA                -0.0248826   -0.0965763   0.0468112
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           Control              NA                 0.1833333    0.0845997   0.2820670
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   Control              NA                -0.0356725   -0.1782822   0.1069372
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Control              NA                -0.0166117   -0.0719879   0.0387646
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Control              NA                -0.0907258   -0.2439999   0.0625483


### Parameter: PAF


agecat      studyid                     country                        intXmbmi                        intervention_level   baseline_level      estimate      ci_lower     ci_upper
----------  --------------------------  -----------------------------  ------------------------------  -------------------  ---------------  -----------  ------------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Normal weight_Birth             Control              NA                -0.1059908    -1.4012359    0.4905892
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_Birth             Control              NA                -0.1200236    -0.3910364    0.0981884
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_Birth               Control              NA                 0.1396761    -0.8587477    0.6017979
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_Birth       Control              NA                 0.4644901    -0.0632617    0.7302914
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_6 months          Control              NA                -0.4400000    -2.1646166    0.3447548
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_6 months            Control              NA                 0.0047619    -1.2384723    0.5575112
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Overweight or Obese_6 months    Control              NA                 0.0416667    -0.7538308    0.4763447
6 months    ki1000304b-SAS-CompFeed     INDIA                          Normal weight_6 months          Control              NA                -0.1622928    -0.5535156    0.1304081
6 months    ki1000304b-SAS-CompFeed     INDIA                          Underweight_6 months            Control              NA                 0.1770335    -0.3767675    0.5080696
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Normal weight_6 months          Control              NA                -0.3303182    -1.6696909    0.3370969
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Overweight or Obese_6 months    Control              NA                -1.0877660    -2.8663923   -0.1273473
6 months    ki1119695-PROBIT            BELARUS                        Normal weight_6 months          Control              NA                -0.2504978    -0.6415997    0.0474263
6 months    ki1119695-PROBIT            BELARUS                        Underweight_6 months            Control              NA                 0.1713004    -1.5932425    0.7351798
6 months    ki1119695-PROBIT            BELARUS                        Overweight or Obese_6 months    Control              NA                -0.1663056    -0.5609260    0.1285502
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_6 months          Control              NA                 0.0986651    -0.1593523    0.2992600
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Underweight_6 months            Control              NA                -0.0894440    -1.5109809    0.5273209
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Overweight or Obese_6 months    Control              NA                 0.2932624    -0.2334278    0.5950488
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_6 months          Control              NA                -0.0472000    -0.5911983    0.3108164
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Underweight_6 months            Control              NA                -0.4782609    -2.2343419    0.3243586
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_6 months    Control              NA                -0.0844444    -2.6540592    0.6781607
6 months    ki1148112-LCNI-5            MALAWI                         Normal weight_6 months          Control              NA                 0.1253617    -0.3856580    0.4479214
6 months    ki1148112-LCNI-5            MALAWI                         Underweight_6 months            Control              NA                 0.5606061    -1.7480987    0.9297452
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Normal weight_24 months         Control              NA                 0.0997727    -0.3417974    0.3960272
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Underweight_24 months           Control              NA                -0.3508443    -0.9969533    0.0862179
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Overweight or Obese_24 months   Control              NA                -0.2795031    -2.9583731    0.5864139
24 months   ki1119695-PROBIT            BELARUS                        Normal weight_24 months         Control              NA                -0.0899123    -2.7810047    0.6858219
24 months   ki1119695-PROBIT            BELARUS                        Overweight or Obese_24 months   Control              NA                 0.4775233   -10.4961764    0.9762546
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Normal weight_24 months         Control              NA                 0.3469388    -0.7365417    0.7544033
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Normal weight_24 months         Control              NA                -0.1318563    -0.5829034    0.1906653
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Underweight_24 months           Control              NA                 0.9999999     0.9999997    0.9999999
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Overweight or Obese_24 months   Control              NA                -0.2918660    -2.1697631    0.4734882
24 months   ki1148112-LCNI-5            MALAWI                         Normal weight_24 months         Control              NA                -0.1572917    -0.8176828    0.2631696
24 months   ki1148112-LCNI-5            MALAWI                         Underweight_24 months           Control              NA                -0.9375000    -3.1705849    0.0999089
