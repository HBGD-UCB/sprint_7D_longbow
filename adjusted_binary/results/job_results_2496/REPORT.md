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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_brthmon
* delta_W_parity

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



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```




# Results Detail

## Results Plots
![](/tmp/64285f06-ed37-409d-b375-53a5771ade44/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/64285f06-ed37-409d-b375-53a5771ade44/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/64285f06-ed37-409d-b375-53a5771ade44/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/64285f06-ed37-409d-b375-53a5771ade44/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                0.0904595    0.0462583   0.1346606
Birth       ki1000108-IRC              INDIA                          <259                 NA                0.2753930    0.1454005   0.4053855
Birth       ki1000108-IRC              INDIA                          [259-273)            NA                0.0798737    0.0246718   0.1350756
Birth       ki1000108-IRC              INDIA                          >=287                NA                0.1568610    0.0869016   0.2268205
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.0428283    0.0169493   0.0687073
Birth       ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.0908897    0.0199471   0.1618323
Birth       ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.0458570   -0.0059475   0.0976614
Birth       ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.0272163    0.0039406   0.0504920
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0810328    0.0578200   0.1042456
Birth       ki1135781-COHORTS          INDIA                          <259                 NA                0.1514585    0.1033563   0.1995607
Birth       ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1016470    0.0681855   0.1351085
Birth       ki1135781-COHORTS          INDIA                          >=287                NA                0.0574830    0.0326713   0.0822947
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0314355    0.0218526   0.0410185
Birth       ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.1487337    0.1191711   0.1782962
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.0691048    0.0525004   0.0857091
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0152193    0.0056222   0.0248163
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2418581    0.2305575   0.2531587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.5217759    0.5051965   0.5383554
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.3663820    0.3519415   0.3808224
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2044122    0.1904977   0.2183268
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.2546227    0.1849138   0.3243316
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.4347570    0.2998011   0.5697128
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.3075275    0.2042931   0.4107618
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.2283639    0.1360305   0.3206973
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.2002213    0.1402624   0.2601802
6 months    ki1000108-IRC              INDIA                          <259                 NA                0.4411555    0.3103981   0.5719128
6 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.2156920    0.1340355   0.2973484
6 months    ki1000108-IRC              INDIA                          >=287                NA                0.1857587    0.1091755   0.2623419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0940143    0.0732265   0.1148021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1255688    0.0886287   0.1625088
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.1074733    0.0784119   0.1365347
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0685723    0.0470875   0.0900572
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.1063469    0.0808234   0.1318704
6 months    ki1101329-Keneba           GAMBIA                         <259                 NA                0.1791647    0.1245129   0.2338165
6 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.1333560    0.1067659   0.1599460
6 months    ki1101329-Keneba           GAMBIA                         >=287                NA                0.0802354    0.0404850   0.1199859
6 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                0.0596321    0.0455811   0.0736832
6 months    ki1119695-PROBIT           BELARUS                        [259-273)            NA                0.0844410    0.0643314   0.1045505
6 months    ki1119695-PROBIT           BELARUS                        >=287                NA                0.0448914    0.0262895   0.0634934
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.3821751    0.3292348   0.4351154
6 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.5174627    0.4251101   0.6098153
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.4577272    0.3704001   0.5450543
6 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.3129383    0.2545565   0.3713200
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.1388288    0.1091434   0.1685142
6 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.2302126    0.1717224   0.2887028
6 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1456139    0.1053561   0.1858718
6 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.1569814    0.1161074   0.1978554
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.1655803    0.1440746   0.1870859
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.3081621    0.2669224   0.3494017
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.2411423    0.2119173   0.2703672
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.1757826    0.1446675   0.2068977
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2298043    0.2166234   0.2429853
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.3399112    0.3208161   0.3590062
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.2791185    0.2629740   0.2952630
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2011280    0.1856247   0.2166314
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.7108660    0.6385189   0.7832130
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.7819410    0.6664218   0.8974601
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.7910356    0.7009469   0.8811243
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.6170829    0.5145347   0.7196311
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.3635018    0.2906523   0.4363513
24 months   ki1000108-IRC              INDIA                          <259                 NA                0.5790928    0.4325822   0.7256035
24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.4549975    0.3558482   0.5541468
24 months   ki1000108-IRC              INDIA                          >=287                NA                0.4064283    0.3085684   0.5042881
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.3313335    0.2888499   0.3738170
24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.3810620    0.3061035   0.4560205
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.3309257    0.2902865   0.3715649
24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.2484683    0.1832006   0.3137361
24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                0.0856130    0.0522069   0.1190190
24 months   ki1119695-PROBIT           BELARUS                        [259-273)            NA                0.1005000    0.0650364   0.1359637
24 months   ki1119695-PROBIT           BELARUS                        >=287                NA                0.0615236    0.0397707   0.0832764
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.8088021    0.7661941   0.8514101
24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.8667985    0.8123331   0.9212640
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.8469584    0.7887947   0.9051221
24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.7810305    0.7318960   0.8301649
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.4194769    0.3789768   0.4599769
24 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.5416416    0.4792120   0.6040711
24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.4168813    0.3629713   0.4707913
24 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.4625938    0.4096169   0.5155707
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.5980952    0.5690626   0.6271278
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.6465779    0.6047369   0.6884190
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.6446345    0.6113668   0.6779023
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.5623145    0.5225945   0.6020346
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.4911845    0.4700813   0.5122878
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.5497556    0.5197869   0.5797243
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.5021485    0.4775039   0.5267931
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.4579374    0.4250998   0.4907750


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1192412   0.0861307   0.1523517
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0567261   0.0384591   0.0749931
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0959010   0.0798450   0.1119570
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611773   0.0526341   0.0697204
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3205490   0.3127517   0.3283463
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2910663   0.2432023   0.3389303
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2371134   0.1947393   0.2794875
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0956385   0.0824215   0.1088554
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496211
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
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
Birth       ki1000108-IRC              INDIA                          <259                 [273-287)         3.0443802   1.5467992   5.9918901
Birth       ki1000108-IRC              INDIA                          [259-273)            [273-287)         0.8829780   0.3788445   2.0579687
Birth       ki1000108-IRC              INDIA                          >=287                [273-287)         1.7340479   0.8995944   3.3425309
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         2.1221871   0.7927769   5.6808902
Birth       ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0707159   0.2972892   3.8562881
Birth       ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.6354748   0.2233998   1.8076481
Birth       ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.8691019   1.2223908   2.8579583
Birth       ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.2543936   0.8142346   1.9324940
Birth       ki1135781-COHORTS          INDIA                          >=287                [273-287)         0.7093791   0.4239894   1.1868662
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         4.7313887   3.2954712   6.7929707
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         2.1983020   1.4957744   3.2307891
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.4841422   0.2409363   0.9728449
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         2.1573637   2.0428631   2.2782819
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.5148632   1.4261507   1.6090940
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8451741   0.7809525   0.9146770
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.7074557   1.1295109   2.5811216
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.2077771   0.7834552   1.8619132
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.8968715   0.5507614   1.4604845
6 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          <259                 [273-287)         2.2033396   1.4486923   3.3510951
6 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.0772680   0.6658742   1.7428312
6 months    ki1000108-IRC              INDIA                          >=287                [273-287)         0.9277671   0.5577133   1.5433591
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.3356349   0.9267291   1.9249644
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.1431596   0.8089251   1.6154942
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7293820   0.4988922   1.0663587
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.6847201   1.1466912   2.4751929
6 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.2539718   0.9234688   1.7027593
6 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.7544691   0.4367630   1.3032781
6 months    ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)         1.4160318   1.1164149   1.7960581
6 months    ki1119695-PROBIT           BELARUS                        >=287                [273-287)         0.7528062   0.5570191   1.0174107
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.3539938   1.0854634   1.6889553
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.1976898   0.9502935   1.5094923
6 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.8188348   0.6524729   1.0276141
6 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.6582480   1.1903422   2.3100807
6 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.0488740   0.7405140   1.4856393
6 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.1307552   0.8077329   1.5829581
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.8611040   1.5469771   2.2390170
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.4563467   1.2221298   1.7354505
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0616156   0.8537989   1.3200154
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.4791331   1.3704363   1.5964512
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.2145919   1.1263020   1.3098029
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8752142   0.7986975   0.9590614
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.0999837   0.9195147   1.3158725
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.1127774   0.9557425   1.2956142
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.8680721   0.7142972   1.0549519
24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.5930949   1.1536271   2.1999755
24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.2517063   0.9309077   1.6830548
24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.1180915   0.8174065   1.5293842
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.1500861   0.9117570   1.4507134
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         0.9987693   0.8390869   1.1888400
24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.7499041   0.5610122   1.0023957
24 months   ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)         1.1738882   0.8558720   1.6100695
24 months   ki1119695-PROBIT           BELARUS                        >=287                [273-287)         0.7186246   0.4390508   1.1762225
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.0717065   0.9897708   1.1604251
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0471763   0.9626036   1.1391794
24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9656633   0.8922514   1.0451152
24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.2912311   1.1138355   1.4968796
24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         0.9938124   0.8474050   1.1655148
24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.1027875   0.9518127   1.2777097
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.0810620   0.9987010   1.1702151
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.0778126   1.0058103   1.1549693
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9401757   0.8646036   1.0223534
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.1192446   1.0455427   1.1981418
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.0223215   0.9618472   1.0865980
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.9323123   0.8597275   1.0110253


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                 0.0287817   -0.0080600   0.0656235
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0138978   -0.0072288   0.0350244
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0148682   -0.0037589   0.0334954
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0297417    0.0203096   0.0391738
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0786909    0.0695071   0.0878746
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0364436   -0.0180190   0.0909061
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0368921   -0.0103659   0.0841502
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0016242   -0.0144524   0.0177007
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0253853    0.0048407   0.0459299
6 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0030543   -0.0003591   0.0064676
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0371797   -0.0027189   0.0770784
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0303785    0.0063158   0.0544412
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0458079    0.0280399   0.0635759
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0285677    0.0184166   0.0387189
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0005626   -0.0542537   0.0553789
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0518828   -0.0044864   0.1082521
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0008465   -0.0317667   0.0334597
24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                -0.0003589   -0.0099964   0.0092785
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0139303   -0.0458845   0.0180238
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0384742    0.0072443   0.0697041
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0194791   -0.0022703   0.0412285
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0093545   -0.0073509   0.0260600


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                 0.2413740   -0.1302248   0.4907974
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.2449981   -0.2316706   0.5371913
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1550373   -0.0619124   0.3276639
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.4861567    0.3267731   0.6078069
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.2454878    0.2163958   0.2734998
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.1252071   -0.0828814   0.2933090
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.1555885   -0.0678426   0.3322698
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0169824   -0.1663552   0.1715014
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1927037    0.0219184   0.3336678
6 months    ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0487230   -0.0077537   0.1020346
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0886594   -0.0116671   0.1790365
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1795343    0.0251970   0.3094358
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.2167004    0.1292622   0.2953582
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.1105682    0.0705800   0.1488359
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0007908   -0.0793085   0.0749457
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.1249031   -0.0219848   0.2506791
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0025482   -0.1006262   0.0960510
24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                -0.0042102   -0.1234876   0.1024039
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0175253   -0.0585907   0.0219472
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0840138    0.0132269   0.1497228
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0315413   -0.0043331   0.0661343
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0186889   -0.0152060   0.0514522
