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

* sex
* agecat
* studyid
* country

## Data Summary

sex      agecat      studyid                     country                        tr          stunted   n_cell      n
-------  ----------  --------------------------  -----------------------------  ---------  --------  -------  -----
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0       18     68
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1       17     68
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       17     68
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1       16     68
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0       22     63
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1       14     63
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       17     63
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1       10     63
Female   6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           0        5     11
Female   6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        1     11
Female   6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0        3     11
Female   6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        2     11
Male     6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           0        5     24
Male     6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        5     24
Male     6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       13     24
Male     6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        1     24
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       72    575
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       59    575
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       87    575
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       57    575
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      185    575
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      115    575
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       84    612
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       56    612
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      104    612
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       59    612
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      172    612
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      137    612
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       64    334
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       15    334
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       79    334
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       16    334
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      132    334
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       28    334
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       68    348
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       14    348
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       80    348
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       13    348
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      159    348
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       14    348
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      307   1207
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Control           1      111   1207
Female   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      201   1207
Female   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       64   1207
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      377   1207
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      147   1207
Male     6 months    ki1000111-WASH-Kenya        KENYA                          Control           0       12     40
Male     6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        2     40
Male     6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        6     40
Male     6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1     40
Male     6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       14     40
Male     6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        5     40
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      220   1057
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Control           1      122   1057
Male     24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      153   1057
Male     24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       82   1057
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      307   1057
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      173   1057
Female   6 months    ki1000111-WASH-Kenya        KENYA                          Control           0       11     34
Female   6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0     34
Female   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        6     34
Female   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        2     34
Female   6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       14     34
Female   6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        1     34
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0      115    308
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       58    308
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0      107    308
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       28    308
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0      137    387
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       65    387
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0      134    387
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       51    387
Male     24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1      1
Female   24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      2
Female   24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1      2
Male     Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        4      7
Male     Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        3      7
Female   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        3      4
Female   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1      4
Male     24 months   ki1000304-EU                INDIA                          Control           0       30    132
Male     24 months   ki1000304-EU                INDIA                          Control           1       44    132
Male     24 months   ki1000304-EU                INDIA                          Zinc              0       22    132
Male     24 months   ki1000304-EU                INDIA                          Zinc              1       36    132
Male     6 months    ki1000304-EU                INDIA                          Control           0       70    200
Male     6 months    ki1000304-EU                INDIA                          Control           1       38    200
Male     6 months    ki1000304-EU                INDIA                          Zinc              0       63    200
Male     6 months    ki1000304-EU                INDIA                          Zinc              1       29    200
Female   24 months   ki1000304-EU                INDIA                          Control           0       16    121
Female   24 months   ki1000304-EU                INDIA                          Control           1       35    121
Female   24 months   ki1000304-EU                INDIA                          Zinc              0       33    121
Female   24 months   ki1000304-EU                INDIA                          Zinc              1       37    121
Female   6 months    ki1000304-EU                INDIA                          Control           0       59    163
Female   6 months    ki1000304-EU                INDIA                          Control           1       31    163
Female   6 months    ki1000304-EU                INDIA                          Zinc              0       54    163
Female   6 months    ki1000304-EU                INDIA                          Zinc              1       19    163
Male     6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      377   1300
Male     6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      266   1300
Male     6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      431   1300
Male     6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      226   1300
Female   6 months    ki1000304-VITAMIN-A         INDIA                          Control           0      436   1208
Female   6 months    ki1000304-VITAMIN-A         INDIA                          Control           1      186   1208
Female   6 months    ki1000304-VITAMIN-A         INDIA                          VitA              0      400   1208
Female   6 months    ki1000304-VITAMIN-A         INDIA                          VitA              1      186   1208
Female   6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        5     43
Female   6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        1     43
Female   6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       28     43
Female   6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        9     43
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Control           0       13     77
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Control           1       11     77
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       23     77
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       30     77
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Control           0        6     38
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        5     38
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       19     38
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Other             1        8     38
Female   24 months   ki1000304-Vitamin-B12       INDIA                          Control           0       11     56
Female   24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        3     56
Female   24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       27     56
Female   24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       15     56
Male     6 months    ki1000304-ZnMort            INDIA                          Control           0       31     81
Male     6 months    ki1000304-ZnMort            INDIA                          Control           1       20     81
Male     6 months    ki1000304-ZnMort            INDIA                          Zinc              0       19     81
Male     6 months    ki1000304-ZnMort            INDIA                          Zinc              1       11     81
Female   6 months    ki1000304-ZnMort            INDIA                          Control           0       24     64
Female   6 months    ki1000304-ZnMort            INDIA                          Control           1       11     64
Female   6 months    ki1000304-ZnMort            INDIA                          Zinc              0       19     64
Female   6 months    ki1000304-ZnMort            INDIA                          Zinc              1       10     64
Female   24 months   ki1000304-ZnMort            INDIA                          Control           0       13     65
Female   24 months   ki1000304-ZnMort            INDIA                          Control           1       25     65
Female   24 months   ki1000304-ZnMort            INDIA                          Zinc              0        9     65
Female   24 months   ki1000304-ZnMort            INDIA                          Zinc              1       18     65
Male     24 months   ki1000304-ZnMort            INDIA                          Control           0       14     75
Male     24 months   ki1000304-ZnMort            INDIA                          Control           1       23     75
Male     24 months   ki1000304-ZnMort            INDIA                          Zinc              0       21     75
Male     24 months   ki1000304-ZnMort            INDIA                          Zinc              1       17     75
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       97    284
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       39    284
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       98    284
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       50    284
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0      116    333
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       43    333
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0      133    333
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       41    333
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       26     78
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1       10     78
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       28     78
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1       14     78
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       27     66
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        7     66
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       25     66
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        7     66
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       18    166
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       20    166
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       78    166
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       50    166
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       25    189
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       27    189
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       83    189
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       54    189
Male     6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        4     22
Male     6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1     22
Male     6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       12     22
Male     6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        5     22
Female   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        4     24
Female   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1     24
Female   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0       16     24
Female   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3     24
Female   24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        2      2
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      192    867
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       28    867
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      187    867
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       29    867
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      371    867
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       60    867
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      186    840
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       19    840
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      192    840
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       16    840
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      393    840
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       34    840
Female   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1      2
Female   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1      2
Male     24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1      2
Male     24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        0      2
Male     24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0      2
Male     24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1      2
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       37    309
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        5    309
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      232    309
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       35    309
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       33    588
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       29    588
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      323    588
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      203    588
Female   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       35    321
Female   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        4    321
Female   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      253    321
Female   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       29    321
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       44    581
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       15    581
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      352    581
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      170    581
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       38    112
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       17    112
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       43    112
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1       14    112
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       35    106
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       18    106
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       36    106
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1       17    106
Female   Birth       ki1119695-PROBIT            BELARUS                        Control           0     3520   7176
Female   Birth       ki1119695-PROBIT            BELARUS                        Control           1        6   7176
Female   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     3648   7176
Female   Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        2   7176
Female   6 months    ki1119695-PROBIT            BELARUS                        Control           0     3569   7462
Female   6 months    ki1119695-PROBIT            BELARUS                        Control           1       90   7462
Female   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     3761   7462
Female   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       42   7462
Male     Birth       ki1119695-PROBIT            BELARUS                        Control           0     3238   6708
Male     Birth       ki1119695-PROBIT            BELARUS                        Control           1       15   6708
Male     Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     3445   6708
Male     Birth       ki1119695-PROBIT            BELARUS                        Maternal          1       10   6708
Male     6 months    ki1119695-PROBIT            BELARUS                        Control           0     3027   7038
Male     6 months    ki1119695-PROBIT            BELARUS                        Control           1      426   7038
Male     6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     3219   7038
Male     6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      366   7038
Male     24 months   ki1119695-PROBIT            BELARUS                        Control           0      143    396
Male     24 months   ki1119695-PROBIT            BELARUS                        Control           1       34    396
Male     24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      178    396
Male     24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       41    396
Female   24 months   ki1119695-PROBIT            BELARUS                        Control           0      184    445
Female   24 months   ki1119695-PROBIT            BELARUS                        Control           1       13    445
Female   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      236    445
Female   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       12    445
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1507   6736
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      155   6736
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4564   6736
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      510   6736
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      801   3787
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      137   3787
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2470   3787
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      379   3787
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      802   3989
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      176   3989
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2413   3989
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      598   3989
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1582   7094
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      205   7094
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4745   7094
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      562   7094
Female   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3     22
Female   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        3     22
Female   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        5     22
Female   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       11     22
Male     24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3     15
Male     24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2     15
Male     24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        3     15
Male     24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        7     15
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       19    182
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       73    182
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       26    182
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       64    182
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      121    491
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Control           1      120    491
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      151    491
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       99    491
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      178    404
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        8    404
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      205    404
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       13    404
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      121    441
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       90    441
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      150    441
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       80    441
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      210    448
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Control           1       11    448
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      209    448
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       18    448
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       15    153
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       64    153
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       14    153
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       60    153
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0      103    967
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       65    967
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      528    967
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      271    967
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       24    389
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       37    389
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      152    389
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      176    389
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0      112    963
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       40    963
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      604    963
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      207    963
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       39    387
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       29    387
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      170    387
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      149    387
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0      144    540
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       37    540
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      296    540
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       63    540
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0      125    489
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1       45    489
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0      231    489
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       88    489
Male     Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1      1
Female   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        3     33
Female   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2     33
Female   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       16     33
Female   24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1       12     33
Male     24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2     32
Male     24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        5     32
Male     24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       17     32
Male     24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        8     32
Male     6 months    ki1148112-LCNI-5            MALAWI                         Control           0       61    419
Male     6 months    ki1148112-LCNI-5            MALAWI                         Control           1       50    419
Male     6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      119    419
Male     6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       91    419
Male     6 months    ki1148112-LCNI-5            MALAWI                         Other             0       52    419
Male     6 months    ki1148112-LCNI-5            MALAWI                         Other             1       46    419
Male     24 months   ki1148112-LCNI-5            MALAWI                         Control           0       33    189
Male     24 months   ki1148112-LCNI-5            MALAWI                         Control           1       23    189
Male     24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       50    189
Male     24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       40    189
Male     24 months   ki1148112-LCNI-5            MALAWI                         Other             0       29    189
Male     24 months   ki1148112-LCNI-5            MALAWI                         Other             1       14    189
Female   6 months    ki1148112-LCNI-5            MALAWI                         Control           0       76    420
Female   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       22    420
Female   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      149    420
Female   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       63    420
Female   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       73    420
Female   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       37    420
Female   24 months   ki1148112-LCNI-5            MALAWI                         Control           0       36    196
Female   24 months   ki1148112-LCNI-5            MALAWI                         Control           1       19    196
Female   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       59    196
Female   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       30    196
Female   24 months   ki1148112-LCNI-5            MALAWI                         Other             0       34    196
Female   24 months   ki1148112-LCNI-5            MALAWI                         Other             1       18    196
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     3218   9994
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1730   9994
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     3502   9994
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1544   9994
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2940   8541
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1252   8541
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     3131   8541
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1218   8541
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     3202   9619
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1596   9619
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     3353   9619
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1468   9619
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     3183   8223
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      923   8223
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     3296   8223
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      821   8223
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        8     36
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        7     36
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        8     36
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       13     36
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0       16     62
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1       14     62
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       15     62
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       17     62
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      506   2392
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1      137   2392
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      515   2392
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      130   2392
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      845   2392
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      259   2392
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       83    422
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       33    422
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       78    422
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       36    422
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0      149    422
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       43    422
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      445   2406
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1      162   2406
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      488   2406
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      191   2406
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      783   2406
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      337   2406
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0       72    400
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       36    400
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       75    400
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       38    400
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0      118    400
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1       61    400
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       82    566
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       72    566
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       96    566
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       46    566
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0      164    566
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1      106    566
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       82    530
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       50    530
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       88    530
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       73    530
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0      137    530
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1      100    530
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0      144    354
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       37    354
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0      141    354
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       32    354
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0      125    329
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1       45    329
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0      118    329
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1       41    329
Male     Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1      1
Female   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        3     18
Female   24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        2     18
Female   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        8     18
Female   24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        5     18
Male     24 months   iLiNS_DYADM_LNS             MALAWI                         Control           0        2     17
Male     24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        5     17
Male     24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               0        7     17
Male     24 months   iLiNS_DYADM_LNS             MALAWI                         LNS               1        3     17


The following strata were considered:

* sex: Female, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Female, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Female, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Female, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Female, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* sex: Female, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Female, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Female, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Female, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Female, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Female, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Female, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Female, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Female, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Female, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Female, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Female, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Female, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Female, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Female, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Female, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Female, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Female, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* sex: Female, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* sex: Female, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Female, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Female, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Female, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* sex: Female, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Female, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Female, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Female, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* sex: Female, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Female, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Female, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Female, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Female, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Female, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Female, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Female, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Female, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Female, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Female, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Female, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Female, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Female, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Male, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Male, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Male, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Male, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Male, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Male, agecat: 24 months, studyid: ki1000304-EU, country: INDIA
* sex: Male, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Male, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Male, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Male, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Male, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Male, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Male, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Male, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Male, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Male, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Male, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Male, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Male, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Male, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* sex: Male, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Male, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Male, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* sex: Male, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* sex: Male, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Male, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* sex: Male, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Male, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* sex: Male, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Male, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Male, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Male, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* sex: Male, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Male, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Male, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Male, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* sex: Male, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* sex: Male, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Male, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* sex: Male, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Male, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Male, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* sex: Male, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Male, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Male, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* sex: Male, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* sex: Male, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* sex: Female, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Male, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* sex: Male, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Female, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* sex: Male, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Male, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* sex: Female, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Female, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* sex: Male, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Female, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Female, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* sex: Female, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Male, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* sex: Female, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* sex: Female, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* sex: Female, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Male, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* sex: Male, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Female, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* sex: Male, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Female, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* sex: Male, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f2b4c9be-cb6f-407b-b315-a31550597307/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f2b4c9be-cb6f-407b-b315-a31550597307/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f2b4c9be-cb6f-407b-b315-a31550597307/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f2b4c9be-cb6f-407b-b315-a31550597307/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


sex      agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2058824   0.1099318   0.3018329
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2187500   0.1358380   0.3016620
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0932611   0.0898114   0.0967109
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1005124   0.0942799   0.1067449
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0430108   0.0295706   0.0564509
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0596330   0.0426496   0.0766165
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3326386   0.3252208   0.3400564
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3045011   0.2973755   0.3116268
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3333333   0.2361828   0.4304838
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3362832   0.2447994   0.4277670
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3407821   0.2633281   0.4182362
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2044199   0.1743382   0.2345016
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.1849711   0.1566558   0.2132864
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1707317   0.0891729   0.2522905
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1397849   0.0692076   0.2103623
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0809249   0.0402275   0.1216222
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3352601   0.2956831   0.3748372
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2074074   0.1773807   0.2374341
Female   6 months    ki1000304-EU                INDIA                          Control              NA                0.3444444   0.2459691   0.4429198
Female   6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.2602740   0.1593083   0.3612397
Female   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.2990354   0.2805015   0.3175692
Female   6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3174061   0.2991168   0.3356955
Female   6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.3142857   0.1592729   0.4692986
Female   6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3448276   0.1704673   0.5191879
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2867647   0.2645711   0.3089583
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3378378   0.3192687   0.3564070
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5192308   0.4817690   0.5566926
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3941606   0.3346884   0.4536328
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0926829   0.0529629   0.1324029
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0769231   0.0406886   0.1131576
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0796253   0.0539331   0.1053175
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3090909   0.2488471   0.3693347
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2456140   0.1884874   0.3027406
Female   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0245969   0.0164020   0.0327918
Female   6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0110439   0.0086381   0.0134497
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1460554   0.1404568   0.1516541
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1330291   0.1236463   0.1424119
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4265403   0.3945753   0.4585053
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3478261   0.3156873   0.3799649
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2631579   0.2521027   0.2742130
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2552404   0.2299567   0.2805241
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2044199   0.1847093   0.2241305
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.1754875   0.1493041   0.2016708
Female   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2244898   0.1417823   0.3071973
Female   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2971698   0.2355777   0.3587620
Female   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.3363636   0.2479663   0.4247609
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2247930   0.2172537   0.2323323
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1994171   0.1923744   0.2064597
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2130638   0.1752792   0.2508483
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2015504   0.1643406   0.2387602
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2346014   0.2050782   0.2641247
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.3888889   0.2971600   0.4806178
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.3703704   0.2916795   0.4490613
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4503817   0.3651087   0.5356546
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3958333   0.3158905   0.4757761
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3833333   0.3282679   0.4383988
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2655502   0.2231962   0.3079042
Female   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2415094   0.1899572   0.2930616
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2805344   0.2420521   0.3190166
Female   24 months   ki1000304-EU                INDIA                          Control              NA                0.6862745   0.5583986   0.8141505
Female   24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.5285714   0.4111463   0.6459965
Female   24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.6578947   0.5058816   0.8099079
Female   24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.6666667   0.4874714   0.8458620
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2542373   0.1430344   0.3654402
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3256705   0.2854347   0.3659063
Female   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0659898   0.0209118   0.1110679
Female   24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0483871   0.0139395   0.0828347
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8101266   0.7653240   0.8549291
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.8108108   0.7675092   0.8541125
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4264706   0.4057894   0.4471518
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4670846   0.4218968   0.5122724
Female   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3454545   0.2194626   0.4714465
Female   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3370787   0.2386185   0.4355388
Female   24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3461538   0.2165167   0.4757910
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4666667   0.3536090   0.5797243
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.6190476   0.5031630   0.7349323
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4675325   0.3778787   0.5571862
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3239437   0.2256199   0.4222674
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3925926   0.3316736   0.4535116
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2777778   0.2567068   0.2988488
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3333333   0.2261772   0.4404895
Male     Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0046111   0.0023636   0.0068586
Male     Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0028944   0.0016450   0.0041437
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1147174   0.1109952   0.1184397
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1058979   0.0997042   0.1120916
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0497738   0.0356137   0.0639338
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.0792952   0.0614651   0.0971252
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3496362   0.3422946   0.3569778
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3059849   0.2984755   0.3134943
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2844828   0.1957364   0.3732291
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.3157895   0.2255619   0.4060170
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2239583   0.1576846   0.2902321
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                0.2647059   0.2303857   0.2990261
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  NA                0.2578616   0.2249501   0.2907731
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1898734   0.1032582   0.2764886
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1684211   0.0930530   0.2437891
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1750000   0.1160362   0.2339638
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3217822   0.2881124   0.3554520
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2756757   0.2448544   0.3064969
Male     6 months    ki1000304-EU                INDIA                          Control              NA                0.3518519   0.2615614   0.4421423
Male     6 months    ki1000304-EU                INDIA                          Zinc                 NA                0.3152174   0.2200421   0.4103927
Male     6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4136858   0.3948503   0.4325214
Male     6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 NA                0.3439878   0.3256232   0.3623524
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4545455   0.3682238   0.5408671
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Other                NA                0.2962963   0.1722753   0.4203173
Male     6 months    ki1000304-ZnMort            INDIA                          Control              NA                0.3921569   0.2573270   0.5269868
Male     6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.3666667   0.1931517   0.5401816
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2704403   0.2252300   0.3156505
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2356322   0.2113371   0.2599272
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.5263158   0.4898646   0.5627670
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3906250   0.3252549   0.4559951
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1272727   0.0832077   0.1713378
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1342593   0.0887670   0.1797516
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1392111   0.1065113   0.1719110
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.1190476   0.0209488   0.2171465
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.1310861   0.0905387   0.1716336
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3396226   0.2755706   0.4036747
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.3207547   0.2576244   0.3838851
Male     6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1233710   0.1079388   0.1388031
Male     6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1020921   0.0883319   0.1158522
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1799591   0.1740556   0.1858626
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1986051   0.1878476   0.2093626
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4979253   0.4669094   0.5289412
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3960000   0.3651009   0.4268991
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3869048   0.3741031   0.3997064
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3391740   0.3120362   0.3663118
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2647059   0.2416267   0.2877851
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             NA                0.2758621   0.2438336   0.3078905
Male     6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4504505   0.3577819   0.5431190
Male     6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4333333   0.3662318   0.5004348
Male     6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4693878   0.3704622   0.5683133
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2986641   0.2905290   0.3067992
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2800644   0.2730891   0.2870396
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2668863   0.2227887   0.3109839
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2812960   0.2461937   0.3163983
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.3008929   0.2695111   0.3322747
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.4857143   0.3998559   0.5715727
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 NA                0.4848485   0.4014835   0.5682135
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4000000   0.3187834   0.4812166
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3619632   0.2881278   0.4357986
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4433657   0.3879299   0.4988015
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3567251   0.3059319   0.4075184
Male     24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3489362   0.2879678   0.4099045
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3604167   0.3174448   0.4033885
Male     24 months   ki1000304-EU                INDIA                          Control              NA                0.5945946   0.4823052   0.7068840
Male     24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.6206897   0.4953409   0.7460384
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4583333   0.3957933   0.5208734
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.5660377   0.4735929   0.6584825
Male     24 months   ki1000304-ZnMort            INDIA                          Control              NA                0.6216216   0.4643001   0.7789432
Male     24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4473684   0.2882129   0.6065239
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.4677419   0.3434376   0.5920462
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3859316   0.3442937   0.4275694
Male     24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1920904   0.1420399   0.2421409
Male     24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1872146   0.1494986   0.2249307
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.7934783   0.7515490   0.8354075
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7111111   0.6646779   0.7575443
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.6065574   0.5873088   0.6258060
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5365854   0.4910238   0.5821469
Male     24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4107143   0.2815213   0.5399073
Male     24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4444444   0.3415122   0.5473767
Male     24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.3255814   0.1851512   0.4660116
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4666667   0.3769048   0.5564285
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.5312500   0.4428153   0.6196847
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3787879   0.2813743   0.4762014
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4534161   0.3752729   0.5315594
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4219409   0.3510675   0.4928144


### Parameter: E(Y)


sex      agecat      studyid                     country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2121212    0.0852603   0.3389821
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0987233    0.0915994   0.1058472
Female   Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0519802    0.0303070   0.0736534
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3185362    0.3081680   0.3289045
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3375000    0.2869330   0.3880670
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.1949153    0.1535911   0.2362395
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1178161    0.0838954   0.1517368
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2792208    0.2290381   0.3294035
Female   6 months    ki1000304-EU                INDIA                          NA                   NA                0.3067485    0.2357372   0.3777597
Female   6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3079470    0.2819034   0.3339907
Female   6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3281250    0.2121828   0.4440672
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3133803    0.2806320   0.3461286
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4285714    0.3578320   0.4993109
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0821429    0.0635631   0.1007226
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2767857    0.1935534   0.3600180
Female   6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0176896    0.0084987   0.0268805
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1362556    0.1253279   0.1471833
Female   6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3854875    0.3400105   0.4309646
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2564901    0.2288946   0.2840857
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.1851852    0.1523918   0.2179786
Female   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2904762    0.2470072   0.3339452
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2120880    0.2017053   0.2224708
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2198997    0.2001469   0.2396525
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.3809524    0.2600737   0.5018310
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4017391    0.3616331   0.4418451
Female   24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2667771    0.2418159   0.2917384
Female   24 months   ki1000304-EU                INDIA                          NA                   NA                0.5950413    0.5072126   0.6828700
Female   24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.6615385    0.5456099   0.7774670
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3184165    0.2805032   0.3563298
Female   24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0561798   -0.0001349   0.1124945
Female   24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.8104575    0.7481494   0.8727656
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4599483    0.4102288   0.5096678
Female   24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3418367    0.2752624   0.4084111
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.5555556    0.3912775   0.7198336
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.3957597    0.3504215   0.4410979
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3076923    0.1924444   0.4229402
Male     Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0037269    0.0011447   0.0063091
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1081195    0.1008929   0.1153462
Male     Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.0647321    0.0419223   0.0875420
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3275966    0.3169149   0.3382782
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2654028    0.2194381   0.3113676
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         NA                   NA                0.2613982    0.2138463   0.3089500
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1766467    0.1356856   0.2176078
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2997416    0.2540373   0.3454459
Male     6 months    ki1000304-EU                INDIA                          NA                   NA                0.3350000    0.2694225   0.4005775
Male     6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3784615    0.3520868   0.4048363
Male     6 months    ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.3421053    0.1892412   0.4949693
Male     6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3827160    0.2762076   0.4892245
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2522523    0.2003087   0.3041958
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4216867    0.3463368   0.4970366
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1349481    0.1121922   0.1577040
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.1294498    0.0919594   0.1669403
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.3301887    0.2402367   0.4201407
Male     6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.1125320    0.0909184   0.1341456
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1940336    0.1817601   0.2063071
Male     6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4460285    0.4020161   0.4900409
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3474664    0.3174390   0.3774938
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2719836    0.2325034   0.3114639
Male     6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4463007    0.3986455   0.4939560
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2891933    0.2784500   0.2999367
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2867830    0.2658875   0.3076786
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.4852941    0.3656221   0.6049662
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4117647    0.3727411   0.4507883
Male     24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3566698    0.3277786   0.3855611
Male     24 months   ki1000304-EU                INDIA                          NA                   NA                0.6060606    0.5223876   0.6897336
Male     24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.5324675    0.4202931   0.6446419
Male     24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5333333    0.4196662   0.6470005
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3945578    0.3550193   0.4340964
Male     24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1893939    0.1266848   0.2521031
Male     24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7527473    0.6898974   0.8155971
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5475578    0.4980324   0.5970833
Male     24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4074074    0.3371711   0.4776437
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.5000000    0.3735407   0.6264593
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4207547    0.3743187   0.4671908


### Parameter: RR


sex      agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0625000   0.5848495   1.9302509
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0777524   1.0026793   1.1584465
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.3864678   0.9084312   2.1160579
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9154113   0.8862898   0.9454897
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0088496   0.6771208   1.5030957
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0223464   0.7064573   1.4794837
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.9048586   0.7317499   1.1189194
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8187404   0.4085839   1.6406320
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.4739884   0.2368819   0.9484263
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.6186462   0.5132348   0.7457078
Female   6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.7556341   0.4666904   1.2234726
Female   6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           1.0614334   0.9753042   1.1551688
Female   6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           1.0971787   0.5413883   2.2235449
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.1781012   1.0715633   1.2952313
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7591241   0.6422127   0.8973186
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8299595   0.4390222   1.5690160
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8591150   0.5024306   1.4690160
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.7946336   0.5866485   1.0763561
Female   6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.4489964   0.3020445   0.6674441
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9108126   0.8405546   0.9869432
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8154589   0.7239933   0.9184799
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9699137   0.8709712   1.0800960
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           0.8584657   0.7187390   1.0253560
Female   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.3237564   0.8674054   2.0201984
Female   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.4983471   0.9529550   2.3558763
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8871142   0.8449456   0.9313873
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9459628   0.7322502   1.2220489
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1010856   0.8857870   1.3687146
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.9523810   0.6933322   1.3082177
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8788842   0.6663542   1.1591995
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8511299   0.6710904   1.0794703
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9094680   0.6967283   1.1871657
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0564267   0.8560058   1.3037731
Female   24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.7702041   0.5763422   1.0292745
Female   24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           1.0133333   0.7109098   1.4444090
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.2809706   0.8131060   2.0180465
Female   24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7332506   0.2705293   1.9874239
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           1.0008446   0.9267829   1.0808248
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0952329   0.9828971   1.2204077
Female   24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9757540   0.6115181   1.5569382
Female   24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0020243   0.5940857   1.6900807
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.3265306   0.9766795   1.8017000
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.6928795   0.4839659   0.9919749
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8397119   0.6561964   1.0745505
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.2000000   0.8641275   1.6664208
Male     Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Male     Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.6276893   0.3272369   1.2040021
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9231195   0.8633963   0.9869739
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.5931117   1.1085668   2.2894470
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8751523   0.8473381   0.9038796
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1100478   0.7271722   1.6945179
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.7872475   0.5120949   1.2102418
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                  Control           0.9741440   0.8121008   1.1685206
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8870175   0.4681755   1.6805667
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.9216667   0.5227316   1.6250585
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8567152   0.7350782   0.9984800
Male     6 months    ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1000304-EU                INDIA                          Zinc                 Control           0.8958810   0.6027816   1.3314984
Male     6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1000304-VITAMIN-A         INDIA                          VitA                 Control           0.8315194   0.7751748   0.8919596
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Other                Control           0.6518519   0.4116526   1.0322073
Male     6 months    ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1000304-ZnMort            INDIA                          Zinc                 Control           0.9350000   0.5209277   1.6782078
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8712911   0.7161790   1.0599979
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.7421875   0.6192378   0.8895489
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.0548942   0.6498579   1.7123770
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0938018   0.7198397   1.6620401
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1011236   0.4566484   2.6551572
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.9444444   0.7191031   1.2403997
Male     6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8275208   0.6891050   0.9937392
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.1036125   1.0358931   1.1757590
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7953000   0.7197309   0.8788036
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8766343   0.8039258   0.9559186
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal             Control           1.0421456   0.9013031   1.2049969
Male     6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9620000   0.7436161   1.2445185
Male     6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.0420408   0.7762076   1.3989157
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9377236   0.9037390   0.9729861
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0539919   0.8568300   1.2965220
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1274195   0.9273056   1.3707184
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                 Control           0.9982175   0.7800625   1.2773825
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9049080   0.6785924   1.2067014
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.1084142   0.8732603   1.4068910
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9781653   0.7807713   1.2254643
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0103484   0.8391057   1.2165377
Male     24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.0438871   0.7917244   1.3763633
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.2349914   0.9982463   1.5278833
Male     24 months   ki1000304-ZnMort            INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1000304-ZnMort            INDIA                          Zinc                 Control           0.7196796   0.4650807   1.1136536
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           0.8250951   0.6193555   1.0991779
Male     24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.9746172   0.7011558   1.3547329
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8961948   0.8239897   0.9747272
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8846407   0.8079782   0.9685772
Male     24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0821256   0.7322070   1.5992687
Male     24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.7927199   0.4648111   1.3519576
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1383929   0.8827175   1.4681235
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.1970186   0.8783200   1.6313571
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.1139241   0.8193228   1.5144541


### Parameter: PAR


sex      agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0062389   -0.0759155    0.0883932
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0054621   -0.0007708    0.0116951
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0089694   -0.0080332    0.0259721
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0141024   -0.0213575   -0.0068473
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0041667   -0.0788981    0.0872315
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0095046   -0.0378381    0.0188288
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0529156   -0.1212360    0.0154048
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0560393   -0.0868932   -0.0251855
Female   6 months    ki1000304-EU                INDIA                          Control              NA                -0.0376960   -0.1011878    0.0257959
Female   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0089117   -0.0093850    0.0272083
Female   6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0138393   -0.0919430    0.1196216
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0266156    0.0004296    0.0528015
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0906593   -0.1506651   -0.0306536
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0105401   -0.0444934    0.0234132
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0323052   -0.0897360    0.0251256
Female   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0069073   -0.0104574   -0.0033571
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0097998   -0.0191843   -0.0004153
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0410528   -0.0734008   -0.0087047
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0066678   -0.0319521    0.0186166
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.0192347   -0.0454435    0.0069741
Female   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0659864   -0.0084302    0.1404030
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0127049   -0.0198330   -0.0055769
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0068359   -0.0255747    0.0392465
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0079365   -0.0866605    0.0707875
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0486425   -0.1232529    0.0259678
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0012269   -0.0330434    0.0354972
Female   24 months   ki1000304-EU                INDIA                          Control              NA                -0.0912332   -0.1926314    0.0101650
Female   24 months   ki1000304-ZnMort            INDIA                          Control              NA                 0.0036437   -0.0939721    0.1012595
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0641792   -0.0420845    0.1704429
Female   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0098101   -0.0439291    0.0243090
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0003309   -0.0429707    0.0436326
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0334777   -0.0117364    0.0786918
Female   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0036178   -0.1103757    0.1031401
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0888889   -0.0302969    0.2080747
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0717728   -0.1477255    0.0041800
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0299145   -0.0821950    0.1420240
Male     Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0008842   -0.0021505    0.0003820
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0065979   -0.0127922   -0.0004035
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0149584   -0.0029241    0.0328408
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0220397   -0.0297966   -0.0142827
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0190799   -0.0942708    0.0561110
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0033077   -0.0362213    0.0296059
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0132267   -0.0882671    0.0618137
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0220406   -0.0529474    0.0088662
Male     6 months    ki1000304-EU                INDIA                          Control              NA                -0.0168519   -0.0772523    0.0435486
Male     6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0352243   -0.0536864   -0.0167622
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.1124402   -0.2385988    0.0137184
Male     6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0094408   -0.0908714    0.0719898
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0181880   -0.0448111    0.0084351
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1046290   -0.1705754   -0.0386827
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0076754   -0.0307191    0.0460699
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0104022   -0.0813194    0.1021238
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0094340   -0.0725901    0.0537222
Male     6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0108390   -0.0254585    0.0037805
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0140745    0.0033141    0.0248349
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0518968   -0.0831235   -0.0206701
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0394384   -0.0666001   -0.0122766
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0072778   -0.0247541    0.0393097
Male     6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0041497   -0.0835762    0.0752767
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0094708   -0.0165032   -0.0024385
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0198967   -0.0175112    0.0573046
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0004202   -0.0837852    0.0829449
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0117647   -0.0596576    0.0831870
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0000553   -0.0418301    0.0417194
Male     24 months   ki1000304-EU                INDIA                          Control              NA                 0.0114660   -0.0625125    0.0854445
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0741342   -0.0189885    0.1672569
Male     24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.0882883   -0.2033979    0.0268213
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.0731841   -0.1904716    0.0441034
Male     24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0026965   -0.0404552    0.0350623
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0407310   -0.0875502    0.0060882
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0589995   -0.1046314   -0.0133677
Male     24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0033069   -0.1116263    0.1050126
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0333333   -0.0555159    0.1221826
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0419668   -0.0412139    0.1251476


### Parameter: PAF


sex      agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Female   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0294118   -0.4298487    0.3411600
Female   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0553278   -0.0062708    0.1131557
Female   Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.1725550   -0.1526929    0.4060298
Female   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0442724   -0.0683514   -0.0207362
Female   Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0123457   -0.2671557    0.2301963
Female   6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0487629   -0.2130660    0.0932862
Female   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.4491374   -1.1489629    0.0227848
Female   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.2006990   -0.3443560   -0.0723931
Female   6 months    ki1000304-EU                INDIA                          Control              NA                -0.1228889   -0.3501625    0.0661276
Female   6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0289389   -0.0305331    0.0849788
Female   6 months    ki1000304-ZnMort            INDIA                          Control              NA                 0.0421769   -0.3410657    0.3158984
Female   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0849306    0.0043337    0.1590034
Female   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.2115385   -0.3947758   -0.0523737
Female   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1283139   -0.6263552    0.2172114
Female   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.1167155   -0.3759262    0.0936625
Female   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.3904693   -0.7815679   -0.0852266
Female   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0719224   -0.1484153   -0.0005244
Female   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1064957   -0.2038098   -0.0170483
Female   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0259962   -0.1322970    0.0703251
Female   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                -0.1038674   -0.2721406    0.0421474
Female   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.2271663   -0.0754375    0.4446242
Female   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0599041   -0.0962004   -0.0248096
Female   6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0310865   -0.1281005    0.1678105
Female   24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0208333   -0.2552417    0.1698007
Female   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1210799   -0.3233019    0.0502392
Female   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0045989   -0.1325186    0.1251153
Female   24 months   ki1000304-EU                INDIA                          Control              NA                -0.1533224   -0.3410857    0.0081524
Female   24 months   ki1000304-ZnMort            INDIA                          Control              NA                 0.0055080   -0.1535706    0.1426494
Female   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.2015575   -0.2124022    0.4741758
Female   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1746193   -1.1791226    0.3668413
Female   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0004083   -0.0544510    0.0524135
Female   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0727859   -0.0230570    0.1596499
Female   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0105834   -0.3765279    0.2580761
Female   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.1600000   -0.0446216    0.3245401
Female   24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.1813544   -0.3903041   -0.0038078
Male     Birth       ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0972222   -0.2991766    0.3726736
Male     Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.2372579   -0.7719011    0.1360651
Male     Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0610238   -0.1236249   -0.0019104
Male     Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.2310813   -0.0214235    0.4211647
Male     Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0672768   -0.0928962   -0.0422580
Male     Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0718904   -0.3962673    0.1771282
Male     6 months    iLiNS_DYADM_LNS             MALAWI                         Control              NA                -0.0126539   -0.1485483    0.1071617
Male     6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0748766   -0.5955858    0.2759024
Male     6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0735319   -0.1904748    0.0319234
Male     6 months    ki1000304-EU                INDIA                          Control              NA                -0.0503040   -0.2470230    0.1153823
Male     6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0930724   -0.1479276   -0.0408385
Male     6 months    ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.3286713   -0.9313044    0.0859196
Male     6 months    ki1000304-ZnMort            INDIA                          Control              NA                -0.0246679   -0.2611776    0.1674889
Male     6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0721024   -0.1919339    0.0356818
Male     6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.2481203   -0.4607748   -0.0664233
Male     6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0568765   -0.2750585    0.3023990
Male     6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0803571   -0.9865302    0.5742612
Male     6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0285714   -0.2454783    0.1505599
Male     6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0963194   -0.2496150    0.0381708
Male     6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0725364    0.0195996    0.1226148
Male     6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1163531   -0.1977585   -0.0404804
Male     6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1135027   -0.2041472   -0.0296816
Male     6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0267581   -0.0949098    0.1349060
Male     6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0092981   -0.2039208    0.1538625
Male     6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0327491   -0.0581860   -0.0079237
Male     6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0693790   -0.0711608    0.1914795
Male     24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                -0.0008658   -0.1884477    0.1571086
Male     24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0285714   -0.1613417    0.1874282
Male     24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0001551   -0.1244133    0.1103714
Male     24 months   ki1000304-EU                INDIA                          Control              NA                 0.0189189   -0.1111279    0.1337450
Male     24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.1392276   -0.0263333    0.2780815
Male     24 months   ki1000304-ZnMort            INDIA                          Control              NA                -0.1655405   -0.4083708    0.0354211
Male     24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                -0.1854839   -0.5237444    0.0776852
Male     24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0142373   -0.2380522    0.1691164
Male     24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0541098   -0.1218286    0.0095212
Male     24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.1077503   -0.2041072   -0.0191043
Male     24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0081169   -0.3123506    0.2255883
Male     24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0666667   -0.1153131    0.2189537
Male     24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0997418   -0.1224535    0.2779525
