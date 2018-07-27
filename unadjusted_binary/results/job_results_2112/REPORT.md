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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth     stunted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)          0      109     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)          1       38     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259               0       26     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259               1       21     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)          0       51     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)          1       23     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287              0       60     347
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287              1       19     347
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)          0       43     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)          1      105     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259               0       11     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259               1       36     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)          0       16     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)          1       59     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287              0       31     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287              1       49     350
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)          0       28      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)          1        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <259               0        6      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <259               1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)          0       19      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)          1        3      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=287              0       21      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=287              1        5      90
6 months    ki1000108-IRC              INDIA                          [273-287)          0      131     388
6 months    ki1000108-IRC              INDIA                          [273-287)          1       34     388
6 months    ki1000108-IRC              INDIA                          <259               0       21     388
6 months    ki1000108-IRC              INDIA                          <259               1       19     388
6 months    ki1000108-IRC              INDIA                          [259-273)          0       70     388
6 months    ki1000108-IRC              INDIA                          [259-273)          1       21     388
6 months    ki1000108-IRC              INDIA                          >=287              0       74     388
6 months    ki1000108-IRC              INDIA                          >=287              1       18     388
24 months   ki1000108-IRC              INDIA                          [273-287)          0      105     390
24 months   ki1000108-IRC              INDIA                          [273-287)          1       60     390
24 months   ki1000108-IRC              INDIA                          <259               0       17     390
24 months   ki1000108-IRC              INDIA                          <259               1       23     390
24 months   ki1000108-IRC              INDIA                          [259-273)          0       51     390
24 months   ki1000108-IRC              INDIA                          [259-273)          1       41     390
24 months   ki1000108-IRC              INDIA                          >=287              0       55     390
24 months   ki1000108-IRC              INDIA                          >=287              1       38     390
Birth       ki1000108-IRC              INDIA                          [273-287)          0      141     369
Birth       ki1000108-IRC              INDIA                          [273-287)          1       14     369
Birth       ki1000108-IRC              INDIA                          <259               0       27     369
Birth       ki1000108-IRC              INDIA                          <259               1        9     369
Birth       ki1000108-IRC              INDIA                          [259-273)          0       80     369
Birth       ki1000108-IRC              INDIA                          [259-273)          1        7     369
Birth       ki1000108-IRC              INDIA                          >=287              0       77     369
Birth       ki1000108-IRC              INDIA                          >=287              1       14     369
6 months    ki1000109-EE               PAKISTAN                       [273-287)          0       15     372
6 months    ki1000109-EE               PAKISTAN                       [273-287)          1        9     372
6 months    ki1000109-EE               PAKISTAN                       <259               0      105     372
6 months    ki1000109-EE               PAKISTAN                       <259               1      134     372
6 months    ki1000109-EE               PAKISTAN                       [259-273)          0       58     372
6 months    ki1000109-EE               PAKISTAN                       [259-273)          1       50     372
6 months    ki1000109-EE               PAKISTAN                       >=287              0        1     372
6 months    ki1000109-EE               PAKISTAN                       >=287              1        0     372
Birth       ki1000109-EE               PAKISTAN                       <259               0        0       2
Birth       ki1000109-EE               PAKISTAN                       <259               1        1       2
Birth       ki1000109-EE               PAKISTAN                       [259-273)          0        1       2
Birth       ki1000109-EE               PAKISTAN                       [259-273)          1        0       2
6 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)          0       36    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)          1        2    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          <259               0      744    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          <259               1      314    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)          0      167    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)          1       61    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=287              0        3    1327
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=287              1        0    1327
Birth       ki1000304b-SAS-CompFeed    INDIA                          [273-287)          0        4     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [273-287)          1        0     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <259               0      112     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          <259               1       39     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [259-273)          0       25     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          [259-273)          1        7     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)          0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)          1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <259               0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <259               1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)          0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)          1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=287              0        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=287              1        0      27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)          0      200     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)          1       33     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259               0       90     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259               1       57     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)          0      256     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)          1       60     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287              0       19     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287              1        0     715
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)          0      129     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)          1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259               0       68     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259               1       39     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)          0      172     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)          1       62     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287              0       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287              1        3     514
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)          0      665    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)          1       70    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259               0      237    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259               1       35    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)          0      363    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)          1       44    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287              0      456    1903
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287              1       33    1903
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)          0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)          1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)          0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287              1        0       6
Birth       ki1101329-Keneba           GAMBIA                         [273-287)          0      572    1515
Birth       ki1101329-Keneba           GAMBIA                         [273-287)          1       20    1515
Birth       ki1101329-Keneba           GAMBIA                         <259               0      133    1515
Birth       ki1101329-Keneba           GAMBIA                         <259               1       28    1515
Birth       ki1101329-Keneba           GAMBIA                         [259-273)          0      560    1515
Birth       ki1101329-Keneba           GAMBIA                         [259-273)          1       32    1515
Birth       ki1101329-Keneba           GAMBIA                         >=287              0      168    1515
Birth       ki1101329-Keneba           GAMBIA                         >=287              1        2    1515
6 months    ki1101329-Keneba           GAMBIA                         [273-287)          0      466    1374
6 months    ki1101329-Keneba           GAMBIA                         [273-287)          1       60    1374
6 months    ki1101329-Keneba           GAMBIA                         <259               0      110    1374
6 months    ki1101329-Keneba           GAMBIA                         <259               1       33    1374
6 months    ki1101329-Keneba           GAMBIA                         [259-273)          0      476    1374
6 months    ki1101329-Keneba           GAMBIA                         [259-273)          1       72    1374
6 months    ki1101329-Keneba           GAMBIA                         >=287              0      141    1374
6 months    ki1101329-Keneba           GAMBIA                         >=287              1       16    1374
24 months   ki1101329-Keneba           GAMBIA                         [273-287)          0      287    1156
24 months   ki1101329-Keneba           GAMBIA                         [273-287)          1      150    1156
24 months   ki1101329-Keneba           GAMBIA                         <259               0       68    1156
24 months   ki1101329-Keneba           GAMBIA                         <259               1       45    1156
24 months   ki1101329-Keneba           GAMBIA                         [259-273)          0      314    1156
24 months   ki1101329-Keneba           GAMBIA                         [259-273)          1      150    1156
24 months   ki1101329-Keneba           GAMBIA                         >=287              0      103    1156
24 months   ki1101329-Keneba           GAMBIA                         >=287              1       39    1156
6 months    ki1113344-GMS-Nepal        NEPAL                          <259               0        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          <259               1        1     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)          0      441     563
6 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)          1      117     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=287              0        3     563
6 months    ki1113344-GMS-Nepal        NEPAL                          >=287              1        1     563
24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)          0      273     499
24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)          1      223     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=287              0        3     499
24 months   ki1113344-GMS-Nepal        NEPAL                          >=287              1        0     499
Birth       ki1119695-PROBIT           BELARUS                        [273-287)          0    10183   13884
Birth       ki1119695-PROBIT           BELARUS                        [273-287)          1        9   13884
Birth       ki1119695-PROBIT           BELARUS                        [259-273)          0     2558   13884
Birth       ki1119695-PROBIT           BELARUS                        [259-273)          1       24   13884
Birth       ki1119695-PROBIT           BELARUS                        >=287              0     1110   13884
Birth       ki1119695-PROBIT           BELARUS                        >=287              1        0   13884
6 months    ki1119695-PROBIT           BELARUS                        [273-287)          0    10829   15761
6 months    ki1119695-PROBIT           BELARUS                        [273-287)          1      684   15761
6 months    ki1119695-PROBIT           BELARUS                        [259-273)          0     2700   15761
6 months    ki1119695-PROBIT           BELARUS                        [259-273)          1      245   15761
6 months    ki1119695-PROBIT           BELARUS                        >=287              0     1244   15761
6 months    ki1119695-PROBIT           BELARUS                        >=287              1       59   15761
24 months   ki1119695-PROBIT           BELARUS                        [273-287)          0     2675    4035
24 months   ki1119695-PROBIT           BELARUS                        [273-287)          1      248    4035
24 months   ki1119695-PROBIT           BELARUS                        [259-273)          0      731    4035
24 months   ki1119695-PROBIT           BELARUS                        [259-273)          1       78    4035
24 months   ki1119695-PROBIT           BELARUS                        >=287              0      285    4035
24 months   ki1119695-PROBIT           BELARUS                        >=287              1       18    4035
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)          0      174     713
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)          1      118     713
6 months    ki1135781-COHORTS          GUATEMALA                      <259               0       38     713
6 months    ki1135781-COHORTS          GUATEMALA                      <259               1       50     713
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)          0       51     713
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)          1       56     713
6 months    ki1135781-COHORTS          GUATEMALA                      >=287              0      151     713
6 months    ki1135781-COHORTS          GUATEMALA                      >=287              1       75     713
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)          0       52     663
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)          1      216     663
24 months   ki1135781-COHORTS          GUATEMALA                      <259               0       15     663
24 months   ki1135781-COHORTS          GUATEMALA                      <259               1       67     663
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)          0       17     663
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)          1       80     663
24 months   ki1135781-COHORTS          GUATEMALA                      >=287              0       52     663
24 months   ki1135781-COHORTS          GUATEMALA                      >=287              1      164     663
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)          0      238     617
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)          1       12     617
Birth       ki1135781-COHORTS          GUATEMALA                      <259               0       66     617
Birth       ki1135781-COHORTS          GUATEMALA                      <259               1       10     617
Birth       ki1135781-COHORTS          GUATEMALA                      [259-273)          0       83     617
Birth       ki1135781-COHORTS          GUATEMALA                      [259-273)          1        7     617
Birth       ki1135781-COHORTS          GUATEMALA                      >=287              0      195     617
Birth       ki1135781-COHORTS          GUATEMALA                      >=287              1        6     617
Birth       ki1135781-COHORTS          INDIA                          [273-287)          0      467    1293
Birth       ki1135781-COHORTS          INDIA                          [273-287)          1       43    1293
Birth       ki1135781-COHORTS          INDIA                          <259               0      151    1293
Birth       ki1135781-COHORTS          INDIA                          <259               1       30    1293
Birth       ki1135781-COHORTS          INDIA                          [259-273)          0      257    1293
Birth       ki1135781-COHORTS          INDIA                          [259-273)          1       32    1293
Birth       ki1135781-COHORTS          INDIA                          >=287              0      294    1293
Birth       ki1135781-COHORTS          INDIA                          >=287              1       19    1293
6 months    ki1135781-COHORTS          INDIA                          [273-287)          0      445    1312
6 months    ki1135781-COHORTS          INDIA                          [273-287)          1       75    1312
6 months    ki1135781-COHORTS          INDIA                          <259               0      145    1312
6 months    ki1135781-COHORTS          INDIA                          <259               1       50    1312
6 months    ki1135781-COHORTS          INDIA                          [259-273)          0      246    1312
6 months    ki1135781-COHORTS          INDIA                          [259-273)          1       46    1312
6 months    ki1135781-COHORTS          INDIA                          >=287              0      254    1312
6 months    ki1135781-COHORTS          INDIA                          >=287              1       51    1312
24 months   ki1135781-COHORTS          INDIA                          [273-287)          0      296    1308
24 months   ki1135781-COHORTS          INDIA                          [273-287)          1      219    1308
24 months   ki1135781-COHORTS          INDIA                          <259               0       89    1308
24 months   ki1135781-COHORTS          INDIA                          <259               1      107    1308
24 months   ki1135781-COHORTS          INDIA                          [259-273)          0      167    1308
24 months   ki1135781-COHORTS          INDIA                          [259-273)          1      128    1308
24 months   ki1135781-COHORTS          INDIA                          >=287              0      157    1308
24 months   ki1135781-COHORTS          INDIA                          >=287              1      145    1308
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)          0     1141    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)          1       37    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    <259               0      383    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    <259               1       76    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)          0      770    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)          1       63    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287              0      545    3024
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287              1        9    3024
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)          0      880    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)          1      170    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    <259               0      275    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    <259               1      129    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)          0      557    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)          1      183    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287              0      407    2687
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287              1       86    2687
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)          0      392    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)          1      566    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    <259               0      121    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    <259               1      238    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)          0      225    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)          1      434    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287              0      189    2424
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287              1      259    2424
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)          0     4891   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)          1     1546   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259               0     1687   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259               1     1880   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)          0     3066   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)          1     1754   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287              0     2881   18434
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287              1      729   18434
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)          0     3409   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)          1      997   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259               0     1440   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259               1      810   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)          0     2348   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)          1      916   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287              0     2060   12482
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287              1      502   12482
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)          0     1185    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)          1     1103    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259               0      522    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259               1      696    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)          0      837    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)          1      854    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287              0      699    6493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287              1      597    6493


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d290fa44-caa1-41bc-981a-e41f97bef833/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d290fa44-caa1-41bc-981a-e41f97bef833/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d290fa44-caa1-41bc-981a-e41f97bef833/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d290fa44-caa1-41bc-981a-e41f97bef833/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                0.0903226   0.0451356   0.1355096
Birth       ki1000108-IRC              INDIA                          <259                 NA                0.2500000   0.1083597   0.3916403
Birth       ki1000108-IRC              INDIA                          [259-273)            NA                0.0804598   0.0232260   0.1376936
Birth       ki1000108-IRC              INDIA                          >=287                NA                0.1538462   0.0796153   0.2280770
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.0480000   0.0214803   0.0745197
Birth       ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.1315789   0.0555197   0.2076382
Birth       ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.0777778   0.0224014   0.1331542
Birth       ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.0298507   0.0063057   0.0533958
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0843137   0.0601895   0.1084380
Birth       ki1135781-COHORTS          INDIA                          <259                 NA                0.1657459   0.1115523   0.2199394
Birth       ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1107266   0.0745348   0.1469185
Birth       ki1135781-COHORTS          INDIA                          >=287                NA                0.0607029   0.0342392   0.0871665
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0314092   0.0214472   0.0413711
Birth       ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.1655773   0.1315673   0.1995874
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.0756303   0.0576718   0.0935887
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0162455   0.0057168   0.0267742
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2401740   0.2285553   0.2517927
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.5270535   0.5088558   0.5452513
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.3639004   0.3486272   0.3791736
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2019391   0.1871108   0.2167673
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.2585034   0.1876266   0.3293802
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.4468085   0.3044694   0.5891476
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.3108108   0.2052078   0.4164138
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.2405063   0.1461249   0.3348878
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.2060606   0.1442650   0.2678562
6 months    ki1000108-IRC              INDIA                          <259                 NA                0.4750000   0.3200452   0.6299548
6 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.2307692   0.1440920   0.3174465
6 months    ki1000108-IRC              INDIA                          >=287                NA                0.1956522   0.1144853   0.2768191
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0952381   0.0740110   0.1164652
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1286765   0.0888734   0.1684796
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.1081081   0.0779329   0.1382833
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0674847   0.0452445   0.0897248
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.1140684   0.0868918   0.1412451
6 months    ki1101329-Keneba           GAMBIA                         <259                 NA                0.2307692   0.1616887   0.2998497
6 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.1313869   0.1030922   0.1596816
6 months    ki1101329-Keneba           GAMBIA                         >=287                NA                0.1019108   0.0545710   0.1492506
6 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                0.0594111   0.0454437   0.0733785
6 months    ki1119695-PROBIT           BELARUS                        [259-273)            NA                0.0831919   0.0628119   0.1035718
6 months    ki1119695-PROBIT           BELARUS                        >=287                NA                0.0452801   0.0247572   0.0658031
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.4041096   0.3477855   0.4604337
6 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.5681818   0.4646186   0.6717451
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.5233645   0.4286631   0.6180659
6 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.3318584   0.2704243   0.3932925
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.1442308   0.1140230   0.1744386
6 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.2564103   0.1951003   0.3177202
6 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1575342   0.1157333   0.1993352
6 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.1672131   0.1253178   0.2091085
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.1619048   0.1396199   0.1841897
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.3193069   0.2738377   0.3647762
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.2472973   0.2162063   0.2783883
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.1744422   0.1409375   0.2079468
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2262823   0.2124279   0.2401368
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.3600000   0.3385757   0.3814243
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.2806373   0.2636066   0.2976679
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.1959407   0.1794681   0.2124132
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.7094595   0.6362098   0.7827091
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.7659574   0.6447386   0.8871763
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.7866667   0.6938206   0.8795127
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.6125000   0.5055912   0.7194088
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.3636364   0.2901427   0.4371300
24 months   ki1000108-IRC              INDIA                          <259                 NA                0.5750000   0.4216075   0.7283925
24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.4456522   0.3439569   0.5473475
24 months   ki1000108-IRC              INDIA                          >=287                NA                0.4086022   0.3085666   0.5086377
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.3432494   0.2987145   0.3877843
24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.3982301   0.3079319   0.4885283
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.3232759   0.2806994   0.3658523
24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.2746479   0.2012042   0.3480916
24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                0.0848443   0.0527869   0.1169018
24 months   ki1119695-PROBIT           BELARUS                        [259-273)            NA                0.0964153   0.0522813   0.1405494
24 months   ki1119695-PROBIT           BELARUS                        >=287                NA                0.0594059   0.0310353   0.0877766
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.8059701   0.7585894   0.8533509
24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.8170732   0.7333322   0.9008142
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.8247423   0.7490263   0.9004583
24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.7592593   0.7022010   0.8163176
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.4252427   0.3825286   0.4679568
24 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.5459184   0.4761888   0.6156479
24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.4338983   0.3773207   0.4904759
24 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.4801325   0.4237638   0.5365011
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.5908142   0.5596726   0.6219558
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.6629526   0.6140450   0.7118603
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.6585736   0.6223622   0.6947850
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.5781250   0.5323844   0.6238656
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.4820804   0.4597729   0.5043880
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.5714286   0.5393357   0.6035215
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.5050266   0.4791426   0.5309107
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.4606481   0.4263473   0.4949490


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1192412   0.0861307   0.1523517
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0567261   0.0384591   0.0749931
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0959010   0.0798450   0.1119570
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611772   0.0526341   0.0697204
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3205490   0.3127517   0.3283463
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2910663   0.2432023   0.3389303
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2371134   0.1947393   0.2794875
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0956385   0.0824215   0.1088554
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496211
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4193548   0.3831093   0.4556004
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1692073   0.1489117   0.1895030
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2113882   0.1959475   0.2268289
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2583721   0.2489533   0.2677908
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7114286   0.6638920   0.7589651
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4153846   0.3664142   0.4643550
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3321799   0.3050172   0.3593427
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7948718   0.7641122   0.8256314
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4579511   0.4309402   0.4849620
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6175743   0.5982239   0.6369246
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5005390   0.4858066   0.5152715


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          <259                 [273-287)         2.7678571   1.2998454   5.8938031
Birth       ki1000108-IRC              INDIA                          [259-273)            [273-287)         0.8908046   0.3733368   2.1255147
Birth       ki1000108-IRC              INDIA                          >=287                [273-287)         1.7032967   0.8500311   3.4130745
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         2.7412281   1.2321811   6.0983984
Birth       ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.6203704   0.6580006   3.9902702
Birth       ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.6218905   0.2374016   1.6290872
Birth       ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.9658229   1.2730663   3.0355526
Birth       ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.3132695   0.8505432   2.0277356
Birth       ki1135781-COHORTS          INDIA                          >=287                [273-287)         0.7199643   0.4274080   1.2127725
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         5.2716246   3.6127475   7.6922136
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         2.4079037   1.6202038   3.5785622
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.5172213   0.2513696   1.0642408
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         2.1944655   2.0699814   2.3264358
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.5151533   1.4217496   1.6146932
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8408032   0.7723240   0.9153541
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.7284434   1.1353153   2.6314423
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.2023471   0.7769955   1.8605494
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.9303797   0.5764396   1.5016431
6 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          <259                 [273-287)         2.3051471   1.4799759   3.5903983
6 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.1199095   0.6925410   1.8110080
6 months    ki1000108-IRC              INDIA                          >=287                [273-287)         0.9494885   0.5690838   1.5841752
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.3511029   0.9228017   1.9781923
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.1351351   0.7941840   1.6224599
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7085890   0.4760024   1.0548231
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)         2.0230769   1.3799309   2.9659748
6 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.1518248   0.8354319   1.5880414
6 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.8934183   0.5300644   1.5058475
6 months    ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)         1.4002745   1.0990659   1.7840320
6 months    ki1119695-PROBIT           BELARUS                        >=287                [273-287)         0.7621492   0.5462425   1.0633947
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.4060092   1.1177317   1.7686373
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.2951053   1.0306487   1.6274195
6 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.8212089   0.6513539   1.0353574
6 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.7777778   1.2936902   2.4430068
6 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.0922374   0.7789447   1.5315370
6 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.1593443   0.8363527   1.6070722
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.9721899   1.6178472   2.4041410
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.5274245   1.2676503   1.8404330
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0774371   0.8506882   1.3646252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.5909328   1.4658285   1.7267144
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.2402084   1.1424853   1.3462902
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8659123   0.7828912   0.9577374
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.0796353   0.8937440   1.3041903
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.1088254   0.9478964   1.2970761
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.8633333   0.7048645   1.0574293
24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.5812500   1.1314857   2.2097950
24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.2255435   0.9035321   1.6623170
24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.1236559   0.8180099   1.5435053
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.1601770   0.8934436   1.5065424
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         0.9418103   0.7828389   1.1330641
24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.8001408   0.5944068   1.0770829
24 months   ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)         1.1363790   0.7878898   1.6390075
24 months   ki1119695-PROBIT           BELARUS                        >=287                [273-287)         0.7001757   0.3788761   1.2939479
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.0137760   0.9008016   1.1409190
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0232913   0.9176029   1.1411528
24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9420439   0.8563163   1.0363538
24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.2837806   1.0912412   1.5102918
24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.0203545   0.8655014   1.2029135
24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.1290786   0.9674357   1.3177293
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.1221001   1.0248374   1.2285935
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.1146882   1.0329372   1.2029093
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9785225   0.8897806   1.0761151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.1853387   1.1021784   1.2747735
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.0475983   0.9807807   1.1189680
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.9555421   0.8773241   1.0407337


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                 0.0289186   -0.0088012   0.0666384
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0087261   -0.0128852   0.0303374
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0115873   -0.0079235   0.0310981
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0297681    0.0200261   0.0395101
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0803750    0.0707851   0.0899649
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0325629   -0.0227385   0.0878642
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0310528   -0.0175929   0.0796985
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0004004   -0.0162493   0.0170501
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0176637   -0.0045422   0.0398696
6 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0032753   -0.0002990   0.0068496
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0152452   -0.0282025   0.0586930
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0249765    0.0004594   0.0494937
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0494834    0.0308580   0.0681088
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0320897    0.0212426   0.0429369
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0019691   -0.0535966   0.0575348
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0517483   -0.0050767   0.1085732
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0110695   -0.0460215   0.0238825
24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0004097   -0.0078670   0.0086864
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0110984   -0.0481952   0.0259985
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0327084   -0.0007186   0.0661353
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0267601    0.0027251   0.0507950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0184586    0.0006790   0.0362383


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                 0.2425220   -0.1414049   0.4973099
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.1538286   -0.3228265   0.4587302
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1208254   -0.1070545   0.3017978
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.4865874    0.3189257   0.6129755
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.2507417    0.2203267   0.2799702
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.1118745   -0.0996755   0.2827275
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.1309618   -0.0996579   0.3132160
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0041863   -0.1860470   0.1639075
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1340882   -0.0511242   0.2866654
6 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0522486   -0.0066243   0.1076783
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0363541   -0.0730476   0.1346018
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1476091   -0.0094900   0.2802602
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.2340879    0.1418123   0.3164416
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.1241996    0.0812738   0.1651198
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0027678   -0.0784775   0.0778927
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.1245791   -0.0237145   0.2513911
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0333238   -0.1440887   0.0667174
24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0048055   -0.0974511   0.0975342
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0139624   -0.0617459   0.0316705
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0714232   -0.0045896   0.1416845
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0433309    0.0035586   0.0815157
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0368775    0.0007526   0.0716964
