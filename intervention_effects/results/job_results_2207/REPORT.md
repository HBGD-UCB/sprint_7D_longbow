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

* enstunt
* agecat
* studyid
* country

## Data Summary

enstunt   agecat      studyid                     country                        tr          stunted   n_cell       n
--------  ----------  --------------------------  -----------------------------  ---------  --------  -------  ------
0         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           0       40      95
0         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1       12      95
0         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       34      95
0         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        9      95
1         6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           1        6       9
1         6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              1        3       9
0         6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control           0       10      26
0         6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA              0       16      26
1         24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control           1       19      36
1         24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA              1       17      36
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0      139     843
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       52     843
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      181     843
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       41     843
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      323     843
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      107     843
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        9     287
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       55     287
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        4     287
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       71     287
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       14     287
1         24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1      134     287
0         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0      126     566
0         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0      156     566
0         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      284     566
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       29      99
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       29      99
1         6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       41      99
1         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       18     452
1         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1      134     452
1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       11     452
1         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       79     452
1         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       21     452
1         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      189     452
0         24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      496    1759
0         24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       95    1759
0         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      333    1759
0         24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       65    1759
0         24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      645    1759
0         24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      125    1759
0         6 months    ki1000111-WASH-Kenya        KENYA                          Control           0       23      63
0         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0       12      63
0         6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       28      63
1         6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        2      11
1         6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        3      11
1         6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        6      11
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       25     194
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       81     194
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       41     194
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       47     194
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0      218     455
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1       42     455
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0      169     455
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1       26     455
1         24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1       1
0         24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1       2
0         24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1       2
0         Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        7      11
0         Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        4      11
1         6 months    ki1000304-EU                INDIA                          Control           1        4       7
1         6 months    ki1000304-EU                INDIA                          Zinc              1        3       7
0         6 months    ki1000304-EU                INDIA                          Control           0        2       7
0         6 months    ki1000304-EU                INDIA                          Zinc              0        5       7
0         6 months    ki1000304-Vitamin-B12       INDIA                          Control           0       11      58
0         6 months    ki1000304-Vitamin-B12       INDIA                          Other             0       47      58
1         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0        1      62
1         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1       13      62
1         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0        4      62
1         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1       44      62
1         6 months    ki1000304-Vitamin-B12       INDIA                          Control           1        6      23
1         6 months    ki1000304-Vitamin-B12       INDIA                          Other             1       17      23
0         24 months   ki1000304-Vitamin-B12       INDIA                          Control           0       23      71
0         24 months   ki1000304-Vitamin-B12       INDIA                          Control           1        1      71
0         24 months   ki1000304-Vitamin-B12       INDIA                          Other             0       46      71
0         24 months   ki1000304-Vitamin-B12       INDIA                          Other             1        1      71
0         24 months   ki1000304-ZnMort            INDIA                          Control           0       11      22
0         24 months   ki1000304-ZnMort            INDIA                          Zinc              0       11      22
0         6 months    ki1000304-ZnMort            INDIA                          Control           0       43      73
0         6 months    ki1000304-ZnMort            INDIA                          Zinc              0       30      73
1         24 months   ki1000304-ZnMort            INDIA                          Control           1       16      29
1         24 months   ki1000304-ZnMort            INDIA                          Zinc              1       13      29
1         6 months    ki1000304-ZnMort            INDIA                          Control           1       21      37
1         6 months    ki1000304-ZnMort            INDIA                          Zinc              1       16      37
0         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0      185     454
0         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       33     454
0         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0      201     454
0         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       35     454
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       27     160
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       49     160
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       29     160
1         6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       55     160
0         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       53     106
0         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       53     106
1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1       17      38
1         Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1       21      38
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       40     212
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       14     212
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0      144     212
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       14     212
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        2     130
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       32     130
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       11     130
1         6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       85     130
0         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        3      13
0         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        2      13
0         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        3      13
0         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        1      13
0         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        4      13
0         6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        0      13
0         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       72     550
0         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      478     550
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0       72     739
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       12     739
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      632     739
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       23     739
1         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1        9      73
1         6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       64      73
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           0        5     427
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control           1       32     427
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       42     427
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      348     427
0         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       70     165
0         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        9     165
0         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       75     165
0         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1       11     165
1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        0      48
1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       26      48
1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        3      48
1         6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1       19      48
0         Birth       ki1119695-PROBIT            BELARUS                        Control           0     6758   13851
0         Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     7093   13851
0         6 months    ki1119695-PROBIT            BELARUS                        Control           0     5612   12101
0         6 months    ki1119695-PROBIT            BELARUS                        Control           1      406   12101
0         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     5745   12101
0         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      338   12101
0         24 months   ki1119695-PROBIT            BELARUS                        Control           0      327     839
0         24 months   ki1119695-PROBIT            BELARUS                        Control           1       46     839
0         24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      414     839
0         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       52     839
1         Birth       ki1119695-PROBIT            BELARUS                        Control           1       21      33
1         Birth       ki1119695-PROBIT            BELARUS                        Maternal          1       12      33
1         6 months    ki1119695-PROBIT            BELARUS                        Control           0       11      26
1         6 months    ki1119695-PROBIT            BELARUS                        Control           1        6      26
1         6 months    ki1119695-PROBIT            BELARUS                        Maternal          0        4      26
1         6 months    ki1119695-PROBIT            BELARUS                        Maternal          1        5      26
1         24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        1       1
0         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     3089   12398
0         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     9309   12398
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1473    6895
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      237    6895
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     4465    6895
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      720    6895
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      360    1432
1         Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1     1072    1432
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      114     787
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       71     787
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      361     787
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      241     787
1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        0      10
1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        1      10
1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        4      10
1         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        5      10
0         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        5      23
0         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        3      23
0         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        3      23
0         24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       12      23
0         24 months   ki1135781-COHORTS           GUATEMALA                      Control           0       26      86
0         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       16      86
0         24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       29      86
0         24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       15      86
0         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0      209     703
0         6 months    ki1135781-COHORTS           GUATEMALA                      Control           1      133     703
0         6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      255     703
0         6 months    ki1135781-COHORTS           GUATEMALA                      Other             1      106     703
0         Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      388     802
0         Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      414     802
1         24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        5     219
1         24 months   ki1135781-COHORTS           GUATEMALA                      Control           1      109     219
1         24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        4     219
1         24 months   ki1135781-COHORTS           GUATEMALA                      Other             1      101     219
1         6 months    ki1135781-COHORTS           GUATEMALA                      Control           0        2     104
1         6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       48     104
1         6 months    ki1135781-COHORTS           GUATEMALA                      Other             0        8     104
1         6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       46     104
1         Birth       ki1135781-COHORTS           GUATEMALA                      Control           1       19      50
1         Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       31      50
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       92     546
1         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      454     546
0         6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0      209    1303
0         6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0     1094    1303
0         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       55     523
0         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       32     523
0         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      283     523
0         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      153     523
1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3     214
1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       30     214
1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       26     214
1         24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      155     214
0         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0       12      47
0         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        2      47
0         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0       29      47
0         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        4      47
1         Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       1
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        2      15
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        3      15
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1      15
1         6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        9      15
0         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        0       3
0         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        1       3
0         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1       3
0         24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       3
1         6 months    ki1148112-LCNI-5            MALAWI                         Control           1       71     303
1         6 months    ki1148112-LCNI-5            MALAWI                         LNS               1      150     303
1         6 months    ki1148112-LCNI-5            MALAWI                         Other             1       82     303
1         24 months   ki1148112-LCNI-5            MALAWI                         Control           0        7     133
1         24 months   ki1148112-LCNI-5            MALAWI                         Control           1       25     133
1         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       17     133
1         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       46     133
1         24 months   ki1148112-LCNI-5            MALAWI                         Other             0       12     133
1         24 months   ki1148112-LCNI-5            MALAWI                         Other             1       26     133
0         6 months    ki1148112-LCNI-5            MALAWI                         Control           0      134     523
0         6 months    ki1148112-LCNI-5            MALAWI                         LNS               0      265     523
0         6 months    ki1148112-LCNI-5            MALAWI                         Other             0      124     523
0         24 months   ki1148112-LCNI-5            MALAWI                         Control           0       59     247
0         24 months   ki1148112-LCNI-5            MALAWI                         Control           1       17     247
0         24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       91     247
0         24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       23     247
0         24 months   ki1148112-LCNI-5            MALAWI                         Other             0       51     247
0         24 months   ki1148112-LCNI-5            MALAWI                         Other             1        6     247
0         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     6420   13275
0         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     6855   13275
0         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     4912   11537
0         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      706   11537
0         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     5212   11537
0         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      707   11537
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     3326    6338
1         Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     3012    6338
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1119    4952
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1424    4952
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     1112    4952
1         6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1297    4952
0         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0       14      40
0         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        4      40
0         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       14      40
0         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        8      40
1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        3      22
1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        8      22
1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        1      22
1         24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       10      22
0         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      773    3264
0         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1       95    3264
0         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      778    3264
0         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      105    3264
0         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0     1306    3264
0         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      207    3264
0         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           0      155     575
0         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      153     575
0         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             0      267     575
1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           0      129    1294
1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control           1      185    1294
1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      168    1294
1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS               1      201    1294
1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             0      245    1294
1         6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other             1      366    1294
1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Control           1       69     247
1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       74     247
1         Birth       kiGH5241-JiVitA-4           BANGLADESH                     Other             1      104     247
1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0       20     237
1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       44     237
1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0       18     237
1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       51     237
1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0       24     237
1         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       80     237
0         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           0      109     646
0         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control           1       54     646
0         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               0      124     646
0         24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS               1       53     646
0         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             0      212     646
0         24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other             1       94     646
1         Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       1
1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0        2       9
1         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        3       9
1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0        0       9
1         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        4       9
0         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0       12      25
0         6 months    iLiNS_DYADM_LNS             MALAWI                         Control           1        2      25
0         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0       11      25
0         6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        0      25
0         24 months   iLiNS_DYADM_LNS             MALAWI                         Control           1        1       1


The following strata were considered:

* enstunt: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 0, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 0, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 0, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 0, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 0, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 0, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 0, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 0, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 0, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 0, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 0, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 0, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 0, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 0, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 0, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 0, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 0, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 0, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 0, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 0, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 0, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 0, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 0, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 0, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 1, agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 1, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 1, agecat: 6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 1, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 1, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 1, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* enstunt: 1, agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 1, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 0, agecat: 6 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 1, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 0, agecat: 24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 1, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 0, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 1, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 1, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 0, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 1, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr          0
##   Control  11
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     11
##           stunted
## tr          0
##   Control  10
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA     16
##   Zinc      0
##           stunted
## tr           0
##   Control  126
##   LNS      156
##   Maternal   0
##   Other    284
##   VitA       0
##   Zinc       0
##           stunted
## tr          0
##   Control  23
##   LNS      12
##   Maternal  0
##   Other    28
##   VitA      0
##   Zinc      0
##           stunted
## tr          0
##   Control  11
##   LNS       0
##   Maternal  0
##   Other    47
##   VitA      0
##   Zinc      0
##           stunted
## tr          0
##   Control  43
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     30
##           stunted
## tr           0
##   Control   72
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     478
##           stunted
## tr           0
##   Control  134
##   LNS      265
##   Maternal   0
##   Other    124
##   VitA       0
##   Zinc       0
##           stunted
## tr            0
##   Control   209
##   LNS      1094
##   Maternal    0
##   Other       0
##   VitA        0
##   Zinc        0
##           stunted
## tr          0
##   Control  53
##   LNS       0
##   Maternal  0
##   Other    53
##   VitA      0
##   Zinc      0
##           stunted
## tr            0
##   Control  6758
##   LNS         0
##   Maternal 7093
##   Other       0
##   VitA        0
##   Zinc        0
##           stunted
## tr            0
##   Control  3089
##   LNS         0
##   Maternal    0
##   Other       0
##   VitA     9309
##   Zinc        0
##           stunted
## tr           0
##   Control  388
##   LNS        0
##   Maternal   0
##   Other    414
##   VitA       0
##   Zinc       0
##           stunted
## tr            0
##   Control  6420
##   LNS         0
##   Maternal 6855
##   Other       0
##   VitA        0
##   Zinc        0
##           stunted
## tr           0
##   Control  155
##   LNS      153
##   Maternal   0
##   Other    267
##   VitA       0
##   Zinc       0
##           stunted
## tr          1
##   Control  19
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA     17
##   Zinc      0
##           stunted
## tr          1
##   Control  16
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     13
##           stunted
## tr          1
##   Control  29
##   LNS      29
##   Maternal  0
##   Other    41
##   VitA      0
##   Zinc      0
##           stunted
## tr          1
##   Control   6
##   LNS       0
##   Maternal  0
##   Other    17
##   VitA      0
##   Zinc      0
##           stunted
## tr          1
##   Control  21
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     16
##           stunted
## tr          1
##   Control   9
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     64
##           stunted
## tr           1
##   Control   71
##   LNS      150
##   Maternal   0
##   Other     82
##   VitA       0
##   Zinc       0
##           stunted
## tr           1
##   Control   92
##   LNS      454
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc       0
##           stunted
## tr          1
##   Control  17
##   LNS       0
##   Maternal  0
##   Other    21
##   VitA      0
##   Zinc      0
##           stunted
## tr          1
##   Control  21
##   LNS       0
##   Maternal 12
##   Other     0
##   VitA      0
##   Zinc      0
##           stunted
## tr            1
##   Control   360
##   LNS         0
##   Maternal    0
##   Other       0
##   VitA     1072
##   Zinc        0
##           stunted
## tr          1
##   Control  19
##   LNS       0
##   Maternal  0
##   Other    31
##   VitA      0
##   Zinc      0
##           stunted
## tr            1
##   Control  3326
##   LNS         0
##   Maternal 3012
##   Other       0
##   VitA        0
##   Zinc        0
##           stunted
## tr           1
##   Control   69
##   LNS       74
##   Maternal   0
##   Other    104
##   VitA       0
##   Zinc       0
```




# Results Detail

## Results Plots
![](/tmp/fad7bdaa-005b-472a-80a2-40611c22fc93/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fad7bdaa-005b-472a-80a2-40611c22fc93/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fad7bdaa-005b-472a-80a2-40611c22fc93/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fad7bdaa-005b-472a-80a2-40611c22fc93/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


enstunt   agecat      studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.1615385   0.1359478   0.1871291
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.1333333   0.1128629   0.1538038
0         6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.1513761   0.1307636   0.1719887
0         6 months    ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.1483051   0.1235616   0.1730485
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.2592593   0.2294167   0.2891018
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.0886076   0.0555055   0.1217097
0         6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                0.1139241   0.0802775   0.1475706
0         6 months    ki1112895-Guatemala BSC     GUATEMALA      Other                NA                0.1279070   0.0910040   0.1648100
0         6 months    ki1119695-PROBIT            BELARUS        Control              NA                0.0674643   0.0567796   0.0781490
0         6 months    ki1119695-PROBIT            BELARUS        Maternal             NA                0.0555647   0.0475024   0.0636270
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.1385965   0.1345347   0.1426583
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.1388621   0.1317835   0.1459407
0         6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                0.3888889   0.3637360   0.4140418
0         6 months    ki1135781-COHORTS           GUATEMALA      Other                NA                0.2936288   0.2694869   0.3177707
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1256675   0.1202835   0.1310515
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1194459   0.1148153   0.1240764
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.1094470   0.0831336   0.1357604
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.1189128   0.0944011   0.1434245
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.1368143   0.1141976   0.1594309
0         24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                0.2307692   0.1677546   0.2937838
0         24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 NA                0.2093023   0.1539738   0.2646308
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.2722513   0.2090880   0.3354146
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.1846847   0.1336098   0.2357596
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.2488372   0.2079492   0.2897252
0         24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                0.1607445   0.1311240   0.1903650
0         24 months   ki1000111-WASH-Kenya        KENYA          LNS                  NA                0.1633166   0.1269899   0.1996433
0         24 months   ki1000111-WASH-Kenya        KENYA          Other                NA                0.1623377   0.1362839   0.1883914
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.1428571   0.0679747   0.2177396
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.0351145   0.0210085   0.0492205
0         24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.1233244   0.0902369   0.1564119
0         24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.1115880   0.0829935   0.1401825
0         24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                0.3809524   0.3088065   0.4530982
0         24 months   ki1135781-COHORTS           GUATEMALA      Other                NA                0.3409091   0.2688303   0.4129879
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.3678161   0.3509444   0.3846878
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.3509174   0.3135358   0.3882990
0         24 months   ki1148112-LCNI-5            MALAWI         Control              NA                0.2236842   0.1298072   0.3175612
0         24 months   ki1148112-LCNI-5            MALAWI         LNS                  NA                0.2017544   0.1279374   0.2755714
0         24 months   ki1148112-LCNI-5            MALAWI         Other                NA                0.1052632   0.0254311   0.1850952
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.3312883   0.2498046   0.4127721
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.2994350   0.2263338   0.3725362
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.3071895   0.2468465   0.3675326
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.7641509   0.7198790   0.8084228
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.5340909   0.4866920   0.5814898
1         6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.6447368   0.5905587   0.6989150
1         6 months    ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.6547619   0.6204851   0.6890387
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.3837838   0.3673004   0.4002671
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.4003322   0.3703742   0.4302903
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.5599685   0.5480087   0.5719284
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.5383977   0.5270103   0.5497850
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.5891720   0.5196956   0.6586484
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.5447154   0.4886345   0.6007964
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.5990180   0.5513883   0.6466477
1         24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                0.8815789   0.8301566   0.9330013
1         24 months   ki1000111-WASH-Kenya        KENYA          LNS                  NA                0.8777778   0.8100331   0.9455225
1         24 months   ki1000111-WASH-Kenya        KENYA          Other                NA                0.9000000   0.8593799   0.9406201
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.8648649   0.7545803   0.9751494
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.8923077   0.8615060   0.9231094
1         24 months   ki1148112-LCNI-5            MALAWI         Control              NA                0.7812500   0.6374758   0.9250242
1         24 months   ki1148112-LCNI-5            MALAWI         LNS                  NA                0.7301587   0.6201367   0.8401807
1         24 months   ki1148112-LCNI-5            MALAWI         Other                NA                0.6842105   0.5358601   0.8325610
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.6875000   0.5636937   0.8113063
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.7391304   0.6309167   0.8473441
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.7692308   0.6808963   0.8575652


### Parameter: E(Y)


enstunt   agecat      studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.1494505   0.1166547   0.1822464
0         6 months    ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.1497797   0.1173613   0.1821981
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.1320755   0.0863920   0.1777589
0         6 months    ki1112895-Guatemala BSC     GUATEMALA      NA                   NA                0.1212121   0.0712615   0.1711628
0         6 months    ki1119695-PROBIT            BELARUS        NA                   NA                0.0614825   0.0474925   0.0754726
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.1387962   0.1306350   0.1469574
0         6 months    ki1135781-COHORTS           GUATEMALA      NA                   NA                0.3399716   0.3049301   0.3750130
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1224755   0.1153631   0.1295880
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.1246936   0.1104156   0.1389717
0         24 months   ki1000107-Serrinha-VitA     BRAZIL         NA                   NA                0.2210526   0.1371673   0.3049380
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.2372479   0.2085147   0.2659812
0         24 months   ki1000111-WASH-Kenya        KENYA          NA                   NA                0.1620239   0.1447995   0.1792483
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0473613   0.0320365   0.0626861
0         24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.1168057   0.0733203   0.1602912
0         24 months   ki1135781-COHORTS           GUATEMALA      NA                   NA                0.3604651   0.2583941   0.4625361
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.3537285   0.3127123   0.3947447
0         24 months   ki1148112-LCNI-5            MALAWI         NA                   NA                0.1862348   0.1375873   0.2348823
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.3111455   0.2706141   0.3516769
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.6597938   0.5929525   0.7266351
1         6 months    ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.6500000   0.5861714   0.7138286
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.3964422   0.3622453   0.4306390
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.5494750   0.5329435   0.5660064
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.5811437   0.5486800   0.6136075
1         24 months   ki1000111-WASH-Kenya        KENYA          NA                   NA                0.8893805   0.8604325   0.9183286
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.8899297   0.8602092   0.9196502
1         24 months   ki1148112-LCNI-5            MALAWI         NA                   NA                0.7293233   0.6535273   0.8051194
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.7383966   0.6779662   0.7988271


### Parameter: RR


enstunt   agecat      studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ----------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.8253968   0.6619948   1.0291318
0         6 months    ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.9797124   0.7903093   1.2145072
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           0.3417722   0.2311882   0.5052516
0         6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1112895-Guatemala BSC     GUATEMALA      Other                Control           1.1227390   0.7429652   1.6966378
0         6 months    ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1119695-PROBIT            BELARUS        Maternal             Control           0.8236165   0.6654524   1.0193728
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0019164   0.9447024   1.0625955
0         6 months    ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    ki1135781-COHORTS           GUATEMALA      Other                Control           0.7550455   0.6800509   0.8383104
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9504912   0.8971343   1.0070215
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           1.0864875   0.7915372   1.4913449
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.2500504   0.9336777   1.6736248
0         24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 Control           0.9069767   0.6202113   1.3263333
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.6783611   0.4728128   0.9732684
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           0.9139982   0.6878221   1.2145477
0         24 months   ki1000111-WASH-Kenya        KENYA          Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1000111-WASH-Kenya        KENYA          LNS                  Control           1.0160011   0.7611152   1.3562442
0         24 months   ki1000111-WASH-Kenya        KENYA          Other                Control           1.0099111   0.7909659   1.2894621
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           0.2458015   0.1269914   0.4757677
0         24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           0.9048330   0.6234475   1.3132185
0         24 months   ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1135781-COHORTS           GUATEMALA      Other                Control           0.8948864   0.6737438   1.1886145
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           0.9540568   0.8495797   1.0713819
0         24 months   ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   ki1148112-LCNI-5            MALAWI         LNS                  Control           0.9019608   0.5168714   1.5739569
0         24 months   ki1148112-LCNI-5            MALAWI         Other                Control           0.4705882   0.1977888   1.1196450
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.9038502   0.6390033   1.2784677
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           0.9272573   0.6769652   1.2700891
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.6989338   0.6286484   0.7770774
1         6 months    ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1000304b-SAS-CompFeed     INDIA          Other                Control           1.0155491   0.9188047   1.1224800
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0431192   0.9568900   1.1371188
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9614784   0.9329988   0.9908274
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.9245441   0.7905598   1.0812359
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.0167116   0.8819188   1.1721063
1         24 months   ki1000111-WASH-Kenya        KENYA          Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1000111-WASH-Kenya        KENYA          LNS                  Control           0.9956882   0.9038773   1.0968248
1         24 months   ki1000111-WASH-Kenya        KENYA          Other                Control           1.0208955   0.9483117   1.0990350
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.0317308   0.9040520   1.1774415
1         24 months   ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   ki1148112-LCNI-5            MALAWI         LNS                  Control           0.9346032   0.7367673   1.1855616
1         24 months   ki1148112-LCNI-5            MALAWI         Other                Control           0.8757895   0.6590074   1.1638826
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           1.0750988   0.8524292   1.3559337
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.1188811   0.9037226   1.3852646


### Parameter: PAR


enstunt   agecat      studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  --------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0120879   -0.0325986    0.0084228
0         6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0015964   -0.0264204    0.0232276
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.1271838   -0.1617728   -0.0925948
0         6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.0072881   -0.0296304    0.0442066
0         6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0059818   -0.0145794    0.0026159
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0001997   -0.0068789    0.0072783
0         6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0489173   -0.0733148   -0.0245199
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0031920   -0.0078312    0.0014473
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0152466   -0.0077504    0.0382437
0         24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                -0.0097166   -0.0650872    0.0456540
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0350034   -0.0898426    0.0198358
0         24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0012794   -0.0228967    0.0254555
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                -0.0954958   -0.1630790   -0.0279127
0         24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0065187   -0.0348704    0.0218330
0         24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0204873   -0.0926916    0.0517171
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                -0.0140876   -0.0514731    0.0232979
0         24 months   ki1148112-LCNI-5            MALAWI         Control              NA                -0.0374494   -0.1133187    0.0384199
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0201428   -0.0904331    0.0501474
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.1043571   -0.1544346   -0.0542797
1         6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                 0.0052632   -0.0287253    0.0392516
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0126584   -0.0173036    0.0426205
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0104936   -0.0219367    0.0009495
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0080282   -0.0675203    0.0514639
1         24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0078016   -0.0334757    0.0490788
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0250649   -0.0795208    0.1296506
1         24 months   ki1148112-LCNI-5            MALAWI         Control              NA                -0.0519267   -0.1802587    0.0764053
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0508966   -0.0523229    0.1541162


### Parameter: PAF


enstunt   agecat      studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ----------  --------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0808824   -0.2406247    0.0582916
0         6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0106584   -0.1928665    0.1437177
0         6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.9629630   -1.6086548   -0.4770922
0         6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.0601266   -0.2751768    0.3072631
0         6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0972919   -0.2638548    0.0473197
0         6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0014391   -0.0508086    0.0510889
0         6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.1438866   -0.2297316   -0.0640342
0         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0260622   -0.0656932    0.0120950
0         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.1222727   -0.0825578    0.2883472
0         24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                -0.0439560   -0.3415035    0.1875950
0         24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.1475393   -0.4033697    0.0616540
0         24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0078962   -0.1531204    0.1464292
0         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                -2.0163265   -3.6698921   -0.9482732
0         24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0558078   -0.3463970    0.1720642
0         24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0568356   -0.2915938    0.1352532
0         24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                -0.0398260   -0.1557610    0.0644794
0         24 months   ki1148112-LCNI-5            MALAWI         Control              NA                -0.2010870   -0.6839387    0.1433121
0         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0647377   -0.3164921    0.1388735
1         6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.1581663   -0.2501803   -0.0729245
1         6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                 0.0080972   -0.0451571    0.0586380
1         6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0319300   -0.0440829    0.1024089
1         6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0190975   -0.0405463    0.0019093
1         6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0138145   -0.1214838    0.0835178
1         24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0087719   -0.0387567    0.0541259
1         24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0281650   -0.0968199    0.1389076
1         24 months   ki1148112-LCNI-5            MALAWI         Control              NA                -0.0711985   -0.2633094    0.0916982
1         24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0689286   -0.0825675    0.1992240
