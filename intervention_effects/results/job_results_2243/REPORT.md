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

* enstunt
* agecat
* studyid
* country

## Data Summary

enstunt   agecat        studyid                     country                        tr          ever_stunted   n_cell       n
--------  ------------  --------------------------  -----------------------------  ---------  -------------  -------  ------
1         0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control                1        1       1
0         0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control                0        5       9
0         0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0        4       9
0         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       34     201
0         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       61     201
0         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0      106     201
1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1        6      23
1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1        7      23
1         0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1       10      23
0         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                0       25      85
0         0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                    0       23      85
0         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  0       37      85
1         0-6 months    ki1000111-WASH-Kenya        KENYA                          Control                1        2       7
1         0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                  1        5       7
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       79     184
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       19     184
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       69     184
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       17     184
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       14      81
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control                1       21      81
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       28      81
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1       18      81
1         0-6 months    ki1000304-EU                INDIA                          Control                1        4       7
1         0-6 months    ki1000304-EU                INDIA                          Zinc                   1        3       7
0         0-6 months    ki1000304-EU                INDIA                          Control                0        2       7
0         0-6 months    ki1000304-EU                INDIA                          Zinc                   0        5       7
0         0-6 months    ki1000304-Vitamin-B12       INDIA                          Other                  0        1       1
0         0-6 months    ki1000304-ZnMort            INDIA                          Control                0       38      80
0         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   0       42      80
1         0-6 months    ki1000304-ZnMort            INDIA                          Control                1       28      54
1         0-6 months    ki1000304-ZnMort            INDIA                          Zinc                   1       26      54
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0      226     579
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       46     579
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0      266     579
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       41     579
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                0       36     210
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control                1       57     210
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  0       39     210
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                  1       78     210
0         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       62     250
0         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0      188     250
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       42     153
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1      111     153
0         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        5      18
0         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        0      18
0         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        5      18
0         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        1      18
0         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        7      18
0         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        0      18
1         0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        1       1
0         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0        7      40
0         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       33      40
1         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        5       5
1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                1       30      55
1         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       25      55
0         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control                0       89     183
0         0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       94     183
0         0-6 months    ki1119695-PROBIT            BELARUS                        Control                0     6141   13398
0         0-6 months    ki1119695-PROBIT            BELARUS                        Control                1      422   13398
0         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0     6430   13398
0         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1      405   13398
1         0-6 months    ki1119695-PROBIT            BELARUS                        Control                0       12      31
1         0-6 months    ki1119695-PROBIT            BELARUS                        Control                1        9      31
1         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               0        5      31
1         0-6 months    ki1119695-PROBIT            BELARUS                        Maternal               1        5      31
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1737    8070
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      284    8070
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     5155    8070
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      894    8070
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      139     930
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      100     930
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      388     930
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      303     930
0         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0       84     266
0         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1       41     266
0         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0      109     266
0         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       32     266
1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                0        2      18
1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Control                1        5      18
1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  0        0      18
1         0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                  1       11      18
0         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                0      124     820
0         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      696     820
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control                1       52     323
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      271     323
0         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        3       5
0         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        2       5
1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        1       2
1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        1       2
0         0-6 months    ki1148112-LCNI-5            MALAWI                         Control                0       41     173
0         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    0       94     173
0         0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  0       38     173
1         0-6 months    ki1148112-LCNI-5            MALAWI                         Control                1       25      97
1         0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                    1       45      97
1         0-6 months    ki1148112-LCNI-5            MALAWI                         Other                  1       27      97
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     1118    5845
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1932    5845
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     1148    5845
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1647    5845
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                0     5729   13209
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control                1      674   13209
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     6210   13209
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      596   13209
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      786    3225
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1       64    3225
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      789    3225
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       81    3225
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0     1350    3225
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      155    3225
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                0      112    1304
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control                1      209    1304
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      134    1304
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      231    1304
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      215    1304
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      403    1304
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0      180     375
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1       13     375
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0      168     375
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1       14     375
1         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0        1       6
1         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1        0       6
1         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0        3       6
1         6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1        2       6
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      661    3478
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      180    3478
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      774    3478
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      140    3478
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0     1364    3478
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      359    3478
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0       21      70
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0       20      70
1         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0       29      70
0         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0     1501    4688
0         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      114    4688
0         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0      991    4688
0         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       66    4688
0         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0     1843    4688
0         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      173    4688
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0       13      41
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0       11      41
1         6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0       17      41
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0      269     866
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      147     866
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0      321     866
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1      129     866
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       29      72
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1        3      72
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       40      72
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1        0      72
0         6-24 months   ki1000304-EU                INDIA                          Control                0        2      11
0         6-24 months   ki1000304-EU                INDIA                          Zinc                   0        9      11
0         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       99     473
0         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       10     473
0         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      324     473
0         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       40     473
1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0        5      30
1         6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0       25      30
0         6-24 months   ki1000304-ZnMort            INDIA                          Control                0      219     453
0         6-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      234     453
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0      175     546
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       79     546
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      216     546
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       76     546
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       22      98
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1       19      98
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       32      98
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1       25      98
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       19     202
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       25     202
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       75     202
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1       83     202
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0        0      16
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1        3      16
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0        4      16
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1        9      16
0         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        3      12
0         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        0      12
0         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        3      12
0         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        1      12
0         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        4      12
0         6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        1      12
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0      864    5208
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1       85    5208
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     3836    5208
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      423    5208
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0       12      88
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1        0      88
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0       69      88
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1        7      88
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       69     164
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       13     164
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       60     164
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       22     164
1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0        2       9
1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1        2       9
1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0        4       9
1         6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1        1       9
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      497    2454
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      130    2454
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0     1589    2454
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      238    2454
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0       11     136
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1        0     136
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0       90     136
1         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1       35     136
0         6-24 months   ki1119695-PROBIT            BELARUS                        Control                0     6345   13635
0         6-24 months   ki1119695-PROBIT            BELARUS                        Control                1      290   13635
0         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     6708   13635
0         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      292   13635
1         6-24 months   ki1119695-PROBIT            BELARUS                        Control                0       18      30
1         6-24 months   ki1119695-PROBIT            BELARUS                        Control                1        1      30
1         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0        9      30
1         6-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1        2      30
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1867    8440
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      270    8440
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     5480    8440
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      823    8440
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      138     767
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1       49     767
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      467     767
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      113     767
0         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       90     524
0         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      142     524
0         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0      135     524
0         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      157     524
1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0        7      20
1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1        1      20
1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0        5      20
1         6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1        7      20
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0      146    1064
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       31    1064
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      712    1064
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      175    1064
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0       16     102
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1        5     102
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0       50     102
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1       31     102
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       10      50
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        5      50
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       25      50
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       10      50
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        1       6
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        1       6
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        4       6
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1        0       6
0         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       90     502
0         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       38     502
0         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      176     502
0         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       79     502
0         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       84     502
0         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       35     502
1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                0        8      78
1         6-24 months   ki1148112-LCNI-5            MALAWI                         Control                1        5      78
1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0       29      78
1         6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       11      78
1         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       15      78
1         6-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       10      78
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     4283   10578
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      834   10578
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     4519   10578
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      942   10578
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      893    2512
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1      384    2512
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      816    2512
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1      419    2512
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      642    3278
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      253    3278
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      659    3278
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      220    3278
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0     1113    3278
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      391    3278
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0       96     765
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1       88     765
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      141     765
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1       93     765
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      186     765
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      161     765
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                0      180     375
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1       13     375
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   0      168     375
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1       14     375
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control                1       50     119
1         0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         VitA                   1       69     119
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0      663    3552
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      190    3552
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0      778    3552
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      154    3552
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0     1369    3552
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      398    3552
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                0        1    1033
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control                1      256    1033
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    0        1    1033
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                    1      241    1033
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  0        0    1033
1         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                  1      534    1033
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0        0    1139
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      391    1139
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0        0    1139
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1      211    1139
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0        1    1139
1         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      536    1139
0         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                0     1523    4764
0         0-24 months   ki1000111-WASH-Kenya        KENYA                          Control                1      115    4764
0         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    0     1009    4764
0         0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                    1       66    4764
0         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  0     1877    4764
0         0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                  1      174    4764
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0      348    1083
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      190    1083
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0      390    1083
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1      155    1083
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                0       25     594
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control                1      262     594
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               0       43     594
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Maternal               1      264     594
1         0-24 months   ki1000304-EU                INDIA                          Control                1        6      11
1         0-24 months   ki1000304-EU                INDIA                          Zinc                   1        5      11
0         0-24 months   ki1000304-EU                INDIA                          Control                0        2      13
0         0-24 months   ki1000304-EU                INDIA                          Control                1        1      13
0         0-24 months   ki1000304-EU                INDIA                          Zinc                   0       10      13
0         0-24 months   ki1000304-EU                INDIA                          Zinc                   1        0      13
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       89     330
1         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1      241     330
0         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                0       99     473
0         0-24 months   ki1000304-Vitamin-B12       INDIA                          Control                1       10     473
0         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  0      324     473
0         0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                  1       40     473
1         0-24 months   ki1000304-ZnMort            INDIA                          Control                1      308     597
1         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   1      289     597
0         0-24 months   ki1000304-ZnMort            INDIA                          Control                0      257     533
0         0-24 months   ki1000304-ZnMort            INDIA                          Zinc                   0      276     533
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0      159     690
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1      163     690
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0      204     690
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1      164     690
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                0       15     255
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control                1      100     255
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  0       20     255
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                  1      120     255
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                0       20     250
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       42     250
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  0       85     250
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1      103     250
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control                1       42     154
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                  1      112     154
0         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                0        3      18
0         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control                1        2      18
0         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  0        4      18
0         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                  1        2      18
0         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   0        5      18
0         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        2      18
1         0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                   1        1       1
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                0      865    5216
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1       87    5216
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   0     3837    5216
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1      427    5216
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control                1      261    1907
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                   1     1646    1907
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                0       70     195
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       25     195
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  0       60     195
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       40     195
1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control                1       32      59
1         0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                  1       27      59
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      169     708
1         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      539     708
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                0      497    2454
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control                1      130    2454
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    0     1589    2454
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                    1      238    2454
0         0-24 months   ki1119695-PROBIT            BELARUS                        Control                0     5840   13851
0         0-24 months   ki1119695-PROBIT            BELARUS                        Control                1      920   13851
0         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0     6242   13851
0         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1      849   13851
1         0-24 months   ki1119695-PROBIT            BELARUS                        Control                0        9      33
1         0-24 months   ki1119695-PROBIT            BELARUS                        Control                1       12      33
1         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               0        3      33
1         0-24 months   ki1119695-PROBIT            BELARUS                        Maternal               1        9      33
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0     1859   10462
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      777   10462
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0     5515   10462
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1     2311   10462
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                0      130    1202
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control                1      168    1202
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   0      366    1202
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA                   1      538    1202
0         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0       96     845
0         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      312     845
0         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0      145     845
0         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      292     845
1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                0        1     258
1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Control                1      129     258
1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  0        1     258
1         0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                  1      127     258
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       92     547
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      455     547
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                0      157    1303
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control                1       52    1303
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    0      788    1303
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                    1      306    1303
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0       10      59
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        8      59
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0       24      59
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       17      59
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                0        1      20
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control                1        5      20
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               0        2      20
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal               1       12      20
1         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       71     303
1         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1      150     303
1         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       82     303
0         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                0       93     524
0         0-24 months   ki1148112-LCNI-5            MALAWI                         Control                1       41     524
0         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    0      177     524
0         0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                    1       88     524
0         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  0       84     524
0         0-24 months   ki1148112-LCNI-5            MALAWI                         Other                  1       41     524
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0     5647   15559
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     1895   15559
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0     6068   15559
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     1949   15559
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                0      905    6981
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control                1     2710    6981
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               0      928    6981
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal               1     2438    6981
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0      617    3628
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      354    3628
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0      632    3628
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      347    3628
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0     1064    3628
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      614    3628
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                0       61    1471
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control                1      304    1471
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    0       84    1471
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                    1      330    1471
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  0      110    1471
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                  1      582    1471
0         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                0        3       4
0         0-6 months    iLiNS_DYADM_LNS             MALAWI                         LNS                    0        1       4
1         0-6 months    iLiNS_DYADM_LNS             MALAWI                         Control                1        1       1
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      394    1827
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       61    1827
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0     1195    1827
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      177    1827
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0       18     125
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1        7     125
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0       72     125
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1       28     125
0         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       10      31
0         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1        5      31
0         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       11      31
0         6-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        5      31
1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0        1       2
1         6-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1        1       2
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                0      394    1827
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1       61    1827
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   0     1195    1827
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      177    1827
1         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Control                1      131     539
1         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO                   Zinc                   1      408     539
1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0        1      10
1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1        5      10
1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0        0      10
1         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        4      10
0         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                0       10      36
0         0-24 months   iLiNS_DYADM_LNS             MALAWI                         Control                1        8      36
0         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    0       11      36
0         0-24 months   iLiNS_DYADM_LNS             MALAWI                         LNS                    1        7      36


The following strata were considered:

* enstunt: 0, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 0, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* enstunt: 0, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 0, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 0, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 0, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 0, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 0, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 0, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 0, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enstunt: 0, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 0, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 0, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 0, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 0, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 0, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 0, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 0, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 0, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 0, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 0, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 0, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 0, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 0, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 0, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 0, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* enstunt: 0, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 0, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 0, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 0, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 0, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 0, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 0, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 0, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enstunt: 0, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 0, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 0, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 0, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: 0-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* enstunt: 1, agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 1, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 1, agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 1, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 1, agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 1, agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enstunt: 1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* enstunt: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 1, agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 1, agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* enstunt: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: 6-24 months, studyid: iLiNS-Zinc_ZvLNS, country: BURKINA FASO
* enstunt: 1, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 1, agecat: 6-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* enstunt: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 1, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enstunt: 1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* enstunt: 1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* enstunt: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* enstunt: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* enstunt: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* enstunt: 1, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 0, agecat: 0-6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 1, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 0, agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 0, agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* enstunt: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: 6-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* enstunt: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* enstunt: 0, agecat: 6-24 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* enstunt: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* enstunt: 1, agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* enstunt: 1, agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* enstunt: 1, agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* enstunt: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* enstunt: 0, agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* enstunt: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* enstunt: 1, agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* enstunt: 1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* enstunt: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* enstunt: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* enstunt: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr           0
##   Control  257
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     276
##           ever_stunted
## tr           0
##   Control   34
##   LNS       61
##   Maternal   0
##   Other    106
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr          0
##   Control  25
##   LNS      23
##   Maternal  0
##   Other    37
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr          0
##   Control  38
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     42
##           ever_stunted
## tr           0
##   Control   62
##   LNS        0
##   Maternal   0
##   Other    188
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr          0
##   Control   7
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     33
##           ever_stunted
## tr          0
##   Control  89
##   LNS       0
##   Maternal  0
##   Other    94
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr          0
##   Control  41
##   LNS      94
##   Maternal  0
##   Other    38
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr           0
##   Control  124
##   LNS      696
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr           0
##   Control  219
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     234
##           ever_stunted
## tr           1
##   Control  131
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     408
##           ever_stunted
## tr          1
##   Control  50
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA     69
##   Zinc      0
##           ever_stunted
## tr         1
##   Control  6
##   LNS      0
##   Maternal 0
##   Other    0
##   VitA     0
##   Zinc     5
##           ever_stunted
## tr           1
##   Control   89
##   LNS        0
##   Maternal   0
##   Other    241
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr           1
##   Control  308
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     289
##           ever_stunted
## tr           1
##   Control   42
##   LNS        0
##   Maternal   0
##   Other    112
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr            1
##   Control   261
##   LNS         0
##   Maternal    0
##   Other       0
##   VitA        0
##   Zinc     1646
##           ever_stunted
## tr          1
##   Control  32
##   LNS       0
##   Maternal  0
##   Other    27
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr           1
##   Control  169
##   LNS      539
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr           1
##   Control   71
##   LNS      150
##   Maternal   0
##   Other     82
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr           1
##   Control   92
##   LNS      455
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr          1
##   Control   6
##   LNS       7
##   Maternal  0
##   Other    10
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr          1
##   Control  28
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     26
##           ever_stunted
## tr           1
##   Control   42
##   LNS        0
##   Maternal   0
##   Other    111
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr         1
##   Control  0
##   LNS      0
##   Maternal 0
##   Other    0
##   VitA     0
##   Zinc     5
##           ever_stunted
## tr          1
##   Control  30
##   LNS       0
##   Maternal  0
##   Other    25
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr          1
##   Control  25
##   LNS      45
##   Maternal  0
##   Other    27
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr           1
##   Control   52
##   LNS      271
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc       0
##           ever_stunted
## tr          0
##   Control  21
##   LNS      20
##   Maternal  0
##   Other    29
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr          0
##   Control  13
##   LNS      11
##   Maternal  0
##   Other    17
##   VitA      0
##   Zinc      0
##           ever_stunted
## tr          0
##   Control   5
##   LNS       0
##   Maternal  0
##   Other    25
##   VitA      0
##   Zinc      0
```




# Results Detail

## Results Plots
![](/tmp/94a9a9da-07de-4c01-b0da-4826f10472d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/94a9a9da-07de-4c01-b0da-4826f10472d3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/94a9a9da-07de-4c01-b0da-4826f10472d3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/94a9a9da-07de-4c01-b0da-4826f10472d3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


enstunt   agecat        studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                0.4444444   0.3246647   0.5642242
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                  NA                0.3888889   0.2735329   0.5042449
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                0.1340659   0.0805999   0.1875319
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 NA                0.1290087   0.0963205   0.1616970
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                0.0673575   0.0491343   0.0855808
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 NA                0.0769231   0.0581091   0.0957370
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.2227433   0.1948166   0.2506699
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.1652361   0.1413890   0.1890831
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.2252405   0.2057601   0.2447209
0         0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                0.0702076   0.0578332   0.0825819
0         0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  NA                0.0613953   0.0470438   0.0757469
0         0-24 months   ki1000111-WASH-Kenya        KENYA          Other                NA                0.0848367   0.0727765   0.0968968
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.3531599   0.3330876   0.3732321
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.2844037   0.2653350   0.3034723
0         0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                0.0917431   0.0792420   0.1042443
0         0-24 months   ki1000304-Vitamin-B12       INDIA          Other                NA                0.1098901   0.0851388   0.1346414
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.5062112   0.4697065   0.5427159
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.4456522   0.4042055   0.4870988
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.6774194   0.6485044   0.7063343
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.5478723   0.4942646   0.6014801
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.0913866   0.0730802   0.1096929
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.1001407   0.0911297   0.1091517
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                0.2631579   0.2199078   0.3064080
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Other                NA                0.4000000   0.3506331   0.4493669
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                0.2073365   0.1956984   0.2189747
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  NA                0.1302682   0.1091845   0.1513519
0         0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.1360947   0.1229985   0.1491908
0         0-24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.1197292   0.1096060   0.1298525
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.2947648   0.2903792   0.2991504
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.2952977   0.2877371   0.3028583
0         0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                0.7647059   0.7448206   0.7845911
0         0-24 months   ki1135781-COHORTS           GUATEMALA      Other                NA                0.6681922   0.6453476   0.6910368
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.2488038   0.2393990   0.2582086
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.2797075   0.2573674   0.3020476
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                0.4444444   0.3725814   0.5163075
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal             NA                0.4146341   0.3080519   0.5212163
0         0-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                0.3059701   0.2278723   0.3840680
0         0-24 months   ki1148112-LCNI-5            MALAWI         LNS                  NA                0.3320755   0.2753181   0.3888328
0         0-24 months   ki1148112-LCNI-5            MALAWI         Other                NA                0.3280000   0.2456185   0.4103815
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.2512596   0.2450754   0.2574438
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.2431084   0.2374193   0.2487975
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.3645726   0.3276964   0.4014488
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.3544433   0.3224707   0.3864159
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.3659118   0.3379847   0.3938389
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.1938776   0.1520761   0.2356790
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.1976744   0.1582275   0.2371214
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.1691176   0.1467927   0.1914426
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.1335505   0.1204655   0.1466354
0         0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                0.0642999   0.0559237   0.0726760
0         0-6 months    ki1119695-PROBIT            BELARUS        Maternal             NA                0.0592538   0.0520795   0.0664282
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.1405245   0.1367298   0.1443192
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.1477930   0.1410889   0.1544972
0         0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                0.3280000   0.2892510   0.3667490
0         0-6 months    ki1135781-COHORTS           GUATEMALA      Other                NA                0.2269504   0.1902337   0.2636670
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1052632   0.1010019   0.1095244
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.0875698   0.0839492   0.0911903
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.0752941   0.0553996   0.0951886
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.0931034   0.0695316   0.1166753
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.1029900   0.0840020   0.1219781
0         6-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                0.3333333   0.2120146   0.4546521
0         6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                  NA                0.3125000   0.1911221   0.4338779
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                0.1340659   0.0805999   0.1875319
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 NA                0.1290087   0.0963205   0.1616970
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                0.0673575   0.0491343   0.0855808
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 NA                0.0769231   0.0581091   0.0957370
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                0.2140309   0.1863071   0.2417548
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  NA                0.1531729   0.1298208   0.1765250
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                NA                0.2083575   0.1891780   0.2275370
0         6-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                0.0705882   0.0580949   0.0830816
0         6-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  NA                0.0624409   0.0478530   0.0770287
0         6-24 months   ki1000111-WASH-Kenya        KENYA          Other                NA                0.0858135   0.0735858   0.0980412
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.3533654   0.3312869   0.3754439
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.2866667   0.2649435   0.3083898
0         6-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                0.0917431   0.0792420   0.1042443
0         6-24 months   ki1000304-Vitamin-B12       INDIA          Other                NA                0.1098901   0.0851388   0.1346414
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.3110236   0.2716821   0.3503652
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.2602740   0.2380478   0.2825001
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                0.5681818   0.5362227   0.6001409
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                NA                0.5253165   0.4642623   0.5863707
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                0.0895680   0.0713979   0.1077380
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 NA                0.0993191   0.0903357   0.1083024
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                0.1585366   0.1188886   0.1981846
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Other                NA                0.2682927   0.2201963   0.3163891
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                0.2073365   0.1956984   0.2189747
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  NA                0.1302682   0.1091845   0.1513519
0         6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                0.0437076   0.0346421   0.0527732
0         6-24 months   ki1119695-PROBIT            BELARUS        Maternal             NA                0.0417143   0.0370703   0.0463583
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.1263453   0.1227785   0.1299122
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.1305727   0.1243605   0.1367850
0         6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                0.6120690   0.5842812   0.6398567
0         6-24 months   ki1135781-COHORTS           GUATEMALA      Other                NA                0.5376712   0.5057737   0.5695688
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.1751412   0.1658220   0.1844605
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.1972943   0.1754515   0.2191370
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                0.3333333   0.2595482   0.4071185
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal             NA                0.2857143   0.1783356   0.3930930
0         6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                0.2968750   0.2176469   0.3761031
0         6-24 months   ki1148112-LCNI-5            MALAWI         LNS                  NA                0.3098039   0.2529918   0.3666160
0         6-24 months   ki1148112-LCNI-5            MALAWI         Other                NA                0.2941176   0.2121704   0.3760649
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.1629861   0.1571610   0.1688112
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.1724959   0.1663075   0.1786842
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.2826816   0.2485942   0.3167690
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.2502844   0.2189737   0.2815952
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.2599734   0.2335894   0.2863574
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.9128920   0.8971156   0.9286684
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.8599349   0.8398534   0.8800163
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.8695652   0.8353853   0.9037451
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.8571429   0.8375952   0.8766906
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.5637584   0.5497933   0.5777234
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.5951327   0.5710574   0.6192080
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.7496542   0.7414483   0.7578601
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.7243018   0.7150551   0.7335486
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.8328767   0.7812363   0.8845171
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.7971014   0.7514165   0.8427864
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.8410405   0.8091543   0.8729266
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                0.6000000   0.5294332   0.6705668
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             NA                0.3913043   0.3107114   0.4718973
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.6129032   0.5748273   0.6509791
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.6666667   0.6319525   0.7013808
1         0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                0.4285714   0.2388956   0.6182473
1         0-6 months    ki1119695-PROBIT            BELARUS        Maternal             NA                0.5000000   0.3718481   0.6281519
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.4184100   0.4023293   0.4344908
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.4384949   0.4109909   0.4659990
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.6334426   0.6232747   0.6436105
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.5892665   0.5784149   0.6001182
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.6510903   0.5842811   0.7178996
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.6328767   0.5760709   0.6896825
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.6521036   0.6085833   0.6956238
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                0.2800000   0.1164198   0.4435802
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 NA                0.2800000   0.1539651   0.4060349
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                0.4634146   0.3481136   0.5787156
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                NA                0.4385965   0.3838329   0.4933601
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                0.2620321   0.2466558   0.2774084
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 NA                0.1948276   0.1704371   0.2192180
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                0.2380952   0.2004055   0.2757849
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  NA                0.3827160   0.2982445   0.4671876
1         6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                0.3846154   0.1184418   0.6507890
1         6-24 months   ki1148112-LCNI-5            MALAWI         LNS                  NA                0.2750000   0.1357307   0.4142693
1         6-24 months   ki1148112-LCNI-5            MALAWI         Other                NA                0.4000000   0.2067206   0.5932794
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                0.3007048   0.2861381   0.3152714
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             NA                0.3392713   0.3231231   0.3554194
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                0.4782609   0.3894297   0.5670921
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  NA                0.3974359   0.3299370   0.4649348
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                NA                0.4639769   0.4026007   0.5253532


### Parameter: E(Y)


enstunt   agecat        studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         NA                   NA                0.4166667   0.2503249   0.5830084
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   NA                   NA                0.1302682   0.1012447   0.1592917
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL         NA                   NA                0.0720000   0.0458029   0.0981971
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.2088964   0.1955257   0.2222671
0         0-24 months   ki1000111-WASH-Kenya        KENYA          NA                   NA                0.0745172   0.0670592   0.0819752
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.3185596   0.2907980   0.3463211
0         0-24 months   ki1000304-Vitamin-B12       INDIA          NA                   NA                0.1057082   0.0779705   0.1334460
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.4739130   0.4135513   0.5342748
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.5800000   0.5186962   0.6413038
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0985429   0.0904537   0.1066322
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA      NA                   NA                0.3333333   0.2669986   0.3996681
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   NA                   NA                0.1499593   0.1232769   0.1766416
0         0-24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.1277164   0.1101499   0.1452829
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.2951634   0.2864229   0.3039040
0         0-24 months   ki1135781-COHORTS           GUATEMALA      NA                   NA                0.7147929   0.6843317   0.7452541
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.2747506   0.2505037   0.2989974
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.4237288   0.2951677   0.5522899
0         0-24 months   ki1148112-LCNI-5            MALAWI         NA                   NA                0.3244275   0.2843046   0.3645504
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.2470596   0.2386384   0.2554808
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.3624587   0.3440538   0.3808635
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.1956522   0.1381761   0.2531282
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.1502591   0.1210593   0.1794589
0         0-6 months    ki1119695-PROBIT            BELARUS        NA                   NA                0.0617256   0.0505044   0.0729468
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.1459727   0.1382689   0.1536766
0         0-6 months    ki1135781-COHORTS           GUATEMALA      NA                   NA                0.2744361   0.2207102   0.3281620
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0961466   0.0905115   0.1017816
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0930233   0.0808837   0.1051628
0         6-24 months   iLiNS_DYADM_LNS             MALAWI         NA                   NA                0.3225806   0.1510101   0.4941512
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   NA                   NA                0.1302682   0.1012447   0.1592917
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL         NA                   NA                0.0720000   0.0458029   0.0981971
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     NA                   NA                0.1952271   0.1820521   0.2084022
0         6-24 months   ki1000111-WASH-Kenya        KENYA          NA                   NA                0.0752986   0.0677443   0.0828529
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.3187067   0.2876538   0.3497596
0         6-24 months   ki1000304-Vitamin-B12       INDIA          NA                   NA                0.1057082   0.0779705   0.1334460
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.2838828   0.2356290   0.3321366
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          NA                   NA                0.5346535   0.4656971   0.6036099
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0975422   0.0894836   0.1056009
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA      NA                   NA                0.2134146   0.1505163   0.2763130
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   NA                   NA                0.1499593   0.1232769   0.1766416
0         6-24 months   ki1119695-PROBIT            BELARUS        NA                   NA                0.0426843   0.0323952   0.0529733
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.1295024   0.1223389   0.1366659
0         6-24 months   ki1135781-COHORTS           GUATEMALA      NA                   NA                0.5706107   0.5281885   0.6130329
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.1936090   0.1698561   0.2173619
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.3000000   0.1696183   0.4303817
0         6-24 months   ki1148112-LCNI-5            MALAWI         NA                   NA                0.3027888   0.2625559   0.3430217
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.1678956   0.1594055   0.1763858
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.2635754   0.2461302   0.2810205
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.8855219   0.8598958   0.9111479
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.8627451   0.8223227   0.9031675
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.5873544   0.5595115   0.6151974
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.7374302   0.7250303   0.7498300
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.8266485   0.8030205   0.8502766
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       NA                   NA                0.4814815   0.3719913   0.5909716
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.6428571   0.5874562   0.6982581
1         0-6 months    ki1119695-PROBIT            BELARUS        NA                   NA                0.4516129   0.2223315   0.6808943
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.4333333   0.4014682   0.4651984
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.6123182   0.5973502   0.6272862
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.6464724   0.6155921   0.6773526
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   NA                   NA                0.2800000   0.1786205   0.3813795
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.4489796   0.3175153   0.5804439
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.2112125   0.1823075   0.2401176
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.3529412   0.2597423   0.4461400
1         6-24 months   ki1148112-LCNI-5            MALAWI         NA                   NA                0.3333333   0.2280411   0.4386256
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.3196656   0.2978439   0.3414873
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.4470588   0.4062464   0.4878712


### Parameter: RR


enstunt   agecat        studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  --------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                  Control           0.8750000   0.5860747   1.3063607
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 Control           0.9622784   0.6122210   1.5124924
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 Control           1.1420118   0.7930093   1.6446099
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.7418229   0.6127369   0.8981036
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           1.0112114   0.8683471   1.1775803
0         0-24 months   ki1000111-WASH-Kenya        KENYA          Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  Control           0.8744833   0.6525418   1.1719112
0         0-24 months   ki1000111-WASH-Kenya        KENYA          Other                Control           1.2083692   0.9635164   1.5154450
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.8053114   0.7375492   0.8792993
0         0-24 months   ki1000304-Vitamin-B12       INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000304-Vitamin-B12       INDIA          Other                Control           1.1978021   0.9205728   1.5585187
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.8803681   0.7826534   0.9902825
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           0.8087639   0.7268754   0.8998779
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.0957926   0.8797458   1.3648960
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Other                Control           1.5200000   1.2376070   1.8668285
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  Control           0.6282935   0.5288898   0.7463801
0         0-24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           0.8797496   0.7750355   0.9986115
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0018080   0.9725769   1.0319176
0         0-24 months   ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1135781-COHORTS           GUATEMALA      Other                Control           0.8737898   0.8370516   0.9121405
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           1.1242090   1.0291331   1.2280683
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal             Control           0.9329268   0.6885928   1.2639582
0         0-24 months   ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1148112-LCNI-5            MALAWI         LNS                  Control           1.0853198   0.7982674   1.4755947
0         0-24 months   ki1148112-LCNI-5            MALAWI         Other                Control           1.0720000   0.7493334   1.5336084
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9675586   0.9352497   1.0009836
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.9722160   0.8489903   1.1133271
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.0036733   0.8842186   1.1392659
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           1.0195838   0.7600364   1.3677651
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.7896898   0.6697729   0.9310768
0         0-6 months    ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1119695-PROBIT            BELARUS        Maternal             Control           0.9215236   0.7718947   1.1001575
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0517243   0.9976428   1.1087375
0         0-6 months    ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    ki1135781-COHORTS           GUATEMALA      Other                Control           0.6919218   0.5663136   0.8453898
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.8319130   0.7851406   0.8814718
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           1.2365302   0.8575855   1.7829207
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.3678364   0.9910773   1.8878208
0         6-24 months   iLiNS_DYADM_LNS             MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                  Control           0.9375000   0.5505584   1.5963906
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 Control           0.9622784   0.6122210   1.5124924
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL         VitA                 Control           1.1420118   0.7930093   1.6446099
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                  Control           0.7156577   0.5858997   0.8741528
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                Control           0.9734926   0.8304617   1.1411579
0         6-24 months   ki1000111-WASH-Kenya        KENYA          Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1000111-WASH-Kenya        KENYA          LNS                  Control           0.8845790   0.6598510   1.1858435
0         6-24 months   ki1000111-WASH-Kenya        KENYA          Other                Control           1.2156911   0.9685965   1.5258211
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.8112472   0.7353583   0.8949678
0         6-24 months   ki1000304-Vitamin-B12       INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1000304-Vitamin-B12       INDIA          Other                Control           1.1978021   0.9205728   1.5585187
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.8368302   0.7184216   0.9747547
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                Control           0.9245570   0.8125646   1.0519848
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                 Control           1.1088684   0.8880084   1.3846594
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Other                Control           1.6923077   1.2440727   2.3020402
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   LNS                  Control           0.6282935   0.5288898   0.7463801
0         6-24 months   ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1119695-PROBIT            BELARUS        Maternal             Control           0.9543941   0.7550729   1.2063313
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0334591   0.9778387   1.0922432
0         6-24 months   ki1135781-COHORTS           GUATEMALA      Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1135781-COHORTS           GUATEMALA      Other                Control           0.8784488   0.8152167   0.9465854
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           1.1264865   0.9962757   1.2737156
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal             Control           0.8571429   0.5541504   1.3258024
0         6-24 months   ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1148112-LCNI-5            MALAWI         LNS                  Control           1.0435501   0.7548946   1.4425811
0         6-24 months   ki1148112-LCNI-5            MALAWI         Other                Control           0.9907121   0.6735835   1.4571475
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           1.0583470   1.0060961   1.1133116
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.8853935   0.7441736   1.0534123
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           0.9196688   0.7855581   1.0766748
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.9419897   0.9150172   0.9697573
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.9857143   0.9420501   1.0314023
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0556521   1.0067459   1.1069341
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9661812   0.9500580   0.9825781
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.9570461   0.8795361   1.0413869
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.0098019   0.9390168   1.0859228
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal             Control           0.6521739   0.5144697   0.8267364
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Other                Control           1.0877193   1.0029265   1.1796810
1         0-6 months    ki1119695-PROBIT            BELARUS        Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1119695-PROBIT            BELARUS        Maternal             Control           1.1666667   0.6992391   1.9465602
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           1.0480029   0.9736769   1.1280025
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           0.9302603   0.9078076   0.9532684
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.9720260   0.8481629   1.1139776
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                Control           1.0015562   0.8861574   1.1319826
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Zinc                 Control           1.0000000   0.4549237   2.1981707
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Other                Control           0.9464451   0.7179402   1.2476781
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       VitA                 Control           0.7435257   0.6475155   0.8537717
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                  Control           1.6074074   1.2250846   2.1090450
1         6-24 months   ki1148112-LCNI-5            MALAWI         Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1148112-LCNI-5            MALAWI         LNS                  Control           0.7150000   0.3032998   1.6855433
1         6-24 months   ki1148112-LCNI-5            MALAWI         Other                Control           1.0400000   0.4471654   2.4187917
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal             Control           1.1282536   1.0541602   1.2075548
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                  Control           0.8310023   0.6460925   1.0688328
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                Control           0.9701336   0.7723224   1.2186093


### Parameter: PAR


enstunt   agecat        studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  --------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                -0.0277778   -0.1432004    0.0876449
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                -0.0037977   -0.0488332    0.0412378
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.0046425   -0.0141777    0.0234627
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0138469   -0.0380149    0.0103212
0         0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0043096   -0.0058613    0.0144806
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0346003   -0.0537787   -0.0154219
0         0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.0139651   -0.0107958    0.0387260
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0322981   -0.0799799    0.0153836
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0974194   -0.1514756   -0.0433631
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0071564   -0.0095238    0.0238366
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.0701754    0.0198791    0.1204718
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.0573773   -0.0825700   -0.0321845
0         0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0083783   -0.0192747    0.0025181
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0003987   -0.0071620    0.0079593
0         0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0499130   -0.0729881   -0.0268379
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.0259467    0.0035981    0.0482954
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                -0.0207156   -0.1273161    0.0858849
0         0-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                 0.0184573   -0.0492896    0.0862042
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0042000   -0.0099162    0.0015162
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0021140   -0.0332724    0.0290445
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                 0.0017746   -0.0376733    0.0412225
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0188586   -0.0383352    0.0006180
0         0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0025742   -0.0098642    0.0047157
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0054482   -0.0012562    0.0121527
0         0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0535639   -0.0907793   -0.0163485
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0091166   -0.0128115   -0.0054217
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.0177291   -0.0005659    0.0360242
0         6-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                -0.0107527   -0.1320714    0.1105660
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                -0.0037977   -0.0488332    0.0412378
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.0046425   -0.0141777    0.0234627
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0188038   -0.0426886    0.0050810
0         6-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0047104   -0.0055663    0.0149871
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0346587   -0.0564950   -0.0128224
0         6-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.0139651   -0.0107958    0.0387260
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0271408   -0.0553955    0.0011139
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0335284   -0.0946315    0.0275748
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0079743   -0.0086020    0.0245506
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.0548780    0.0060494    0.1037067
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.0573773   -0.0825700   -0.0321845
0         6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0010233   -0.0057262    0.0036795
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0031570   -0.0030553    0.0093694
0         6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0414583   -0.0735126   -0.0094039
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.0184678   -0.0033806    0.0403162
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                -0.0333333   -0.1408281    0.0741615
0         6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                 0.0059138   -0.0626041    0.0744318
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0049095   -0.0012672    0.0110862
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0191062   -0.0479721    0.0097597
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0273701   -0.0475642   -0.0071760
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0068201   -0.0271182    0.0134780
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0235960   -0.0004915    0.0476835
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0122241   -0.0215650   -0.0028831
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0062282   -0.0498556    0.0373993
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.1185185   -0.2022348   -0.0348022
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                 0.0299539   -0.0092911    0.0691989
1         0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                 0.0230415   -0.1072172    0.1533002
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0149233   -0.0125866    0.0424331
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0211244   -0.0321415   -0.0101073
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0046180   -0.0613560    0.0521201
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                 0.0000000   -0.1764281    0.1764281
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0144350   -0.0705400    0.0416699
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                -0.0508196   -0.0752955   -0.0263437
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.1148459    0.0296080    0.2000839
1         6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                -0.0512821   -0.2927747    0.1902106
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0189608    0.0027555    0.0351661
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0312020   -0.1070857    0.0446816


### Parameter: PAF


enstunt   agecat        studyid                     country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  --------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                -0.0666667   -0.4079502    0.1918906
0         0-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                -0.0291532   -0.4401466    0.2645497
0         0-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.0644790   -0.2157012    0.2800866
0         0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0662858   -0.1884518    0.0433222
0         0-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0578342   -0.0889188    0.1848094
0         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.1086148   -0.1777789   -0.0435124
0         0-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.1321100   -0.0977237    0.3138228
0         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0681520   -0.1814182    0.0342550
0         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.1679644   -0.2824062   -0.0637354
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0726220   -0.1129775    0.2272711
0         0-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.2105263    0.0783442    0.3237511
0         0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.3826191   -0.6343046   -0.1696935
0         0-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0656005   -0.1612449    0.0221662
0         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0013506   -0.0245602    0.0266062
0         0-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0698286   -0.1049850   -0.0357908
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.0944375    0.0176221    0.1652464
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                -0.0488889   -0.3490933    0.1845131
0         0-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                 0.0568920   -0.1768371    0.2442007
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0170001   -0.0408085    0.0062637
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0058323   -0.0955632    0.0765493
0         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                 0.0090703   -0.2123013    0.1900184
0         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.1255071   -0.2820149    0.0118943
0         0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                -0.0417044   -0.1725743    0.0745592
0         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0373237   -0.0079340    0.0805493
0         0-6 months    ki1135781-COHORTS           GUATEMALA      Control              NA                -0.1951781   -0.3714221   -0.0415835
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0948197   -0.1379224   -0.0533497
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                 0.1905882   -0.0278547    0.3626070
0         6-24 months   iLiNS_DYADM_LNS             MALAWI         Control              NA                -0.0333333   -0.5054224    0.2907122
0         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                -0.0291532   -0.4401466    0.2645497
0         6-24 months   ki1000107-Serrinha-VitA     BRAZIL         Control              NA                 0.0644790   -0.2157012    0.2800866
0         6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control              NA                -0.0963174   -0.2256584    0.0193745
0         6-24 months   ki1000111-WASH-Kenya        KENYA          Control              NA                 0.0625562   -0.0842165    0.1894601
0         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.1087479   -0.1877763   -0.0349776
0         6-24 months   ki1000304-Vitamin-B12       INDIA          Control              NA                 0.1321100   -0.0977237    0.3138228
0         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0956058   -0.2110327    0.0088195
0         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control              NA                -0.0627104   -0.1914400    0.0521105
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Control              NA                 0.0817520   -0.1048003    0.2368038
0         6-24 months   ki1112895-Guatemala BSC     GUATEMALA      Control              NA                 0.2571429    0.0578479    0.4142806
0         6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO   Control              NA                -0.3826191   -0.6343046   -0.1696935
0         6-24 months   ki1119695-PROBIT            BELARUS        Control              NA                -0.0239747   -0.1434756    0.0830376
0         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0243781   -0.0235692    0.0700795
0         6-24 months   ki1135781-COHORTS           GUATEMALA      Control              NA                -0.0726560   -0.1347474   -0.0139621
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.0953870   -0.0127953    0.1920137
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control              NA                -0.1111111   -0.5912496    0.2241519
0         6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                 0.0195312   -0.2349995    0.2216038
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0292414   -0.0071515    0.0643193
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0724886   -0.1877801    0.0316121
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.0309084   -0.0546947   -0.0076586
1         0-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0079051   -0.0319141    0.0155452
1         0-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0401734   -0.0000196    0.0787509
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0165766   -0.0295357   -0.0037805
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0075342   -0.0616951    0.0438637
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control              NA                -0.2461538   -0.4863567   -0.0447690
1         0-6 months    ki1000304b-SAS-CompFeed     INDIA          Control              NA                 0.0465950   -0.0134133    0.1030499
1         0-6 months    ki1119695-PROBIT            BELARUS        Control              NA                 0.0510204   -0.2675869    0.2895459
1         0-6 months    ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                 0.0344384   -0.0288614    0.0938437
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control              NA                -0.0344991   -0.0532878   -0.0160455
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0071433   -0.0988164    0.0768816
1         6-24 months   iLiNS-Zinc_ZvLNS            BURKINA FASO   Control              NA                 0.0000000   -0.8777991    0.4674617
1         6-24 months   ki1000304b-SAS-CompFeed     INDIA          Control              NA                -0.0321508   -0.1704395    0.0897990
1         6-24 months   ki1126311-ZVITAMBO          ZIMBABWE       Control              NA                -0.2406087   -0.3942295   -0.1039144
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control              NA                 0.3253968    0.1364394    0.4730081
1         6-24 months   ki1148112-LCNI-5            MALAWI         Control              NA                -0.1538462   -1.1623577    0.3843012
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control              NA                 0.0593146    0.0103253    0.1058788
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control              NA                -0.0697941   -0.2533179    0.0868563
