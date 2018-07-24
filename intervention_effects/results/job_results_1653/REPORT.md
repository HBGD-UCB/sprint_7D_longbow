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
        value: TRUE        
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

**Intervention Variable:** tr.x

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                     country                        tr.x       ever_stunted   n_cell       n
------------  --------------------------  -----------------------------  --------  -------------  -------  ------
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control               0        5      10
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Control               1        1      10
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Other                 0        4      10
0-6 months    ki1000107-Serrinha-VitA     BRAZIL                         Other                 1        0      10
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0       37     232
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1        6     232
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0       62     232
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1        7     232
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0      110     232
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1       10     232
0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               0       25      92
0-6 months    ki1000111-WASH-Kenya        KENYA                          Control               1        2      92
0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   0       23      92
0-6 months    ki1000111-WASH-Kenya        KENYA                          LNS                   1        0      92
0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 0       37      92
0-6 months    ki1000111-WASH-Kenya        KENYA                          Other                 1        5      92
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               0       99     292
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control               1       40     292
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0      116     292
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1       37     292
0-6 months    ki1000304-EU                INDIA                          Control               0        2      14
0-6 months    ki1000304-EU                INDIA                          Control               1        4      14
0-6 months    ki1000304-EU                INDIA                          Zinc                  0        5      14
0-6 months    ki1000304-EU                INDIA                          Zinc                  1        3      14
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               0      118     334
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control               1       53     334
0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 0      109     334
0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                 1       54     334
0-6 months    ki1000304-Vitamin-B12       INDIA                          Control               0        1       1
0-6 months    ki1000304-ZnMort            INDIA                          Other                 0       54     181
0-6 months    ki1000304-ZnMort            INDIA                          Other                 1       35     181
0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  0       55     181
0-6 months    ki1000304-ZnMort            INDIA                          Zinc                  1       37     181
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               0      264     792
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control               1      103     792
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 0      305     792
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                 1      120     792
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       63     416
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       42     416
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0      194     416
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1      117     416
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               0      142     640
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control               1       24     640
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 0      409     640
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                 1       65     640
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      517    2234
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       40    2234
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0     1043    2234
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1       72    2234
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      515    2234
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       47    2234
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0        7      46
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1        0      46
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0       34      46
0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1        5      46
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               0       47     241
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control               1       14     241
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 0      139     241
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       41     241
0-6 months    ki1119695-PROBIT            BELARUS                        Control               0     7274   16185
0-6 months    ki1119695-PROBIT            BELARUS                        Control               1      533   16185
0-6 months    ki1119695-PROBIT            BELARUS                        Other                 0     7859   16185
0-6 months    ki1119695-PROBIT            BELARUS                        Other                 1      519   16185
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               0     1898    9102
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      388    9102
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     5609    9102
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1     1207    9102
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               0       93     298
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control               1       48     298
0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 0      112     298
0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                 1       45     298
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               0      128    1197
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control               1       60    1197
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      721    1197
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      288    1197
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0       18      70
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1        5      70
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0       15      70
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1        5      70
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0       21      70
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1        6      70
0-6 months    ki1148112-LCNI-5            MALAWI                         Control               0       81     272
0-6 months    ki1148112-LCNI-5            MALAWI                         Control               1       52     272
0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   0       94     272
0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                   1       45     272
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               0     6940   19359
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control               1     2660   19359
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     7464   19359
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     2295   19359
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               0      906    4568
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control               1      275    4568
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0     1075    4568
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      369    4568
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0      502    4568
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1      193    4568
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      934    4568
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      314    4568
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0      181     381
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1       13     381
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0      171     381
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1       16     381
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      729    3726
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      181    3726
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      823    3726
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      142    3726
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0     1479    3726
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      372    3726
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0     1712    5332
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1      114    5332
6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0     1148    5332
6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1       67    5332
6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0     2117    5332
6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      174    5332
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0      302     955
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1      150     955
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0      374     955
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1      129     955
6-24 months   ki1000304-EU                INDIA                          Control               0      543    1155
6-24 months   ki1000304-EU                INDIA                          Control               1       25    1155
6-24 months   ki1000304-EU                INDIA                          Zinc                  0      557    1155
6-24 months   ki1000304-EU                INDIA                          Zinc                  1       30    1155
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      995    2167
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1       84    2167
6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0     1005    2167
6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1       83    2167
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0      222     504
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1       24     504
6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0      232     504
6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1       26     504
6-24 months   ki1000304-ZnMort            INDIA                          Other                 0      436     886
6-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0      450     886
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0      198     647
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1       98     647
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0      249     647
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1      102     647
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       19     226
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       29     226
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       80     226
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1       98     226
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0      101     497
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       25     497
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0      277     497
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1       94     497
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      402    1847
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1       64    1847
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      806    1847
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1      114    1847
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      392    1847
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1       69    1847
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      876    5326
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1       85    5326
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0     3931    5326
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1      434    5326
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0       39     177
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1        7     177
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0      100     177
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       31     177
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0      509    2677
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1      130    2677
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0     1759    2677
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1      279    2677
6-24 months   ki1119695-PROBIT            BELARUS                        Control               0     7495   16303
6-24 months   ki1119695-PROBIT            BELARUS                        Control               1      309   16303
6-24 months   ki1119695-PROBIT            BELARUS                        Other                 0     8188   16303
6-24 months   ki1119695-PROBIT            BELARUS                        Other                 1      311   16303
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0     2031    9317
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      321    9317
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     6019    9317
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1      946    9317
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0      110     627
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      170     627
6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0      165     627
6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      182     627
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0      167    1212
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1       37    1212
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      791    1212
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      217    1212
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0      238     931
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1       74     931
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0      215     931
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1       89     931
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0      229     931
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1       86     931
6-24 months   ki1148112-LCNI-5            MALAWI                         Control               0      201     589
6-24 months   ki1148112-LCNI-5            MALAWI                         Control               1       89     589
6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0      208     589
6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1       91     589
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     5257   13304
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     1236   13304
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     5425   13304
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     1386   13304
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      789    4312
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      367    4312
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      937    4312
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      379    4312
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0      451    4312
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1      195    4312
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      863    4312
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      331    4312
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               0      180     494
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control               1       63     494
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 0      168     494
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                 1       83     494
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               0      711    4817
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control               1      465    4817
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   0      808    4817
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                   1      403    4817
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 0     1453    4817
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                 1      977    4817
0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               0     1721    6705
0-24 months   ki1000111-WASH-Kenya        KENYA                          Control               1      578    6705
0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   0     1155    6705
0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                   1      319    6705
0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 0     2133    6705
0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                 1      799    6705
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               0      383    1725
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control               1      452    1725
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 0      465    1725
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                 1      425    1725
0-24 months   ki1000304-EU                INDIA                          Control               0      526    2016
0-24 months   ki1000304-EU                INDIA                          Control               1      502    2016
0-24 months   ki1000304-EU                INDIA                          Zinc                  0      547    2016
0-24 months   ki1000304-EU                INDIA                          Zinc                  1      441    2016
0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               0      978    3543
0-24 months   ki1000304-VITAMIN-A         INDIA                          Control               1      811    3543
0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 0      992    3543
0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                 1      762    3543
0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               0      208     804
0-24 months   ki1000304-Vitamin-B12       INDIA                          Control               1      198     804
0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 0      216     804
0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                 1      182     804
0-24 months   ki1000304-ZnMort            INDIA                          Other                 0      490    2036
0-24 months   ki1000304-ZnMort            INDIA                          Other                 1      523    2036
0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  0      505    2036
0-24 months   ki1000304-ZnMort            INDIA                          Zinc                  1      518    2036
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               0      176     949
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control               1      263     949
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 0      225     949
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                 1      285     949
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               0       20     418
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control               1       86     418
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 0       86     418
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                 1      226     418
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               0      101     641
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control               1       65     641
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 0      278     641
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                 1      197     641
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               0      433    2255
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control               1      129    2255
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 0      870    2255
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                 1      256    2255
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  0      428    2255
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                  1      139    2255
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               0      865    7164
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control               1      348    7164
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  0     3862    7164
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                  1     2089    7164
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               0       39     259
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control               1       26     259
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 0       95     259
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                 1       99     259
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               0      498    3265
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control               1      299    3265
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   0     1662    3265
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                   1      806    3265
0-24 months   ki1119695-PROBIT            BELARUS                        Control               0     6930   16735
0-24 months   ki1119695-PROBIT            BELARUS                        Control               1     1113   16735
0-24 months   ki1119695-PROBIT            BELARUS                        Other                 0     7670   16735
0-24 months   ki1119695-PROBIT            BELARUS                        Other                 1     1022   16735
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               0     2015   11809
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control               1      955   11809
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 0     5954   11809
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                 1     2885   11809
0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               0      110    1250
0-24 months   ki1135781-COHORTS           GUATEMALA                      Control               1      500    1250
0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 0      172    1250
0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                 1      468    1250
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               0      161    1931
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control               1      159    1931
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   0      817    1931
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                   1      794    1931
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               0      228    1156
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control               1      162    1156
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   0      206    1156
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                   1      175    1156
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 0      215    1156
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                 1      170    1156
0-24 months   ki1148112-LCNI-5            MALAWI                         Control               0      180     840
0-24 months   ki1148112-LCNI-5            MALAWI                         Control               1      238     840
0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   0      179     840
0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                   1      243     840
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               0     6650   22933
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control               1     4698   22933
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 0     7108   22933
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                 1     4477   22933
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               0      725    5440
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control               1      708    5440
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   0      851    5440
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                   1      815    5440
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   0      409    5440
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                   1      441    5440
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 0      774    5440
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                 1      717    5440


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304-EU, country: INDIA
* agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* agecat: 0-24 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* agecat: 0-6 months, studyid: ki1000304-EU, country: INDIA
* agecat: 0-6 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x        0
##   Control   0
##   LNS       0
##   MMN       0
##   Other   436
##   Zinc    450
```




# Results Detail

## Results Plots
![](/tmp/4e466177-41ef-4ba1-9903-41b68867e5e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 62 rows containing missing values (geom_errorbar).
```

![](/tmp/4e466177-41ef-4ba1-9903-41b68867e5e6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4e466177-41ef-4ba1-9903-41b68867e5e6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4e466177-41ef-4ba1-9903-41b68867e5e6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.2592593   0.2321283   0.2863902
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.3306773   0.3010755   0.3602791
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3954082   0.3674606   0.4233557
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3327828   0.3062407   0.3593249
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4020576   0.3825608   0.4215544
0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2514137   0.2336789   0.2691485
0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2164179   0.1953937   0.2374422
0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2725102   0.2563925   0.2886279
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.5413174   0.5249526   0.5576821
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.4775281   0.4605921   0.4944641
0-24 months   ki1000304-EU                INDIA                          Control              NA                0.4883268   0.4577628   0.5188909
0-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.4463563   0.4153512   0.4773614
0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.4533259   0.4416762   0.4649755
0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.4344356   0.4229499   0.4459213
0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.4876847   0.4631171   0.5122524
0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.4572864   0.4330436   0.4815293
0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                0.5162883   0.4855068   0.5470697
0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 NA                0.5063539   0.4757094   0.5369983
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5990888   0.5667225   0.6314551
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.5588235   0.5216751   0.5959719
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.8113208   0.7924102   0.8302313
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.7243590   0.6873064   0.7614115
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.3915663   0.3723224   0.4108101
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.4147368   0.3818791   0.4475946
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2295374   0.1947614   0.2643133
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2273535   0.2028675   0.2518394
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2451499   0.2097339   0.2805659
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.2868920   0.2614363   0.3123477
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.3510334   0.3389060   0.3631609
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.4000000   0.3700532   0.4299468
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.5103093   0.4575174   0.5631011
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.3751568   0.3626221   0.3876916
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.3265802   0.2777941   0.3753663
0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1383812   0.1249442   0.1518182
0-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.1175794   0.1070837   0.1280750
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.3215488   0.3173239   0.3257737
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.3263944   0.3190775   0.3337113
0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8196721   0.8047776   0.8345667
0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7312500   0.7136583   0.7488417
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4968750   0.4877944   0.5059556
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4928616   0.4724887   0.5132344
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.4153846   0.3664135   0.4643557
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.4593176   0.4092690   0.5093662
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.4415584   0.3918918   0.4912251
0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.5693780   0.5457425   0.5930135
0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5758294   0.5521265   0.5995323
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4139937   0.4081178   0.4198695
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.3864480   0.3808402   0.3920558
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.4940684   0.4609122   0.5272246
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.4891957   0.4603828   0.5180086
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.5188235   0.4800943   0.5575528
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.4808853   0.4492216   0.5125490
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1395349   0.0357438   0.2433259
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1014493   0.0300560   0.1728426
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0833333   0.0337757   0.1328910
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.2877698   0.2518817   0.3236579
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2418301   0.2062182   0.2774419
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                0.3099415   0.2744002   0.3454828
0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                NA                0.3312883   0.2959725   0.3666041
0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                0.3932584   0.2914938   0.4950231
0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 NA                0.4021739   0.3017004   0.5026474
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2806540   0.2605848   0.3007231
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2823529   0.2705443   0.2941616
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.4000000   0.3763202   0.4236798
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3762058   0.3359071   0.4165045
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1445783   0.1306915   0.1584652
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.1371308   0.1141779   0.1600837
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0718133   0.0503677   0.0932589
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0645740   0.0501448   0.0790032
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0836299   0.0607374   0.1065224
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2295082   0.2027423   0.2562741
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2277778   0.1819217   0.2736339
0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0682721   0.0590544   0.0774898
0-6 months    ki1119695-PROBIT            BELARUS                        Other                NA                0.0619480   0.0546175   0.0692784
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1697288   0.1658637   0.1735939
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1770833   0.1702965   0.1838702
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3404255   0.3033562   0.3774948
0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.2866242   0.2492969   0.3239516
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.3191489   0.3086792   0.3296187
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2854311   0.2619319   0.3089304
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2173913   0.0476052   0.3871774
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2500000   0.0588571   0.4411429
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2222222   0.0642749   0.3801695
0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.3909774   0.3503521   0.4316028
0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3237410   0.2839173   0.3635647
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2770833   0.2718028   0.2823639
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2351675   0.2305000   0.2398351
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.2328535   0.2049215   0.2607856
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2555402   0.2312061   0.2798742
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.2776978   0.2387187   0.3166770
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2516026   0.2260057   0.2771994
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                0.0670103   0.0490711   0.0849495
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                NA                0.0855615   0.0658586   0.1052644
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1989011   0.1729625   0.2248397
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1471503   0.1247960   0.1695045
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2009724   0.1827145   0.2192304
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.0624315   0.0513336   0.0735295
6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.0551440   0.0423079   0.0679801
6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.0759494   0.0651005   0.0867983
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3318584   0.3113018   0.3524150
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                NA                0.2564612   0.2363509   0.2765715
6-24 months   ki1000304-EU                INDIA                          Control              NA                0.0440141   0.0271375   0.0608906
6-24 months   ki1000304-EU                INDIA                          Zinc                 NA                0.0511073   0.0332849   0.0689298
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                0.0778499   0.0698877   0.0858120
6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                NA                0.0762868   0.0683655   0.0842081
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                0.0975610   0.0794449   0.1156770
6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                NA                0.1007752   0.0819530   0.1195974
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3310811   0.2892410   0.3729212
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.2905983   0.2733366   0.3078599
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6041667   0.5747185   0.6336148
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.5505618   0.4928784   0.6082452
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                0.1984127   0.1807412   0.2160842
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                NA                0.2533693   0.2202984   0.2864402
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1373391   0.1060790   0.1685991
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1239130   0.1026168   0.1452093
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1496746   0.1170998   0.1822494
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                0.0884495   0.0704954   0.1064037
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 NA                0.0994273   0.0905494   0.1083051
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.1521739   0.1251214   0.1792264
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2366412   0.1826218   0.2906607
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                0.2034429   0.1922177   0.2146681
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  NA                0.1368989   0.1158326   0.1579653
6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.0395951   0.0312588   0.0479314
6-24 months   ki1119695-PROBIT            BELARUS                        Other                NA                0.0365925   0.0324089   0.0407762
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1364796   0.1329770   0.1399821
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                NA                0.1358220   0.1298069   0.1418371
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6071429   0.5815765   0.6327092
6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5244957   0.4953925   0.5535988
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1813725   0.1724689   0.1902762
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2152778   0.1941666   0.2363890
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                0.2371795   0.1899056   0.2844533
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  NA                0.2927632   0.2415648   0.3439615
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                NA                0.2730159   0.2237383   0.3222935
6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3068966   0.2807391   0.3330540
6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3043478   0.2778495   0.3308462
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1903588   0.1849472   0.1957705
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                NA                0.2034943   0.1975196   0.2094691
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                0.3174740   0.2844466   0.3505015
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  NA                0.2879939   0.2595918   0.3163961
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  NA                0.3018576   0.2577327   0.3459825
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                NA                0.2772194   0.2473217   0.3071172


### Parameter: E(Y)


agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.2955466   0.2552689   0.3358242
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3830185   0.3692891   0.3967479
0-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2529456   0.2425399   0.2633512
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.5084058   0.4848071   0.5320045
0-24 months   ki1000304-EU                INDIA                          NA                   NA                0.4677579   0.4459720   0.4895438
0-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.4439740   0.4276115   0.4603366
0-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.4726368   0.4381058   0.5071678
0-24 months   ki1000304-ZnMort            INDIA                          NA                   NA                0.5112967   0.4895784   0.5330149
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.5774499   0.5256850   0.6292149
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.7464115   0.7046540   0.7881689
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.4087363   0.3706499   0.4468228
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2323725   0.2149368   0.2498082
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.3401731   0.3292016   0.3511446
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.4826255   0.4216513   0.5435997
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.3384380   0.2882099   0.3886661
0-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1275769   0.1094011   0.1457528
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3251757   0.3167265   0.3336249
0-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7744000   0.7512197   0.7975803
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4935267   0.4712216   0.5158317
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.4385813   0.4099491   0.4672135
0-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5726190   0.5391450   0.6060930
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4000785   0.3918604   0.4082966
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.4928309   0.4764859   0.5091758
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.0991379   0.0605998   0.1376761
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2636986   0.2130715   0.3143258
0-6 months    ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.3203593   0.2702424   0.3704762
0-6 months    ki1000304-ZnMort            INDIA                          NA                   NA                0.3977901   0.3262889   0.4692912
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.2815657   0.2581773   0.3049540
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3822115   0.3354600   0.4289631
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.1390625   0.1122345   0.1658905
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0711728   0.0605086   0.0818370
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2282158   0.1751196   0.2813119
0-6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0649985   0.0530039   0.0769930
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1752362   0.1674257   0.1830467
0-6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3120805   0.2593852   0.3647759
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2907268   0.2649914   0.3164623
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2285714   0.1294923   0.3276506
0-6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3566176   0.2995882   0.4136471
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2559533   0.2487104   0.2631962
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2519702   0.2379258   0.2660146
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         NA                   NA                0.0761155   0.0494529   0.1027780
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1865271   0.1740180   0.1990362
6-24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.0665791   0.0598872   0.0732711
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.2921466   0.2632899   0.3210033
6-24 months   ki1000304-EU                INDIA                          NA                   NA                0.0476190   0.0353322   0.0599059
6-24 months   ki1000304-VITAMIN-A         INDIA                          NA                   NA                0.0770651   0.0658337   0.0882964
6-24 months   ki1000304-Vitamin-B12       INDIA                          NA                   NA                0.0992064   0.0730819   0.1253308
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3091190   0.2612707   0.3569673
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.5619469   0.4971181   0.6267757
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1337304   0.1182039   0.1492569
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   NA                   NA                0.0974465   0.0894811   0.1054119
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2146893   0.1540271   0.2753514
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   NA                   NA                0.1527830   0.1267871   0.1787788
6-24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1359880   0.1290274   0.1429485
6-24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5614035   0.5225320   0.6002750
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2095710   0.1866479   0.2324940
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         NA                   NA                0.2674544   0.2389815   0.2959272
6-24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3056027   0.2683685   0.3428369
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1970836   0.1890247   0.2051424
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     NA                   NA                0.2949907   0.2786334   0.3113480


### Parameter: RR


agecat        studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.2754696   1.1113792   1.4637871
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8416185   0.7565415   0.9362628
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0168167   0.9332902   1.1078185
0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8608041   0.7634222   0.9706081
0-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.0839118   0.9885872   1.1884281
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.8821592   0.8419918   0.9242428
0-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304-EU                INDIA                          Zinc                 Control           0.9140523   0.8324611   1.0036404
0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9583295   0.9236397   0.9943223
0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           0.9376681   0.8715420   1.0088114
0-24 months   ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
0-24 months   ki1000304-ZnMort            INDIA                          Zinc                 Other             0.9807581   0.9008792   1.0677195
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.9327891   0.8562157   1.0162107
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8928145   0.8440119   0.9444391
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.0591741   0.9648897   1.1626715
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9904856   0.8224695   1.1928245
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0680174   0.8662877   1.3167233
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.2235735   1.1124423   1.3458064
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.2757732   1.1228309   1.4495480
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.8705165   0.7472446   1.0141245
0-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.8496774   0.7453235   0.9686422
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0150695   0.9890334   1.0417909
0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8921250   0.8656300   0.9194309
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9919227   0.9480901   1.0377817
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1057646   0.9417655   1.2983224
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.0630111   0.9031756   1.2511327
0-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0113306   0.9539033   1.0722152
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.9334636   0.9146901   0.9526224
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9901376   0.9055304   1.0826500
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.0501047   0.9498092   1.1609909
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.9733173   0.8859457   1.0693055
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7270531   0.2611306   2.0242986
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.5972222   0.2304307   1.5478597
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.8403595   0.6928805   1.0192293
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304-VITAMIN-A         INDIA                          Other                Control           1.0688737   0.9139661   1.2500365
0-6 months    ki1000304-ZnMort            INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
0-6 months    ki1000304-ZnMort            INDIA                          Zinc                 Other             1.0226708   0.7137148   1.4653690
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0060537   0.9262018   1.0927899
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9405145   0.8321713   1.0629632
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Other                Control           0.9484880   0.7820264   1.1503827
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8991928   0.6192583   1.3056712
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1645463   0.7766428   1.7461926
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.9924603   0.7864488   1.2524369
0-6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT            BELARUS                        Other                Control           0.9073691   0.7585800   1.0853419
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           1.0433312   0.9978404   1.0908958
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8419586   0.7105036   0.9977349
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.8943508   0.8185005   0.9772302
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.1500000   0.3855072   3.4305454
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.0222222   0.3555686   2.9387810
0-6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8280299   0.7048790   0.9726967
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           0.8487249   0.8256789   0.8724143
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           1.0974289   0.9415865   1.2790647
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           1.1925860   0.9915321   1.4344078
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           1.0805186   0.9232043   1.2646394
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Other                Control           1.2768408   0.8969688   1.8175909
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7398162   0.6055822   0.9038047
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0104140   0.8619361   1.1844687
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8832720   0.6590148   1.1838419
6-24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.2165223   0.9684613   1.5281215
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Other                Control           0.7728032   0.6993105   0.8540194
6-24 months   ki1000304-EU                INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304-EU                INDIA                          Zinc                 Control           1.1611584   0.6915089   1.9497780
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304-VITAMIN-A         INDIA                          Other                Control           0.9799217   0.8470211   1.1336748
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304-Vitamin-B12       INDIA                          Other                Control           1.0329457   0.7937730   1.3441839
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8777254   0.7632755   1.0093367
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.9112747   0.8118289   1.0229022
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Other                Control           1.2769811   1.0903323   1.4955815
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9022418   0.6783561   1.2000192
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.0898183   0.7954024   1.4932115
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc                 Control           1.1241129   0.9005370   1.4031960
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           1.5550709   1.1643798   2.0768528
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   LNS                  Control           0.6729108   0.5707748   0.7933235
6-24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT            BELARUS                        Other                Control           0.9241689   0.7279079   1.1733465
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Other                Control           0.9951815   0.9455247   1.0474462
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8638752   0.8057482   0.9261955
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1869369   1.0636540   1.3245090
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         LNS                  Control           1.2343528   0.9468508   1.6091519
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Other                Control           1.1510940   0.8796921   1.5062284
6-24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.9916952   0.8779377   1.1201926
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Other                Control           1.0690039   1.0261886   1.1136056
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     LNS                  Control           0.9071416   0.7860050   1.0469475
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     MMN                  Control           0.9508103   0.7946450   1.1376655
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Other                Control           0.8732034   0.7516831   1.0143693


### Parameter: PAR


agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0362873    0.0065182    0.0660564
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0123897   -0.0366423    0.0118629
0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0015319   -0.0128596    0.0159234
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0329116   -0.0499143   -0.0159088
0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0205689   -0.0419252    0.0007874
0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0093518   -0.0208417    0.0021380
0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0150479   -0.0393135    0.0092177
0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0049916   -0.0268167    0.0168335
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0216389   -0.0617279    0.0184501
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0649093   -0.1021393   -0.0276792
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0171701   -0.0156971    0.0500372
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0028351   -0.0273404    0.0330107
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0532811    0.0298518    0.0767104
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0826255    0.0295120    0.1357389
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0367189   -0.0855039    0.0120662
0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0108043   -0.0222277    0.0006192
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0036269   -0.0036901    0.0109439
0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0452721   -0.0630338   -0.0275104
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0033483   -0.0237213    0.0170246
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0231967   -0.0168012    0.0631946
0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0032411   -0.0204628    0.0269449
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0139152   -0.0197023   -0.0081280
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0012375   -0.0293165    0.0268415
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0403970   -0.1313062    0.0505123
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0240712   -0.0597804    0.0116381
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0104178   -0.0249166    0.0457522
0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                 0.0045316   -0.0681599    0.0772231
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0009117   -0.0109514    0.0127748
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0177885   -0.0580994    0.0225225
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0055158   -0.0284701    0.0174384
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0006405   -0.0191958    0.0179148
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0012924   -0.0471486    0.0445638
0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0032736   -0.0107342    0.0041869
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0055074   -0.0012797    0.0122946
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0283450   -0.0657972    0.0091072
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0284221   -0.0519316   -0.0049126
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0111801   -0.1291777    0.1515380
0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0343598   -0.0743841    0.0056645
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0211300   -0.0261444   -0.0161156
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0191167   -0.0048195    0.0430529
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.0091052   -0.0106198    0.0288302
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0123740   -0.0347492    0.0100012
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0041476   -0.0049951    0.0132903
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0397118   -0.0599635   -0.0194601
6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0036050   -0.0088711    0.0160810
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0007848   -0.0087062    0.0071366
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0016454   -0.0171773    0.0204681
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0219621   -0.0443255    0.0004014
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0422198   -0.0999742    0.0155347
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0410239    0.0078862    0.0741617
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0036087   -0.0305377    0.0233203
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0089970   -0.0074187    0.0254126
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.0625154    0.0082193    0.1168114
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.0506599   -0.0751271   -0.0261928
6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0015653   -0.0058429    0.0027123
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0004916   -0.0065067    0.0055235
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0457393   -0.0750199   -0.0164588
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0281984    0.0070751    0.0493217
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0302749   -0.0090652    0.0696149
6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0012938   -0.0277924    0.0252047
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0067247    0.0007545    0.0126950
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0224833   -0.0502790    0.0053124


### Parameter: PAF


agecat        studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.1227803    0.0290264    0.2074816
0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0323475   -0.0976526    0.0290722
0-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0060563   -0.0524991    0.0613539
0-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0647348   -0.1010081   -0.0296566
0-24 months   ki1000304-EU                INDIA                          Control              NA                -0.0439734   -0.0906833    0.0007360
0-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0210639   -0.0478396    0.0050275
0-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                -0.0318382   -0.0862244    0.0198249
0-24 months   ki1000304-ZnMort            INDIA                          Other                NA                -0.0097626   -0.0533659    0.0320357
0-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0374732   -0.1121124    0.0321567
0-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0869618   -0.1426000   -0.0340328
0-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.0420077   -0.0382354    0.1160490
0-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0122008   -0.1265785    0.1338844
0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.1566293    0.0848905    0.2227443
0-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.1712000    0.0740930    0.2581226
0-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.1084951   -0.2803767    0.0403126
0-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0846882   -0.1873512    0.0090981
0-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0111536   -0.0113499    0.0331564
0-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0584609   -0.0830450   -0.0344348
0-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0067845   -0.0492149    0.0339300
0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0528903   -0.0428796    0.1398654
0-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0056601   -0.0363657    0.0459816
0-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0347811   -0.0498632   -0.0199157
0-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0025110   -0.0611320    0.0528715
0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.4074823   -1.6820318    0.2613785
0-6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0912828   -0.2501312    0.0473814
0-6 months    ki1000304-VITAMIN-A         INDIA                          Control              NA                 0.0325190   -0.0803658    0.1336087
0-6 months    ki1000304-ZnMort            INDIA                          Other                NA                 0.0113920   -0.1893302    0.1782385
0-6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0032380   -0.0396542    0.0443606
0-6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0465409   -0.1629897    0.0582480
0-6 months    ki1017093b-PROVIDE          BANGLADESH                     Control              NA                -0.0396643   -0.2263057    0.1185707
0-6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0089992   -0.3064828    0.2207479
0-6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0056632   -0.2294683    0.1774018
0-6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0503644   -0.1785428    0.0638733
0-6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0314286   -0.0068281    0.0682317
0-6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0908259   -0.2304131    0.0329255
0-6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0977623   -0.1902960   -0.0124221
0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.0489130   -0.8136265    0.5012389
0-6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0963491   -0.2271130    0.0204803
0-6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0825542   -0.1040228   -0.0615031
0-6 months    kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                 0.0758689   -0.0243553    0.1662871
6-24 months   ki1000107-Serrinha-VitA     BRAZIL                         Control              NA                 0.1196232   -0.1430630    0.3219417
6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0663388   -0.1932560    0.0470792
6-24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0622958   -0.0854454    0.1899278
6-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.1359311   -0.2180881   -0.0593154
6-24 months   ki1000304-EU                INDIA                          Control              NA                 0.0757042   -0.2263192    0.3033439
6-24 months   ki1000304-VITAMIN-A         INDIA                          Control              NA                -0.0101835   -0.1195485    0.0884980
6-24 months   ki1000304-Vitamin-B12       INDIA                          Control              NA                 0.0165854   -0.1889057    0.1865592
6-24 months   ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0710473   -0.1522562    0.0044382
6-24 months   ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0751312   -0.1915841    0.0299408
6-24 months   ki1017093b-PROVIDE          BANGLADESH                     Control              NA                 0.1713352    0.0475350    0.2790440
6-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0269848   -0.2494303    0.1558571
6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Control              NA                 0.0923272   -0.0926128    0.2459634
6-24 months   ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                 0.2911899    0.0824233    0.4524581
6-24 months   ki1112895-iLiNS-Zinc        BURKINA FASO                   Control              NA                -0.3315809   -0.5619367   -0.1351982
6-24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0411590   -0.1656765    0.0700576
6-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0036151   -0.0490041    0.0398100
6-24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0814732   -0.1395039   -0.0263978
6-24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1345530    0.0425675    0.2177010
6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         Control              NA                 0.1131964   -0.0465946    0.2485909
6-24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0042337   -0.0951974    0.0791748
6-24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0341212    0.0043991    0.0629561
6-24 months   kiGH5241-JiVitA-4           BANGLADESH                     Control              NA                -0.0762171   -0.1745371    0.0138727
