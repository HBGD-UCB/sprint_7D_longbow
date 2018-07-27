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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* enwast
* agecat
* studyid
* country

## Data Summary

enwast   agecat        studyid                     country                        tr          ever_stunted   n_cell       n
-------  ------------  --------------------------  -----------------------------  ---------  -------------  -------  ------
0        0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control                0        5      10
0        0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control                1        1      10
0        0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0        4      10
0        0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1        0      10
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       33     213
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        6     213
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       59     213
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        6     213
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       99     213
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       10     213
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        1      11
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        0      11
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0        2      11
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        1      11
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0        7      11
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1        0      11
0        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0       24      91
0        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        2      91
0        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0       23      91
0        0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      91
0        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       37      91
0        0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        5      91
1        0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0        1       1
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       77     190
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       25     190
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       66     190
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       22     190
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       16      65
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       11      65
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       28      65
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       10      65
0        0-6 months    ki1000304-EU                INDIA                          Control                0        2      11
0        0-6 months    ki1000304-EU                INDIA                          Control                1        2      11
0        0-6 months    ki1000304-EU                INDIA                          Zinc                   0        4      11
0        0-6 months    ki1000304-EU                INDIA                          Zinc                   1        3      11
1        0-6 months    ki1000304-EU                INDIA                          Control                0        0       3
1        0-6 months    ki1000304-EU                INDIA                          Control                1        2       3
1        0-6 months    ki1000304-EU                INDIA                          Zinc                   0        1       3
1        0-6 months    ki1000304-EU                INDIA                          Zinc                   1        0       3
0        0-6 months    ki1000304-Vitamin-B12       INDIA                          Other                  0        1       1
0        0-6 months    ki1000304-ZnMort            INDIA                          Control                0       34     120
0        0-6 months    ki1000304-ZnMort            INDIA                          Control                1       25     120
0        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   0       37     120
0        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   1       24     120
1        0-6 months    ki1000304-ZnMort            INDIA                          Control                0        4      14
1        0-6 months    ki1000304-ZnMort            INDIA                          Control                1        3      14
1        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   0        5      14
1        0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   1        2      14
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0      235     634
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       68     634
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0      263     634
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       68     634
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       18      77
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       11      77
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       33      77
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       15      77
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       51     330
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       35     330
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0      155     330
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       89     330
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       11      73
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        7      73
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       33      73
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       22      73
0        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        5      19
0        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        0      19
0        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        5      19
0        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        1      19
0        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        7      19
0        0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        1      19
0        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0        7      40
0        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1        0      40
0        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       31      40
0        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        2      40
1        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0        2       5
1        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        3       5
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       89     235
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1       28     235
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       94     235
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       24     235
1        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1        2       3
1        0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        1       3
0        0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     4706   10571
0        0-6 months    ki1119695-PROBIT            BELARUS                        Control                1      354   10571
0        0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     5157   10571
0        0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1      354   10571
1        0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     1443    2851
1        0-6 months    ki1119695-PROBIT            BELARUS                        Control                1       74    2851
1        0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     1278    2851
1        0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1       56    2851
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1532    7132
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      236    7132
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     4635    7132
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      729    7132
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      272    1376
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       91    1376
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      717    1376
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      296    1376
0        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       61     193
0        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       29     193
0        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       72     193
0        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       31     193
1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       22      71
1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       13      71
1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0       29      71
1        0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1        7      71
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0      123    1128
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       51    1128
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      690    1128
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      264    1128
1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0        1      15
1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1        1      15
1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0        6      15
1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1        7      15
0        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        3       7
0        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        1       7
0        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        2       7
0        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        1       7
0        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       39     266
0        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1       25     266
0        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       93     266
0        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       45     266
0        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       37     266
0        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1       27     266
1        0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0        2       4
1        0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0        1       4
1        0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0        1       4
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     5728   14174
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1193   14174
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     6192   14174
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1061   14174
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0      725    1833
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      206    1833
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      731    1833
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      171    1833
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      788    3722
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1      173    3722
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      820    3722
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      208    3722
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0     1362    3722
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      371    3722
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0       76     374
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1       21     374
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       68     374
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       25     374
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      141     374
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1       43     374
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0      179     379
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1       13     379
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0      171     379
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1       16     379
1        6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0        2       2
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      655    3334
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      168    3334
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      751    3334
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      128    3334
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0     1319    3334
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      313    3334
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       27     213
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       12     213
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       42     213
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       12     213
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       74     213
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       46     213
0        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0     1496    4684
0        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      110    4684
0        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      995    4684
0        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       66    4684
0        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0     1844    4684
0        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      173    4684
1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0       18      45
1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1        4      45
1        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0        7      45
1        6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1        0      45
1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0       16      45
1        6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1        0      45
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0      253     781
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      119     781
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0      313     781
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       96     781
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       42     154
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       31     154
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       48     154
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       33     154
0        6-24 months   ki1000304-EU                INDIA                          Control                0        2      10
0        6-24 months   ki1000304-EU                INDIA                          Zinc                   0        8      10
1        6-24 months   ki1000304-EU                INDIA                          Zinc                   0        1       1
0        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       96     467
0        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       10     467
0        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      325     467
0        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       36     467
1        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0        8      36
1        6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1        0      36
1        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       24      36
1        6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1        4      36
0        6-24 months   ki1000304-ZnMort            INDIA                          Control                0      185     390
0        6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      205     390
1        6-24 months   ki1000304-ZnMort            INDIA                          Control                0       34      63
1        6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0       29      63
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0      181     561
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       82     561
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      212     561
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       86     561
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       10      58
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       11      58
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       27      58
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       10      58
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       15     180
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       25     180
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       67     180
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       73     180
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        4      38
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        3      38
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       12      38
1        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       19      38
0        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        3      12
0        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        0      12
0        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        3      12
0        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        1      12
0        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        4      12
0        6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        1      12
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0      785    4767
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1       72    4767
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     3550    4767
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      360    4767
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0       91     529
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1       13     529
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      355     529
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1       70     529
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       71     172
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       15     172
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       63     172
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       23     172
1        6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0        1       1
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      451    2256
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      105    2256
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0     1483    2256
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      217    2256
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       57     334
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       25     334
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      196     334
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1       56     334
0        6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     4912   10756
0        6-24 months   ki1119695-PROBIT            BELARUS                        Control                1      208   10756
0        6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     5405   10756
0        6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      231   10756
1        6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1445    2903
1        6-24 months   ki1119695-PROBIT            BELARUS                        Control                1       83    2903
1        6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     1312    2903
1        6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1       63    2903
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1634    7505
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      233    7505
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     4901    7505
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      737    7505
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      300    1317
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       62    1317
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      809    1317
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      146    1317
0        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       79     406
0        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       95     406
0        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0      103     406
0        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      129     406
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       15     112
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       44     112
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       27     112
1        6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       26     112
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0      160    1153
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       35    1153
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      755    1153
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      203    1153
1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0        2      13
1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        1      13
1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0        7      13
1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1        3      13
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        9      49
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        5      49
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       26      49
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        9      49
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        2       5
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        0       5
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        2       5
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        1       5
0        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       98     572
0        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       42     572
0        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      201     572
0        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       89     572
0        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       97     572
0        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       45     572
1        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0        0       8
1        6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        1       8
1        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0        4       8
1        6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1        1       8
1        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0        2       8
1        6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        0       8
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     4267   10745
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      944   10745
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     4473   10745
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1061   10745
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      549    1267
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      102    1267
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      511    1267
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      105    1267
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      655    3510
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      286    3510
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      700    3510
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      266    3510
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0     1135    3510
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      468    3510
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0       55     312
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1       29     312
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       59     312
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       22     312
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      106     312
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1       41     312
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0      178     487
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1       60     487
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0      168     487
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1       81     487
1        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0        2       7
1        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1        3       7
1        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0        0       7
1        0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1        2       7
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      637    4213
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      392    4213
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      737    4213
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      340    4213
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0     1295    4213
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      812    4213
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       27     371
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1       54     371
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       41     371
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1       55     371
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       74     371
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      120     371
0        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0     1505    5801
0        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      483    5801
0        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0     1002    5801
0        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1      272    5801
0        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0     1862    5801
0        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      677    5801
1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0       18     102
1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1       23     102
1        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0        7     102
1        0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1        5     102
1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0       16     102
1        0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1       33     102
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0      313    1321
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      343    1321
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0      357    1321
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1      308    1321
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       57     341
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      103     341
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       73     341
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1      108     341
0        0-24 months   ki1000304-EU                INDIA                          Control                0        2      21
0        0-24 months   ki1000304-EU                INDIA                          Control                1        5      21
0        0-24 months   ki1000304-EU                INDIA                          Zinc                   0        9      21
0        0-24 months   ki1000304-EU                INDIA                          Zinc                   1        5      21
1        0-24 months   ki1000304-EU                INDIA                          Control                0        0       3
1        0-24 months   ki1000304-EU                INDIA                          Control                1        2       3
1        0-24 months   ki1000304-EU                INDIA                          Zinc                   0        1       3
1        0-24 months   ki1000304-EU                INDIA                          Zinc                   1        0       3
0        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       91     718
0        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       87     718
0        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      305     718
0        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1      235     718
1        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0        8      85
1        0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       12      85
1        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       19      85
1        0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       46      85
0        0-24 months   ki1000304-ZnMort            INDIA                          Control                0      219     902
0        0-24 months   ki1000304-ZnMort            INDIA                          Control                1      236     902
0        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      242     902
0        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1      205     902
1        0-24 months   ki1000304-ZnMort            INDIA                          Control                0       38     228
1        0-24 months   ki1000304-ZnMort            INDIA                          Control                1       72     228
1        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0       34     228
1        0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1       84     228
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0      162     762
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1      202     762
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      193     762
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1      205     762
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0        9      90
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       26      90
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       26      90
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       29      90
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       17     331
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       69     331
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       70     331
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1      175     331
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        3      73
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       15      73
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       15      73
1        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       40      73
0        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        3      19
0        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        2      19
0        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        4      19
0        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        2      19
0        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        5      19
0        0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        3      19
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0      778    6098
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1      258    6098
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     3495    6098
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1     1567    6098
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0       87    1025
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1       90    1025
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0      342    1025
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      506    1025
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       70     250
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       55     250
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       59     250
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       66     250
1        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0        0       4
1        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        2       4
1        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0        1       4
1        0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        1       4
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       55     534
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1       87     534
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0      170     534
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      222     534
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      442    2628
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      212    2628
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0     1419    2628
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      555    2628
0        0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     4506   10931
0        0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      711   10931
0        0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     5003   10931
0        0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      711   10931
1        0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     1339    2946
1        0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      218    2946
1        0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     1242    2946
1        0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      147    2946
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1646    9232
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      656    9232
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     4945    9232
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1     1985    9232
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      279    1805
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      199    1805
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      765    1805
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      562    1805
0        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       80     849
0        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      329     849
0        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0      105     849
0        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      335     849
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       14     187
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1       93     187
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0       29     187
1        0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1       51     187
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0      155    1823
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1      141    1823
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      782    1823
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      745    1823
1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0        2      27
1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        3      27
1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0        6      27
1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       16      27
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        9      65
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1       10      65
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       23      65
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       23      65
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        2       9
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        1       9
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        2       9
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        4       9
0        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       93     813
0        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1      108     813
0        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      173     813
0        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1      235     813
0        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       83     813
0        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1      121     813
1        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0        0      14
1        0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        4      14
1        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0        4      14
1        0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1        3      14
1        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0        1      14
1        0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1        2      14
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     5525   16778
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     2640   16778
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     5943   16778
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     2670   16778
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      717    2111
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      366    2111
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      695    2111
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      333    2111
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      613    4203
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      488    4203
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      642    4203
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      514    4203
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0     1042    4203
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      904    4203
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0       49     413
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1       58     413
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       53     413
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       49     413
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0       98     413
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      106     413
0        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        3       5
0        0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        1       5
0        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        1       5
0        0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    1        0       5
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      366    1700
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       52    1700
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0     1117    1700
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      165    1700
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       46     252
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       16     252
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      150     252
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       40     252
0        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0        9      29
0        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1        5      29
0        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       10      29
0        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        5      29
1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0        2       3
1        6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0        1       3
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      355    1974
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1      132    1974
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0     1064    1974
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      423    1974
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       39     392
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       60     392
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0      131     392
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      162     392
0        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0        9      37
0        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1       10      37
0        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       10      37
0        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        8      37
1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0        2       6
1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1        1       6
1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0        1       6
1        0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        2       6


The following strata were considered:

* enwast: 0, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 0, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* enwast: 0, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 0, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 0, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 0, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* enwast: 0, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 0, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enwast: 0, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 0, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 0, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enwast: 0, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 0, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 0, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 0, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 0, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 0, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 0, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* enwast: 0, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 0, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enwast: 0, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 0, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 0, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 0, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 0, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 0, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 0, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 0, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* enwast: 0, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 0, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 0, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 0, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* enwast: 0, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 0, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enwast: 0, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 0, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 0, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enwast: 0, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 0, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 0, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 0, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 1, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* enwast: 1, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 1, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 1, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 1, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enwast: 1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enwast: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 1, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* enwast: 1, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enwast: 1, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enwast: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 1, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enwast: 1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enwast: 1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enwast: 1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enwast: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enwast: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* enwast: 0, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enwast: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 0, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* enwast: 0, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* enwast: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enwast: 0, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enwast: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enwast: 0, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enwast: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enwast: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 1, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enwast: 0, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* enwast: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enwast: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enwast: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enwast: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enwast: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enwast: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enwast: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enwast: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr           0
##   Control  185
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     205
##           ever_stunted
## tr          0
##   Control  34
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     29
```




# Results Detail

## Results Plots
![](/tmp/a716b819-425e-49d9-9f29-cd06f505fdf9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a716b819-425e-49d9-9f29-cd06f505fdf9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a716b819-425e-49d9-9f29-cd06f505fdf9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a716b819-425e-49d9-9f29-cd06f505fdf9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


enwast   agecat        studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------  ------------  --------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                0.5263158    0.4061427   0.6464889
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                  NA                0.4444444    0.3307292   0.5581597
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                0.2710472    0.2071650   0.3349295
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 NA                0.2844654    0.1932118   0.3757189
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                0.2521008    0.2251133   0.2790883
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 NA                0.3253012    0.2955186   0.3550838
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.3809524    0.3512775   0.4106273
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.3156917    0.2879298   0.3434536
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.3853821    0.3645987   0.4061654
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                0.2429577    0.2241038   0.2618117
0        0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  NA                0.2135008    0.1909973   0.2360043
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Other                NA                0.2666404    0.2494385   0.2838423
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.5228659    0.5038779   0.5418538
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.4631579    0.4440722   0.4822436
0        0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                0.4887640    0.4705462   0.5069819
0        0-24 months   ki1000304-Vitamin-B12       INDIA          Other                NA                0.4351852    0.4037140   0.4666564
0        0-24 months   ki1000304-ZnMort            INDIA          Control              NA                0.5186813    0.4727457   0.5646170
0        0-24 months   ki1000304-ZnMort            INDIA          Zinc                 NA                0.4586130    0.4123949   0.5048311
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.5549451    0.5168787   0.5930114
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.5150754    0.4638185   0.5663323
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.8023256    0.7804239   0.8242272
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.7142857    0.6723521   0.7562193
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.2490347    0.2226991   0.2753704
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.3095614    0.2968247   0.3222982
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                0.4400000    0.3964033   0.4835967
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Other                NA                0.5280000    0.4841549   0.5718451
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                0.3241590    0.3124561   0.3358619
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  NA                0.2811550    0.2282148   0.3340953
0        0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.1362852    0.1196350   0.1529354
0        0-24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.1244312    0.1133828   0.1354796
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.2849696    0.2803714   0.2895678
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.2864358    0.2784453   0.2944263
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                0.8044010    0.7858709   0.8229311
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Other                NA                0.7613636    0.7407105   0.7820168
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.4763514    0.4671105   0.4855922
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.4878847    0.4668788   0.5088907
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                0.5263158    0.4591370   0.5934946
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal             NA                0.5000000    0.3964885   0.6035115
0        0-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                0.5373134    0.4683411   0.6062857
0        0-24 months   ki1148112-LCNI-5            MALAWI         LNS                  NA                0.5759804    0.5279980   0.6239628
0        0-24 months   ki1148112-LCNI-5            MALAWI         Other                NA                0.5931373    0.5256842   0.6605903
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.3233313    0.3169324   0.3297302
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.3099965    0.3041564   0.3158366
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.4432334    0.4052235   0.4812434
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.4446367    0.4121010   0.4771723
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.4645427    0.4375133   0.4915720
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.1538462    0.0403436   0.2673487
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.0923077    0.0217732   0.1628422
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.0917431    0.0374246   0.1460616
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.2450980    0.2001660   0.2900300
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.2500000    0.2079871   0.2920129
0        0-6 months    ki1000304-ZnMort            INDIA          Control              NA                0.4237288    0.2971105   0.5503472
0        0-6 months    ki1000304-ZnMort            INDIA          Zinc                 NA                0.3934426    0.2703373   0.5165480
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.2244224    0.2076389   0.2412060
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.2054381    0.1860186   0.2248575
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.4069767    0.3798771   0.4340764
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.3647541    0.3200282   0.4094800
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                0.2393162    0.2007429   0.2778896
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA      Other                NA                0.2033898    0.1668443   0.2399354
0        0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                0.0699605    0.0577203   0.0822006
0        0-6 months    ki1119695-PROBIT            BELARUS        Maternal             NA                0.0642352    0.0566850   0.0717853
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.1334842    0.1295540   0.1374143
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.1359060    0.1290082   0.1428039
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                0.3222222    0.2770822   0.3673622
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Other                NA                0.3009709    0.2535743   0.3483675
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.2931034    0.2826660   0.3035409
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.2767296    0.2527090   0.3007502
0        0-6 months    ki1148112-LCNI-5            MALAWI         Control              NA                0.3906250    0.2708687   0.5103813
0        0-6 months    ki1148112-LCNI-5            MALAWI         LNS                  NA                0.3260870    0.2477268   0.4044471
0        0-6 months    ki1148112-LCNI-5            MALAWI         Other                NA                0.4218750    0.3006538   0.5430962
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1723739    0.1674658   0.1772820
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1462843    0.1419966   0.1505720
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.1800208    0.1530330   0.2070086
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.2023346    0.1777230   0.2269463
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.2140796    0.1909189   0.2372403
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                0.3571429    0.2293433   0.4849424
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                  NA                0.3333333    0.2054549   0.4612118
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                0.1244019    0.0797970   0.1690069
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 NA                0.1287051    0.0915390   0.1658713
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                0.0677083    0.0496811   0.0857356
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 NA                0.0855615    0.0657544   0.1053685
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.2041312    0.1765897   0.2316728
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.1456200    0.1222986   0.1689414
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.1917892    0.1726851   0.2108934
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                0.0684932    0.0561383   0.0808480
0        6-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  NA                0.0622055    0.0476708   0.0767401
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Other                NA                0.0857709    0.0735490   0.0979929
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.3198925    0.2973014   0.3424836
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.2347188    0.2131949   0.2562427
0        6-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                0.0943396    0.0816958   0.1069835
0        6-24 months   ki1000304-Vitamin-B12       INDIA          Other                NA                0.0997230    0.0758044   0.1236416
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.3117871    0.2727973   0.3507768
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.2885906    0.2671903   0.3099909
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.6250000    0.5915673   0.6584327
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.5214286    0.4568899   0.5859673
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.0840140    0.0654392   0.1025888
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.0920716    0.0830082   0.1011351
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                0.1744186    0.1342014   0.2146358
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Other                NA                0.2674419    0.2205313   0.3143524
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                0.1888489    0.1782547   0.1994431
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  NA                0.1276471    0.1029923   0.1523018
0        6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.0406250    0.0315202   0.0497298
0        6-24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.0409865    0.0362090   0.0457640
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.1247991    0.1210696   0.1285287
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.1307201    0.1241095   0.1373307
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                0.5459770    0.5142333   0.5777208
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Other                NA                0.5560345    0.5194559   0.5926131
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.1794872    0.1703737   0.1886007
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.2118998    0.1903895   0.2334101
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                0.3571429    0.2831618   0.4311240
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal             NA                0.2571429    0.1509858   0.3632999
0        6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                0.3000000    0.2240245   0.3759755
0        6-24 months   ki1148112-LCNI-5            MALAWI         LNS                  NA                0.3068966    0.2537685   0.3600246
0        6-24 months   ki1148112-LCNI-5            MALAWI         Other                NA                0.3169014    0.2403087   0.3934942
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1811552    0.1753718   0.1869387
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1917239    0.1856010   0.1978468
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.3039320    0.2681297   0.3397343
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.2753623    0.2429504   0.3077742
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.2919526    0.2646507   0.3192545
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                0.6060606    0.4036218   0.8084994
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 NA                0.5529010    0.4364506   0.6693515
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.6666667    0.5638685   0.7694648
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.5729167    0.4738333   0.6720000
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.6185567    0.5501123   0.6870011
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                0.5609756    0.4083203   0.7136309
1        0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  NA                0.4166667    0.1363495   0.6969838
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Other                NA                0.6734694    0.5415191   0.8054197
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.6437500    0.6088820   0.6786180
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.5966851    0.5586954   0.6346747
1        0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                0.6000000    0.5491818   0.6508182
1        0-24 months   ki1000304-Vitamin-B12       INDIA          Other                NA                0.7076923    0.6226377   0.7927470
1        0-24 months   ki1000304-ZnMort            INDIA          Control              NA                0.6545455    0.5654877   0.7436032
1        0-24 months   ki1000304-ZnMort            INDIA          Zinc                 NA                0.7118644    0.6299692   0.7937596
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.7428571    0.6506471   0.8350672
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.5272727    0.4523311   0.6022143
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.5084746    0.4347892   0.5821599
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.5966981    0.5636646   0.6297316
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                0.6126761    0.5919417   0.6334104
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  NA                0.5663265    0.4949957   0.6376574
1        0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.1400128    0.1062789   0.1737468
1        0-24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.1058315    0.0916811   0.1199820
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.4163180    0.4046121   0.4280239
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.4235117    0.4039613   0.4430620
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                0.8691589    0.8324996   0.9058182
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Other                NA                0.6375000    0.5923134   0.6826866
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.3379501    0.3196030   0.3562973
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.3239300    0.3072086   0.3406513
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.5420561    0.4417887   0.6423234
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.4803922    0.3644866   0.5962977
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.5196078    0.4460884   0.5931273
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.4074074    0.3298227   0.4849921
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.2631579    0.1806703   0.3456455
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.3793103    0.2228487   0.5357720
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.3125000    0.2703808   0.3546192
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.3888889    0.3329737   0.4448040
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.4000000    0.3017783   0.4982217
1        0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                0.0487805    0.0359400   0.0616210
1        0-6 months    ki1119695-PROBIT            BELARUS        Maternal             NA                0.0419790    0.0326386   0.0513195
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.2506887    0.2389224   0.2624550
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.2922014    0.2715767   0.3128261
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                0.3714286    0.2919557   0.4509014
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Other                NA                0.1944444    0.1284258   0.2604631
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.2212675    0.2044031   0.2381318
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1895787    0.1748533   0.2043041
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.2164948    0.1292719   0.3037178
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.2688172    0.1686933   0.3689411
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.2336957    0.1687766   0.2986147
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                0.2580645   -0.0237328   0.5398618
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 NA                0.2105263    0.1423141   0.2787385
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.3076923    0.1624993   0.4528853
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.2222222    0.1110760   0.3333684
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.3833333    0.2961381   0.4705286
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.4246575    0.3707330   0.4785820
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.4074074    0.3509427   0.4638721
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.5238095    0.3824472   0.6651718
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.2702703    0.2214088   0.3191317
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.1250000    0.0613789   0.1886211
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.1647059    0.1294088   0.2000030
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                0.3048780    0.2695819   0.3401742
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  NA                0.2222222    0.1553791   0.2890653
1        6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.0543194    0.0377766   0.0708621
1        6-24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.0458182    0.0361245   0.0555119
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.1712707    0.1605991   0.1819423
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.1528796    0.1363228   0.1694364
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                0.7457627    0.6869700   0.8045554
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Other                NA                0.4905660    0.4265913   0.5545407
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1566820    0.1401085   0.1732555
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1704545    0.1536131   0.1872960
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.3452381    0.2377463   0.4527299
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.2716049    0.1588420   0.3843678
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.2789116    0.1995352   0.3582880


### Parameter: E(Y)


enwast   agecat        studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         NA                   NA                0.4864865   0.3208393   0.6521337
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   NA                   NA                0.2811550   0.2088625   0.3534475
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL         NA                   NA                0.2895277   0.2492051   0.3298503
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.3664847   0.3519331   0.3810363
0        0-24 months   ki1000111-WASH-Kenya        KENYA          NA                   NA                0.2468540   0.2357573   0.2579507
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.4928085   0.4658382   0.5197788
0        0-24 months   ki1000304-Vitamin-B12       INDIA          NA                   NA                0.4484680   0.4120648   0.4848712
0        0-24 months   ki1000304-ZnMort            INDIA          NA                   NA                0.4889135   0.4562736   0.5215534
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.5341207   0.4674192   0.6008223
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.7371601   0.6896684   0.7846518
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.2992785   0.2877837   0.3107732
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA      NA                   NA                0.4840000   0.4219280   0.5460720
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   NA                   NA                0.2918569   0.2376568   0.3460571
0        0-24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.1300887   0.1092796   0.1508978
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.2860702   0.2768511   0.2952893
0        0-24 months   ki1135781-COHORTS           GUATEMALA      NA                   NA                0.7820966   0.7543115   0.8098817
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.4860121   0.4630625   0.5089616
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.5076923   0.3842865   0.6310981
0        0-24 months   ki1148112-LCNI-5            MALAWI         NA                   NA                0.5707257   0.5366809   0.6047705
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.3164859   0.3077980   0.3251737
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.4534856   0.4351281   0.4718432
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.1032864   0.0623199   0.1442529
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.2473684   0.1858535   0.3088834
0        0-6 months    ki1000304-ZnMort            INDIA          NA                   NA                0.4083333   0.3200212   0.4966455
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.2145110   0.1875964   0.2414257
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.3757576   0.3234240   0.4280912
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA      NA                   NA                0.2212766   0.1680903   0.2744629
0        0-6 months    ki1119695-PROBIT            BELARUS        NA                   NA                0.0669757   0.0523450   0.0816064
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.1353057   0.1273667   0.1432446
0        0-6 months    ki1135781-COHORTS           GUATEMALA      NA                   NA                0.3108808   0.2454109   0.3763507
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.2792553   0.2530628   0.3054479
0        0-6 months    ki1148112-LCNI-5            MALAWI         NA                   NA                0.3646617   0.3067091   0.4226142
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1590236   0.1524234   0.1656238
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.2020419   0.1874501   0.2166337
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         NA                   NA                0.3448276   0.1640917   0.5255635
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   NA                   NA                0.1276471   0.0940463   0.1612478
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL         NA                   NA                0.0765172   0.0497195   0.1033148
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.1826635   0.1695458   0.1957811
0        6-24 months   ki1000111-WASH-Kenya        KENYA          NA                   NA                0.0745090   0.0669880   0.0820300
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.2752881   0.2439424   0.3066337
0        6-24 months   ki1000304-Vitamin-B12       INDIA          NA                   NA                0.0985011   0.0714454   0.1255567
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.2994652   0.2538331   0.3450974
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.5444444   0.4714871   0.6174018
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0906230   0.0824729   0.0987731
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA      NA                   NA                0.2209302   0.1587481   0.2831124
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   NA                   NA                0.1427305   0.1141732   0.1712878
0        6-24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.0408144   0.0304569   0.0511720
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.1292472   0.1216569   0.1368375
0        6-24 months   ki1135781-COHORTS           GUATEMALA      NA                   NA                0.5517241   0.5032897   0.6001586
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.2064180   0.1830463   0.2297898
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.2857143   0.1557687   0.4156598
0        6-24 months   ki1148112-LCNI-5            MALAWI         NA                   NA                0.3076923   0.2698360   0.3455486
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1865984   0.1781812   0.1950156
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.2905983   0.2725128   0.3086838
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   NA                   NA                0.5663265   0.4676816   0.6649714
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.6172507   0.5677244   0.6667769
1        0-24 months   ki1000111-WASH-Kenya        KENYA          NA                   NA                0.5980392   0.5024202   0.6936582
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.6187683   0.5671425   0.6703942
1        0-24 months   ki1000304-Vitamin-B12       INDIA          NA                   NA                0.6823529   0.5827928   0.7819131
1        0-24 months   ki1000304-ZnMort            INDIA          NA                   NA                0.6842105   0.6237421   0.7446790
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.6111111   0.4650975   0.7571247
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.5814634   0.5512482   0.6116787
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   NA                   NA                0.5786517   0.5039686   0.6533347
1        0-24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.1238968   0.0851288   0.1626648
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.4216066   0.3988192   0.4443941
1        0-24 months   ki1135781-COHORTS           GUATEMALA      NA                   NA                0.7700535   0.7095799   0.8305270
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.3311227   0.3062755   0.3559698
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.5157385   0.4625879   0.5688891
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.3230769   0.2085043   0.4376495
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.3376623   0.1762833   0.4990414
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.3972603   0.2842327   0.5102878
1        0-6 months    ki1119695-PROBIT            BELARUS        NA                   NA                0.0455980   0.0295200   0.0616761
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.2812500   0.2574853   0.3050147
1        0-6 months    ki1135781-COHORTS           GUATEMALA      NA                   NA                0.2816901   0.1763144   0.3870659
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.2056738   0.1832174   0.2281301
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.2379679   0.1915361   0.2843997
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   NA                   NA                0.2222222   0.1302643   0.3141801
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.3286385   0.2654093   0.3918677
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.4155844   0.3374949   0.4936740
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.3620690   0.1783396   0.5457983
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.1568998   0.1258769   0.1879227
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   NA                   NA                0.2425150   0.1669098   0.3181201
1        6-24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.0502928   0.0307225   0.0698631
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.1579347   0.1382317   0.1776377
1        6-24 months   ki1135781-COHORTS           GUATEMALA      NA                   NA                0.6250000   0.5349379   0.7150621
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1633781   0.1397562   0.1870000
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.2948718   0.2390842   0.3506594


### Parameter: RR


enwast   agecat        studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                  Control           0.8444444   0.5992945   1.1898764
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 Control           1.0495048   0.7198218   1.5301848
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 Control           1.2903614   1.1208205   1.4855480
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.8286908   0.7368380   0.9319937
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           1.0116279   0.9201834   1.1121598
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  Control           0.8787569   0.7709474   1.0016424
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Other                Control           1.0974765   0.9921287   1.2140105
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.8858064   0.8384646   0.9358211
0        0-24 months   ki1000304-Vitamin-B12       INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304-Vitamin-B12       INDIA          Other                Control           0.8903789   0.8208084   0.9658460
0        0-24 months   ki1000304-ZnMort            INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304-ZnMort            INDIA          Zinc                 Control           0.8841903   0.7731786   1.0111409
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.9281556   0.8226279   1.0472206
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           0.8902692   0.8344565   0.9498148
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.2430452   1.1097017   1.3924114
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Other                Control           1.2000000   1.0544741   1.3656097
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  Control           0.8673367   0.7161331   1.0504652
0        0-24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           0.9130207   0.7862061   1.0602903
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0051451   0.9732689   1.0380653
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Other                Control           0.9464977   0.9134061   0.9807881
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           1.0242119   0.9769692   1.0737392
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal             Control           0.9500000   0.7449025   1.2115679
0        0-24 months   ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-LCNI-5            MALAWI         LNS                  Control           1.0719635   0.9198584   1.2492202
0        0-24 months   ki1148112-LCNI-5            MALAWI         Other                Control           1.1038943   0.9299259   1.3104085
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9587582   0.9329001   0.9853330
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           1.0031659   0.8962008   1.1228978
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.0480768   0.9448986   1.1625214
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.6000000   0.2074249   1.7355680
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           0.5963303   0.2315580   1.5357267
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           1.0200000   0.7954153   1.3079959
0        0-6 months    ki1000304-ZnMort            INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000304-ZnMort            INDIA          Zinc                 Control           0.9285246   0.6024090   1.4311837
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.9154079   0.8113457   1.0328169
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           0.8962529   0.7795290   1.0304547
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA      Other                Control           0.8498789   0.6676152   1.0819020
0        0-6 months    ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1119695-PROBIT            BELARUS        Maternal             Control           0.9181637   0.7440920   1.1329573
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0181436   0.9601217   1.0796717
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Other                Control           0.9340475   0.7565401   1.1532037
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           0.9441361   0.8595836   1.0370057
0        0-6 months    ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1148112-LCNI-5            MALAWI         LNS                  Control           0.8347826   0.5654599   1.2323808
0        0-6 months    ki1148112-LCNI-5            MALAWI         Other                Control           1.0800000   0.7094816   1.6440173
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.8486451   0.8146550   0.8840534
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           1.1239513   0.9265465   1.3634142
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.1891938   0.9884722   1.4306745
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                  Control           0.9333333   0.5523289   1.5771600
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 Control           1.0345914   0.7153379   1.4963268
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 Control           1.2636775   0.8879952   1.7982989
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.7133648   0.5785836   0.8795432
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           0.9395388   0.7944751   1.1110899
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  Control           0.9081998   0.6760605   1.2200490
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Other                Control           1.2522558   0.9950846   1.5758908
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.7337429   0.6535480   0.8237782
0        6-24 months   ki1000304-Vitamin-B12       INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000304-Vitamin-B12       INDIA          Other                Control           1.0570637   0.8031119   1.3913174
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.9256016   0.8003186   1.0704966
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           0.8342857   0.7290472   0.9547155
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.0959079   0.8603356   1.3959833
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Other                Control           1.5333333   1.1476676   2.0485994
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  Control           0.6759216   0.5524980   0.8269169
0        6-24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           1.0088988   0.7853859   1.2960213
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0474440   0.9876887   1.1108145
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Other                Control           1.0184211   0.9328210   1.1118762
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           1.1805846   1.0539107   1.3224839
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal             Control           0.7200000   0.4536666   1.1426893
0        6-24 months   ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-LCNI-5            MALAWI         LNS                  Control           1.0229885   0.7527388   1.3902637
0        6-24 months   ki1148112-LCNI-5            MALAWI         Other                Control           1.0563380   0.7443338   1.4991259
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           1.0583402   1.0115965   1.1072439
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.9059998   0.7670211   1.0701604
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           0.9605853   0.8264500   1.1164910
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 Control           0.9122867   0.6083207   1.3681385
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.8593750   0.6816395   1.0834544
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           0.9278351   0.7674421   1.1217497
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  Control           0.7427536   0.3594774   1.5346803
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Other                Control           1.2005324   0.8585125   1.6788083
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.9268894   0.8525604   1.0076988
1        0-24 months   ki1000304-Vitamin-B12       INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304-Vitamin-B12       INDIA          Other                Control           1.1794872   1.0182122   1.3663066
1        0-24 months   ki1000304-ZnMort            INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304-ZnMort            INDIA          Zinc                 Control           1.0875706   0.9100720   1.2996882
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.7097902   0.5852153   0.8608834
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.1735063   1.0048790   1.3704307
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  Control           0.9243490   0.8113128   1.0531341
1        0-24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           0.7558702   0.5758433   0.9921792
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0172793   0.9637533   1.0737781
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Other                Control           0.7334677   0.6753984   0.7965297
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9585141   0.8893289   1.0330814
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.8862407   0.6539023   1.2011313
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           0.9585869   0.7594492   1.2099412
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.6459330   0.4476128   0.9321214
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.8238636   0.5321724   1.2754351
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           1.0285714   0.7738467   1.3671432
1        0-6 months    ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1119695-PROBIT            BELARUS        Maternal             Control           0.8605697   0.6101733   1.2137212
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.1655945   1.0708648   1.2687042
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Other                Control           0.5235043   0.3504524   0.7820085
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.8567854   0.7684372   0.9552910
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           1.2416795   0.7173369   2.1492940
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.0794513   0.6617767   1.7607378
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 Control           0.8157895   0.2666664   2.4956743
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.7222222   0.3631113   1.4364876
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           1.2458333   0.7378345   2.1035892
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.9593787   0.7949777   1.1577779
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.5159705   0.3730770   0.7135942
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.3176471   0.7585108   2.2889507
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  Control           0.7288889   0.5266425   1.0088039
1        6-24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           0.8434962   0.5834868   1.2193692
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           0.8926195   0.7877776   1.0114143
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Other                Control           0.6578045   0.5648276   0.7660863
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           1.0879011   0.9412843   1.2573552
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.7867178   0.4681448   1.3220799
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           0.8078818   0.5298403   1.2318295


### Parameter: PAR


enwast   agecat        studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  --------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                -0.0398293   -0.1538355    0.0741769
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                 0.0101078   -0.0695743    0.0897899
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.0374269    0.0074671    0.0673866
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0144677   -0.0402007    0.0112653
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0038962   -0.0114324    0.0192249
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0300574   -0.0492109   -0.0109038
0        0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                -0.0402961   -0.0718128   -0.0087794
0        0-24 months   ki1000304-ZnMort            INDIA          Control              NA                -0.0297678   -0.0621197    0.0025842
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0208243   -0.0748858    0.0332371
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0651655   -0.1073054   -0.0230255
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0502437    0.0259531    0.0745343
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.0440000   -0.0001844    0.0881844
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.0323021   -0.0852942    0.0206901
0        0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0061965   -0.0176156    0.0052226
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0011006   -0.0068899    0.0090911
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0223044   -0.0430082   -0.0016006
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.0096607   -0.0113462    0.0306676
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                -0.0186235   -0.1221416    0.0848947
0        0-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                 0.0334123   -0.0262867    0.0931113
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0068454   -0.0127420   -0.0009488
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0102522   -0.0217405    0.0422449
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0505598   -0.1497738    0.0486543
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                 0.0022704   -0.0397439    0.0442847
0        0-6 months    ki1000304-ZnMort            INDIA          Control              NA                -0.0153955   -0.1052077    0.0744168
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0099114   -0.0311427    0.0113199
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0312192   -0.0759899    0.0135516
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                -0.0180396   -0.0546576    0.0185783
0        0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0029848   -0.0106356    0.0046660
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0018215   -0.0050764    0.0087194
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0113414   -0.0587617    0.0360789
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control              NA                -0.0138481   -0.0378712    0.0101750
0        0-6 months    ki1148112-LCNI-5            MALAWI         Control              NA                -0.0259633   -0.1298809    0.0779542
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0133504   -0.0177917   -0.0089090
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0220211   -0.0017083    0.0457505
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                -0.0123153   -0.1401149    0.1154843
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                 0.0032451   -0.0317899    0.0382802
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.0088088   -0.0110187    0.0286363
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0214678   -0.0450500    0.0021144
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0060158   -0.0042084    0.0162401
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0446044   -0.0663343   -0.0228744
0        6-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.0041614   -0.0197580    0.0280809
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0123218   -0.0352720    0.0106283
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0805556   -0.1454018   -0.0157093
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0066090   -0.0103436    0.0235617
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.0465116   -0.0009141    0.0939374
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.0461184   -0.0731382   -0.0190987
0        6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                 0.0001894   -0.0045803    0.0049591
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0044480   -0.0021628    0.0110589
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                 0.0057471   -0.0308347    0.0423289
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.0269309    0.0054091    0.0484526
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                -0.0714286   -0.1782585    0.0354014
0        6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                 0.0076923   -0.0584876    0.0738723
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0054432   -0.0006714    0.0115577
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0133337   -0.0436921    0.0170247
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                -0.0397341   -0.2168570    0.1373889
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0494160   -0.1410999    0.0422680
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0370636   -0.0800360    0.1541633
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0249817   -0.0630533    0.0130899
1        0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.0823529   -0.0032609    0.1679667
1        0-24 months   ki1000304-ZnMort            INDIA          Control              NA                 0.0296651   -0.0330623    0.0923925
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.1317460   -0.2569512   -0.0065409
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0729888    0.0061509    0.1398268
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.0340244   -0.1058363    0.0377875
1        0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0161160   -0.0325276    0.0002956
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0052887   -0.0142622    0.0248396
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0991054   -0.1472006   -0.0510102
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0068274   -0.0235866    0.0099317
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0263176   -0.1137626    0.0611275
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0843305   -0.1686365   -0.0000245
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0416480   -0.0946362    0.0113402
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                 0.0083714   -0.0898565    0.1065993
1        0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0031825   -0.0126844    0.0063195
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0305613    0.0099139    0.0512087
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0897384   -0.1589347   -0.0205422
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0155937   -0.0304281   -0.0007593
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0214731   -0.0548404    0.0977865
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                -0.0358423   -0.2491471    0.1774625
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                 0.0209462   -0.1108078    0.1527002
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0090731   -0.0655543    0.0474081
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.1617406   -0.2696784   -0.0538027
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0318998   -0.0265686    0.0903682
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.0623631   -0.1316943    0.0069682
1        6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0040266   -0.0140476    0.0059945
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                -0.0133360   -0.0298988    0.0032267
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.1207627   -0.1889874   -0.0525381
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0066960   -0.0101357    0.0235278
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0503663   -0.1420937    0.0413611


### Parameter: PAF


enwast   agecat        studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  --------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                -0.0818713   -0.3685924    0.1447815
0        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                 0.0359509   -0.2855930    0.2770724
0        0-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.1292687    0.0334504    0.2155882
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0394769   -0.1121222    0.0284231
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0157836   -0.0483118    0.0759601
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0609920   -0.1031100   -0.0204821
0        0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                -0.0898527   -0.1692924   -0.0158101
0        0-24 months   ki1000304-ZnMort            INDIA          Control              NA                -0.0608856   -0.1293007    0.0033848
0        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0389880   -0.1497547    0.0611074
0        0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0884007   -0.1524909   -0.0278746
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.1678828    0.0827104    0.2451467
0        0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.0909091    0.0035703    0.1705924
0        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.1106778   -0.3318372    0.0737567
0        0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0476327   -0.1444130    0.0409630
0        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0038473   -0.0243694    0.0312868
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0285187   -0.0561181   -0.0016406
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.0198775   -0.0234169    0.0613404
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                -0.0366826   -0.2712224    0.1545847
0        0-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                 0.0585435   -0.0521886    0.1576222
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0216295   -0.0408460   -0.0027677
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0226075   -0.0506262    0.0907365
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.4895105   -1.8140562    0.2115859
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                 0.0091781   -0.1742538    0.1639559
0        0-6 months    ki1000304-ZnMort            INDIA          Control              NA                -0.0377032   -0.2827802    0.1605515
0        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0462046   -0.1550753    0.0524045
0        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0830833   -0.2202895    0.0386958
0        0-6 months    ki1112895-Guatemala BSC     GUATEMALA      Control              NA                -0.0815253   -0.2768273    0.0839035
0        0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0445652   -0.1715594    0.0686631
0        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0134621   -0.0381370    0.0624966
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0364815   -0.2073801    0.1102273
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control              NA                -0.0495895   -0.1438992    0.0369448
0        0-6 months    ki1148112-LCNI-5            MALAWI         Control              NA                -0.0711985   -0.3977380    0.1790549
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0839522   -0.1147510   -0.0540042
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.1089927   -0.0162298    0.2187850
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                -0.0357143   -0.5006981    0.2851966
0        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                 0.0254228   -0.2903177    0.2639016
0        6-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.1151221   -0.1486939    0.3183485
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.1175263   -0.2542260    0.0042744
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0807395   -0.0670138    0.2080329
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.1620280   -0.2585083   -0.0729441
0        6-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.0422477   -0.2210788    0.2487877
0        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0411461   -0.1243815    0.0359276
0        6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.1479592   -0.2935026   -0.0187922
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0729288   -0.1342337    0.2422541
0        6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.2105263    0.0161725    0.3664858
0        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.3231154   -0.5988987   -0.0949001
0        6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                 0.0046412   -0.1187319    0.1144088
0        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0344149   -0.0162691    0.0825711
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                 0.0104167   -0.0574242    0.0739051
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.1304676    0.0347100    0.2167259
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                -0.2500000   -0.8232447    0.1430113
0        6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                 0.0250000   -0.2156501    0.2180110
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0291705   -0.0031823    0.0604799
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0458836   -0.1556958    0.0534944
1        0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                -0.0701611   -0.4337951    0.2012494
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0800582   -0.2396882    0.0590168
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0619752   -0.1563196    0.2390594
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0403732   -0.1064386    0.0217474
1        0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.1206897    0.0027294    0.2246972
1        0-24 months   ki1000304-ZnMort            INDIA          Control              NA                 0.0433566   -0.0531354    0.1310077
1        0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.2155844   -0.4896397    0.0080517
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.1255261    0.0023797    0.2334713
1        0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.0587994   -0.1987118    0.0647826
1        0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.1300763   -0.2982450    0.0163086
1        0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0125441   -0.0343263    0.0572905
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.1286994   -0.2017254   -0.0601110
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0206191   -0.0736185    0.0297640
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0510289   -0.2353978    0.1058250
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.2610229   -0.6447075    0.0331540
1        0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.1233422   -0.3199609    0.0439886
1        0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                 0.0210728   -0.2535555    0.2355357
1        0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0697936   -0.3190480    0.1323603
1        0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.1086624    0.0405952    0.1719004
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.3185714   -0.7014440   -0.0218559
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0758176   -0.1565438   -0.0007261
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0902351   -0.2936167    0.3601875
1        6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                -0.1612903   -1.5599985    0.4732047
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                 0.0637363   -0.4366670    0.3898448
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0218322   -0.1706199    0.1080444
1        6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.4467120   -1.0108205   -0.0408565
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.2033133   -0.2693879    0.4999875
1        6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.2571515   -0.6723596    0.0549701
1        6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0800626   -0.3210262    0.1169477
1        6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                -0.0844401   -0.2045023    0.0236546
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.1932203   -0.3322550   -0.0686954
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0409849   -0.0631816    0.1349455
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.1708075   -0.5291936    0.1035863
