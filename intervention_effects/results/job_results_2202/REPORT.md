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

* agecat
* studyid
* country

## Data Summary

agecat      studyid                     country                        tr          stunted   n_cell       n
----------  --------------------------  -----------------------------  ---------  --------  -------  ------
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0       40     131
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1       31     131
24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       34     131
24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1       26     131
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           0       10      35
6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        6      35
6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       16      35
6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        3      35
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0      156    1187
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1      115    1187
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      191    1187
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1      116    1187
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      357    1187
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      252    1187
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0      132     682
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       29     682
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      159     682
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       29     682
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      291     682
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       42     682
24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      527    2264
24 months   ki1000111-WASH-Kenya        KENYA                          Control           1      233    2264
24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      354    2264
24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1      146    2264
24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      684    2264
24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      320    2264
6 months    ki1000111-WASH-Kenya        KENYA                          Control           0       23      74
6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        2      74
6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0       12      74
6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        3      74
6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       28      74
6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        6      74
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0      252     695
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1      123     695
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0      241     695
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       79     695
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        0       3
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1       3
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1       3
24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1       3
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        7      11
Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        4      11
24 months   ki1000304-EU                INDIA                          Control           0       46     253
24 months   ki1000304-EU                INDIA                          Control           1       79     253
24 months   ki1000304-EU                INDIA                          Zinc              0       55     253
24 months   ki1000304-EU                INDIA                          Zinc              1       73     253
6 months    ki1000304-EU                INDIA                          Control           0      129     363
6 months    ki1000304-EU                INDIA                          Control           1       69     363
6 months    ki1000304-EU                INDIA                          Zinc              0      117     363
6 months    ki1000304-EU                INDIA                          Zinc              1       48     363
6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      813    2508
6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      452    2508
6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      831    2508
6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      412    2508
6 months    ki1000304-Vitamin-B12       INDIA                          Control           0       11      81
6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        6      81
6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       47      81
6 months    ki1000304-Vitamin-B12       INDIA                          Other             1       17      81
24 months   ki1000304-Vitamin-B12       INDIA                          Control           0       24     133
24 months   ki1000304-Vitamin-B12       INDIA                          Control           1       14     133
24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       50     133
24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       45     133
6 months    ki1000304-ZnMort            INDIA                          Control           0       55     145
6 months    ki1000304-ZnMort            INDIA                          Control           1       31     145
6 months    ki1000304-ZnMort            INDIA                          Zinc              0       38     145
6 months    ki1000304-ZnMort            INDIA                          Zinc              1       21     145
24 months   ki1000304-ZnMort            INDIA                          Control           0       27     140
24 months   ki1000304-ZnMort            INDIA                          Control           1       48     140
24 months   ki1000304-ZnMort            INDIA                          Zinc              0       30     140
24 months   ki1000304-ZnMort            INDIA                          Zinc              1       35     140
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0      213     617
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       82     617
6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0      231     617
6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       91     617
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       53     144
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1       17     144
Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       53     144
Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1       21     144
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       43     355
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       47     355
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0      161     355
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1      104     355
6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        8      46
6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        2      46
6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       28      46
6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        8      46
24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        2       2
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      378    1707
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       47    1707
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      379    1707
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       45    1707
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      764    1707
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       94    1707
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        0       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        2       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       4
24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       4
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       72     630
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        9     630
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      485     630
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       64     630
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       77    1169
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       44    1169
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      675    1169
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      373    1169
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       73     218
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       35     218
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       79     218
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1       31     218
Birth       ki1119695-PROBIT            BELARUS                        Control           0     6758   13884
Birth       ki1119695-PROBIT            BELARUS                        Control           1       21   13884
Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     7093   13884
Birth       ki1119695-PROBIT            BELARUS                        Maternal          1       12   13884
6 months    ki1119695-PROBIT            BELARUS                        Control           0     6596   14500
6 months    ki1119695-PROBIT            BELARUS                        Control           1      516   14500
6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     6980   14500
6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      408   14500
24 months   ki1119695-PROBIT            BELARUS                        Control           0      327     841
24 months   ki1119695-PROBIT            BELARUS                        Control           1       47     841
24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      414     841
24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       53     841
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     3089   13830
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      360   13830
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     9309   13830
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1     1072   13830
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1603    7776
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      313    7776
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4883    7776
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      977    7776
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        6      37
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        5      37
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        8      37
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       18      37
24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       34     335
24 months   ki1135781-COHORTS           GUATEMALA                      Control           1      137     335
24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       40     335
24 months   ki1135781-COHORTS           GUATEMALA                      Other             1      124     335
6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      242     932
6 months    ki1135781-COHORTS           GUATEMALA                      Control           1      210     932
6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      301     932
6 months    ki1135781-COHORTS           GUATEMALA                      Other             1      179     932
Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      388     852
Birth       ki1135781-COHORTS           GUATEMALA                      Control           1       19     852
Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      414     852
Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       31     852
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0      215    1930
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1      105    1930
6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0     1132    1930
6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      478    1930
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       63     776
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       66     776
24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      322     776
24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      325     776
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0      269    1029
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       82    1029
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      527    1029
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1      151    1029
Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       1
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        5      65
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        7      65
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       33      65
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       20      65
6 months    ki1148112-LCNI-5            MALAWI                         Control           0      137     839
6 months    ki1148112-LCNI-5            MALAWI                         Control           1       72     839
6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      268     839
6 months    ki1148112-LCNI-5            MALAWI                         LNS               1      154     839
6 months    ki1148112-LCNI-5            MALAWI                         Other             0      125     839
6 months    ki1148112-LCNI-5            MALAWI                         Other             1       83     839
24 months   ki1148112-LCNI-5            MALAWI                         Control           0       69     385
24 months   ki1148112-LCNI-5            MALAWI                         Control           1       42     385
24 months   ki1148112-LCNI-5            MALAWI                         LNS               0      109     385
24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       70     385
24 months   ki1148112-LCNI-5            MALAWI                         Other             0       63     385
24 months   ki1148112-LCNI-5            MALAWI                         Other             1       32     385
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     6420   19613
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     3326   19613
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     6855   19613
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     3012   19613
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     6123   16764
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1     2175   16764
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     6427   16764
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     2039   16764
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0       24      98
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1       21      98
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       23      98
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       30      98
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      951    4798
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1      299    4798
6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0     1003    4798
6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      321    4798
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0     1628    4798
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      596    4798
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0      155     822
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       69     822
Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      153     822
Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       74     822
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0      267     822
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1      104     822
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0      164    1096
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1      122    1096
24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      184    1096
24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      119    1096
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0      301    1096
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1      206    1096
6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0      269     683
6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       82     683
6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0      259     683
6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       73     683
Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       1
24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        5      35
24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        7      35
24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0       15      35
24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        8      35


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

* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/28562a2d-81fc-4f10-976d-1e42a13222cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/28562a2d-81fc-4f10-976d-1e42a13222cc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/28562a2d-81fc-4f10-976d-1e42a13222cc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/28562a2d-81fc-4f10-976d-1e42a13222cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2428571   0.1895042   0.2962101
Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2837838   0.2079763   0.3595913
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0030978   0.0020138   0.0041818
Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0016890   0.0010564   0.0023215
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1043781   0.1018333   0.1069229
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1032656   0.0988715   0.1076597
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0466830   0.0368868   0.0564793
Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0696629   0.0573016   0.0820242
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3412682   0.3360093   0.3465271
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3052600   0.2999157   0.3106042
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3080357   0.2378939   0.3781775
Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3259912   0.2564599   0.3955224
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2803235   0.2294740   0.3311729
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2336182   0.2108528   0.2563836
6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2198795   0.1982081   0.2415510
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1801242   0.1207205   0.2395280
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1542553   0.1025866   0.2059240
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1261261   0.0904423   0.1618100
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3280000   0.3023426   0.3536574
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2468750   0.2251068   0.2686432
6 months    ki1000304-EU                INDIA                          Control              NA                0.3484848   0.2820236   0.4149461
6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.2909091   0.2215130   0.3603051
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3573123   0.3439900   0.3706345
6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3314562   0.3184837   0.3444286
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                0.3529412   0.3049669   0.4009154
6 months    ki1000304-Vitamin-B12       INDIA                          Other                NA                0.2656250   0.1795962   0.3516538
6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.3604651   0.2586376   0.4622927
6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3559322   0.2333368   0.4785276
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2779661   0.2597254   0.2962068
6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2826087   0.2601334   0.3050840
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5222222   0.4960227   0.5484218
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3924528   0.3485048   0.4364008
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1105882   0.0807628   0.1404137
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1061321   0.0768061   0.1354580
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1095571   0.0886519   0.1304623
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1111111   0.0426170   0.1796052
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1165756   0.0897101   0.1434411
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3240741   0.2802439   0.3679043
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2818182   0.2392987   0.3243377
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0725534   0.0609715   0.0841354
6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0552247   0.0473261   0.0631233
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1633612   0.1592821   0.1674402
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1667235   0.1595314   0.1739157
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4646018   0.4422911   0.4869125
6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3729167   0.3506244   0.3952089
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3281250   0.3195932   0.3366568
6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2968944   0.2782724   0.3155165
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2336182   0.2185114   0.2487251
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2227139   0.2020685   0.2433592
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3444976   0.2800341   0.4089611
6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3649289   0.3189704   0.4108874
6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3990385   0.3324489   0.4656280
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2621114   0.2562453   0.2679774
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2408457   0.2352826   0.2464089
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2392000   0.2119939   0.2664061
6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2424471   0.2165429   0.2683513
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2679856   0.2461130   0.2898583
24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.5833333   0.4863007   0.6803660
24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.3478261   0.2180480   0.4776042
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.4366197   0.3738540   0.4993854
24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.4333333   0.3756844   0.4909823
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4243542   0.3654850   0.4832235
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3778502   0.3235915   0.4321088
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4137931   0.3746604   0.4529258
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3065789   0.2737916   0.3393663
24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2920000   0.2521373   0.3318627
24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3187251   0.2898950   0.3475552
24 months   ki1000304-EU                INDIA                          Control              NA                0.6320000   0.5472898   0.7167102
24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5703125   0.4843843   0.6562407
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.3684211   0.3244352   0.4124069
24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4736842   0.4016954   0.5456730
24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.6400000   0.5309777   0.7490223
24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5384615   0.4168347   0.6600884
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.3636364   0.2778877   0.4493851
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3559160   0.3269160   0.3849161
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1256684   0.0902768   0.1610601
24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1134904   0.0851526   0.1418281
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.4545455   0.3658584   0.5432325
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.6923077   0.5659241   0.8186912
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8011696   0.7705884   0.8317508
24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7560976   0.7238742   0.7883210
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5116279   0.4972792   0.5259766
24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5023184   0.4701756   0.5344612
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.5833333   0.5314360   0.6352306
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.3773585   0.2701238   0.4845932
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3783784   0.2880389   0.4687179
24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3910615   0.3194808   0.4626421
24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3368421   0.2416781   0.4320061
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4666667   0.3967870   0.5365463
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.5660377   0.4951086   0.6369669
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4265734   0.3578087   0.4953381
24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3927393   0.3305717   0.4549069
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4063116   0.3547699   0.4578534


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
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1466276   0.1200600   0.1731951
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2906475   0.2568657   0.3244293
6 months    ki1000304-EU                INDIA                          NA                   NA                0.3223140   0.2741694   0.3704587
6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3444976   0.3258960   0.3630992
6 months    ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.2839506   0.1851417   0.3827595
6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3586207   0.2802882   0.4369532
6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2803890   0.2513583   0.3094196
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4253521   0.3738504   0.4768538
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1089631   0.0941772   0.1237489
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1158730   0.0908597   0.1408863
6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3027523   0.2416221   0.3638824
6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0637241   0.0488374   0.0786108
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1658951   0.1576266   0.1741635
6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4173820   0.3857058   0.4490581
6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3020725   0.2815825   0.3225626
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2264334   0.2008493   0.2520176
6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2513720   0.2432392   0.2595048
6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2534389   0.2390992   0.2677787
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
24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.5204082   0.4200084   0.6208080
24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4078467   0.3734066   0.4422868


### Parameter: RR


agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1685215   0.8266011   1.6518759
Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.5452096   0.3264144   0.9106631
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9893416   0.9419935   1.0390697
Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.4922531   1.1336867   1.9642281
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8944869   0.8738617   0.9155990
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0582902   0.7746526   1.4457813
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9100355   0.6801878   1.2175531
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.9411916   0.8193786   1.0811139
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8563830   0.5352078   1.3702936
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7002175   0.4534432   1.0812918
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.7526677   0.6689784   0.8468265
6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.8347826   0.6150830   1.1329561
6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.9276372   0.8788254   0.9791602
6 months    ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304-Vitamin-B12       INDIA                          Other                Control           0.7526042   0.5296936   1.0693220
6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           0.9874248   0.6324741   1.5415774
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0167020   0.9170953   1.1271271
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7515054   0.6647234   0.8496172
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9597049   0.6523018   1.4119745
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9906760   0.7119533   1.3785158
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.0491803   0.5432930   2.0261249
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.8696104   0.7101130   1.0649322
6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7611589   0.6150796   0.9419315
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0205825   0.9709597   1.0727414
6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8026587   0.7434132   0.8666258
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9048211   0.8454241   0.9683910
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.9533240   0.8514407   1.0673986
6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0593075   0.8454039   1.3273329
6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.1583200   0.9014478   1.4883892
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9188680   0.8897812   0.9489057
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0135750   0.8671111   1.1847781
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1203412   0.9739813   1.2886945
24 months   iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.5962733   0.3963062   0.8971393
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.9924731   0.8159339   1.2072091
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8904121   0.7292530   1.0871861
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9751124   0.8244017   1.1533749
24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9524464   0.8008029   1.1328056
24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0396184   0.9037380   1.1959289
24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9023932   0.7375922   1.1040159
24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.2857143   1.0597689   1.5598318
24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.8413462   0.6340267   1.1164567
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.9787691   0.7626556   1.2561225
24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9030935   0.6184243   1.3188000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.5230769   1.1659487   1.9895929
24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.9437422   0.8912637   0.9993107
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9818041   0.9155517   1.0528508
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.6469003   0.4803039   0.8712816
24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0335196   0.7650031   1.3962854
24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.8902256   0.6149757   1.2886712
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.2129380   0.9978297   1.4744185
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9206839   0.7343219   1.1543422
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9525011   0.7759776   1.1691809


### Parameter: PAR


agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0210317   -0.0567751    0.0988386
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0007210   -0.0013920   -0.0000499
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0008351   -0.0052292    0.0035591
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0120024   -0.0003829    0.0243877
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0181152   -0.0236976   -0.0125328
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0075491   -0.0667305    0.0516323
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0066783   -0.0283558    0.0149993
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0334967   -0.0841775    0.0171842
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0373525   -0.0593276   -0.0153774
6 months    ki1000304-EU                INDIA                          Control              NA                -0.0261708   -0.0699469    0.0176053
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0128146   -0.0257969    0.0001676
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0689906   -0.1553715    0.0173904
6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0018444   -0.0666922    0.0630033
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0024229   -0.0201633    0.0250091
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0968701   -0.1412098   -0.0525304
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0016251   -0.0274171    0.0241668
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0047619   -0.0593531    0.0688769
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0213218   -0.0639341    0.0212905
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0088293   -0.0175909   -0.0000676
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0025339   -0.0046584    0.0097262
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0472198   -0.0697055   -0.0247340
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0260525   -0.0446817   -0.0074232
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0071848   -0.0278326    0.0134630
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0237980   -0.0323421    0.0799381
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0107394   -0.0163865   -0.0050923
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0142389   -0.0094173    0.0378952
24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.1547619   -0.2898701   -0.0196537
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0015052   -0.0591548    0.0561444
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0174461   -0.0690681    0.0341760
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0021666   -0.0245833    0.0289165
24 months   ki1000304-EU                INDIA                          Control              NA                -0.0312095   -0.0923748    0.0299559
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0751880    0.0027436    0.1476324
24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0471429   -0.1234437    0.0291580
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0069212   -0.0880717    0.0742293
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0067624   -0.0348609    0.0213361
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1670762    0.0358016    0.2983507
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0220651   -0.0543790    0.0102488
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0077619   -0.0399057    0.0243818
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1679487   -0.2769561   -0.0589413
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0043524   -0.0804935    0.0717887
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0537415   -0.0181280    0.1256110
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0187267   -0.0775465    0.0400931


### Parameter: PAF


agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0796992   -0.2367987    0.3152051
Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.3033298   -0.7644562    0.0372849
Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0080648   -0.0517659    0.0338204
Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.2045209    0.0133548    0.3586478
Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0560577   -0.0744788   -0.0379523
Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0251229   -0.2421633    0.1539945
6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0294274   -0.1326579    0.0643946
6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2284472   -0.6257166    0.0717432
6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1285149   -0.2179576   -0.0456405
6 months    ki1000304-EU                INDIA                          Control              NA                -0.0811966   -0.2259316    0.0464508
6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0371981   -0.0770578    0.0011866
6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.2429668   -0.6879245    0.0846946
6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0051431   -0.2032552    0.1603504
6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0086411   -0.0745225    0.0853682
6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.2277410   -0.3634831   -0.1055128
6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0149146   -0.2814893    0.1962074
6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0410959   -0.7074745    0.4614871
6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0704265   -0.2326038    0.0704127
6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1385549   -0.3101846    0.0105918
6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0152741   -0.0283588    0.0570556
6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1131333   -0.1750673   -0.0544637
6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0862457   -0.1553920   -0.0212376
6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0317303   -0.1302597    0.0582099
6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0646165   -0.1009505    0.2052847
6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0427230   -0.0664323   -0.0195408
6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0561829   -0.0418598    0.1449994
24 months   iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.3611111   -0.8761569    0.0125434
24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0034594   -0.1456215    0.1210617
24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0428747   -0.1777945    0.0765896
24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0070175   -0.0835152    0.0899858
24 months   ki1000304-EU                INDIA                          Control              NA                -0.0519474   -0.1591648    0.0453530
24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1694915    0.0209390    0.2955042
24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0795181   -0.2173265    0.0426897
24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0194027   -0.2742800    0.1844949
24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0568717   -0.3391997    0.1659364
24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.2687747    0.0910263    0.4117647
24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0283211   -0.0718833    0.0134707
24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0154047   -0.0822941    0.0473506
24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.4043210   -0.8302142   -0.0775336
24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0116366   -0.2371380    0.1727611
24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1032680   -0.0303704    0.2195735
24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0459161   -0.2005219    0.0887793
