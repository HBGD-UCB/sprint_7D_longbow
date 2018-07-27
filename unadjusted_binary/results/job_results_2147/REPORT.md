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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        gagebrth     ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ----------  -------------  -------  ------
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)               0      123     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)               1       23     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                    0       30     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                    1       17     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)               0       56     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)               1       18     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                   0       65     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                   1       14     346
0-6 months    ki1000108-IRC              INDIA                          [273-287)               0      149     390
0-6 months    ki1000108-IRC              INDIA                          [273-287)               1       16     390
0-6 months    ki1000108-IRC              INDIA                          <259                    0       30     390
0-6 months    ki1000108-IRC              INDIA                          <259                    1       10     390
0-6 months    ki1000108-IRC              INDIA                          [259-273)               0       83     390
0-6 months    ki1000108-IRC              INDIA                          [259-273)               1        9     390
0-6 months    ki1000108-IRC              INDIA                          >=287                   0       79     390
0-6 months    ki1000108-IRC              INDIA                          >=287                   1       14     390
0-6 months    ki1000109-EE               PAKISTAN                       [273-287)               0       17     379
0-6 months    ki1000109-EE               PAKISTAN                       [273-287)               1        7     379
0-6 months    ki1000109-EE               PAKISTAN                       <259                    0      160     379
0-6 months    ki1000109-EE               PAKISTAN                       <259                    1       85     379
0-6 months    ki1000109-EE               PAKISTAN                       [259-273)               0       71     379
0-6 months    ki1000109-EE               PAKISTAN                       [259-273)               1       38     379
0-6 months    ki1000109-EE               PAKISTAN                       >=287                   0        1     379
0-6 months    ki1000109-EE               PAKISTAN                       >=287                   1        0     379
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)               0       37    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)               1        5    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <259                    0      834    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <259                    1      376    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)               0      206    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)               1       51    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=287                   0        3    1512
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=287                   1        0    1512
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)               0      238     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)               1       13     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                    0      104     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259                    1       53     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)               0      291     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)               1       39     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                   0       20     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287                   1        0     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)               0      833    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)               1       51    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                    0      281    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                    1       46    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)               0      435    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)               1       36    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                   0      552    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                   1       20    2254
0-6 months    ki1101329-Keneba           GAMBIA                         [273-287)               0      605    1586
0-6 months    ki1101329-Keneba           GAMBIA                         [273-287)               1       21    1586
0-6 months    ki1101329-Keneba           GAMBIA                         <259                    0      137    1586
0-6 months    ki1101329-Keneba           GAMBIA                         <259                    1       29    1586
0-6 months    ki1101329-Keneba           GAMBIA                         [259-273)               0      578    1586
0-6 months    ki1101329-Keneba           GAMBIA                         [259-273)               1       34    1586
0-6 months    ki1101329-Keneba           GAMBIA                         >=287                   0      180    1586
0-6 months    ki1101329-Keneba           GAMBIA                         >=287                   1        2    1586
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <259                    0        0     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <259                    1        1     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)               0      531     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)               1       66     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=287                   0        4     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=287                   1        0     602
0-6 months    ki1119695-PROBIT           BELARUS                        [273-287)               0    12253   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [273-287)               1       81   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <259                    0        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        <259                    1        0   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [259-273)               0     3078   16893
0-6 months    ki1119695-PROBIT           BELARUS                        [259-273)               1       69   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=287                   0     1408   16893
0-6 months    ki1119695-PROBIT           BELARUS                        >=287                   1        3   16893
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)               0      275     773
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)               1       32     773
0-6 months    ki1135781-COHORTS          GUATEMALA                      <259                    0       78     773
0-6 months    ki1135781-COHORTS          GUATEMALA                      <259                    1       22     773
0-6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)               0       97     773
0-6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)               1       21     773
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=287                   0      219     773
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=287                   1       29     773
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)               0      485    1352
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)               1       45    1352
0-6 months    ki1135781-COHORTS          INDIA                          <259                    0      169    1352
0-6 months    ki1135781-COHORTS          INDIA                          <259                    1       32    1352
0-6 months    ki1135781-COHORTS          INDIA                          [259-273)               0      269    1352
0-6 months    ki1135781-COHORTS          INDIA                          [259-273)               1       34    1352
0-6 months    ki1135781-COHORTS          INDIA                          >=287                   0      299    1352
0-6 months    ki1135781-COHORTS          INDIA                          >=287                   1       19    1352
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)               0     1143    3032
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)               1       38    3032
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <259                    0      384    3032
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <259                    1       76    3032
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)               0      773    3032
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)               1       63    3032
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                   0      546    3032
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                   1        9    3032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)               0     5299   20155
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)               1     1701   20155
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                    0     1833   20155
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                    1     2111   20155
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)               0     3326   20155
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)               1     1941   20155
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                   0     3136   20155
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                   1      808   20155
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)               0       42     273
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)               1       75     273
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                    0       13     273
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                    1       23     273
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)               0       19     273
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)               1       36     273
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                   0       20     273
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                   1       45     273
6-24 months   ki1000108-IRC              INDIA                          [273-287)               0      116     324
6-24 months   ki1000108-IRC              INDIA                          [273-287)               1       27     324
6-24 months   ki1000108-IRC              INDIA                          <259                    0       16     324
6-24 months   ki1000108-IRC              INDIA                          <259                    1        7     324
6-24 months   ki1000108-IRC              INDIA                          [259-273)               0       52     324
6-24 months   ki1000108-IRC              INDIA                          [259-273)               1       23     324
6-24 months   ki1000108-IRC              INDIA                          >=287                   0       60     324
6-24 months   ki1000108-IRC              INDIA                          >=287                   1       23     324
6-24 months   ki1000109-EE               PAKISTAN                       [273-287)               0        4     188
6-24 months   ki1000109-EE               PAKISTAN                       [273-287)               1       12     188
6-24 months   ki1000109-EE               PAKISTAN                       <259                    0       21     188
6-24 months   ki1000109-EE               PAKISTAN                       <259                    1       90     188
6-24 months   ki1000109-EE               PAKISTAN                       [259-273)               0       21     188
6-24 months   ki1000109-EE               PAKISTAN                       [259-273)               1       39     188
6-24 months   ki1000109-EE               PAKISTAN                       >=287                   0        1     188
6-24 months   ki1000109-EE               PAKISTAN                       >=287                   1        0     188
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)               0       21     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)               1       15     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <259                    0      516     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <259                    1      236     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)               0      113     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)               1       56     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=287                   0        2     959
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=287                   1        0     959
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)               0      183     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)               1       35     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                    0       88     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                    1       18     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)               0      216     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)               1       61     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                   0       16     620
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                   1        3     620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)               0      567    1737
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)               1       94    1737
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                    0      214    1737
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                    1       41    1737
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)               0      308    1737
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)               1       53    1737
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                   0      409    1737
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                   1       51    1737
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)               0      444    1427
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)               1      150    1427
6-24 months   ki1101329-Keneba           GAMBIA                         <259                    0       96    1427
6-24 months   ki1101329-Keneba           GAMBIA                         <259                    1       34    1427
6-24 months   ki1101329-Keneba           GAMBIA                         [259-273)               0      399    1427
6-24 months   ki1101329-Keneba           GAMBIA                         [259-273)               1      140    1427
6-24 months   ki1101329-Keneba           GAMBIA                         >=287                   0      120    1427
6-24 months   ki1101329-Keneba           GAMBIA                         >=287                   1       44    1427
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <259                    0        1     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <259                    1        0     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)               0      262     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)               1      214     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=287                   0        2     480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=287                   1        1     480
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)               0    11453   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)               1      455   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [259-273)               0     2897   16303
6-24 months   ki1119695-PROBIT           BELARUS                        [259-273)               1      126   16303
6-24 months   ki1119695-PROBIT           BELARUS                        >=287                   0     1333   16303
6-24 months   ki1119695-PROBIT           BELARUS                        >=287                   1       39   16303
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)               0       60     429
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)               1      119     429
6-24 months   ki1135781-COHORTS          GUATEMALA                      <259                    0       11     429
6-24 months   ki1135781-COHORTS          GUATEMALA                      <259                    1       31     429
6-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)               0       27     429
6-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)               1       29     429
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                   0       69     429
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                   1       83     429
6-24 months   ki1135781-COHORTS          INDIA                          [273-287)               0      451    1102
6-24 months   ki1135781-COHORTS          INDIA                          <259                    0      145    1102
6-24 months   ki1135781-COHORTS          INDIA                          [259-273)               0      250    1102
6-24 months   ki1135781-COHORTS          INDIA                          >=287                   0      256    1102
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)               0      479    2206
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)               1      436    2206
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                    0      142    2206
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                    1      144    2206
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)               0      277    2206
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)               1      305    2206
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                   0      227    2206
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                   1      196    2206
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)               0     2852    9799
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)               1      740    9799
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                    0     1216    9799
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                    1      346    9799
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)               0     1963    9799
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)               1      533    9799
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                   0     1738    9799
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                   1      411    9799
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)               0       36     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)               1      112     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                    0        9     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                    1       38     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)               0       17     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)               1       58     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                   0       14     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                   1       67     351
0-24 months   ki1000108-IRC              INDIA                          [273-287)               0       99     390
0-24 months   ki1000108-IRC              INDIA                          [273-287)               1       66     390
0-24 months   ki1000108-IRC              INDIA                          <259                    0       12     390
0-24 months   ki1000108-IRC              INDIA                          <259                    1       28     390
0-24 months   ki1000108-IRC              INDIA                          [259-273)               0       44     390
0-24 months   ki1000108-IRC              INDIA                          [259-273)               1       48     390
0-24 months   ki1000108-IRC              INDIA                          >=287                   0       51     390
0-24 months   ki1000108-IRC              INDIA                          >=287                   1       42     390
0-24 months   ki1000109-EE               PAKISTAN                       [273-287)               0        3     379
0-24 months   ki1000109-EE               PAKISTAN                       [273-287)               1       21     379
0-24 months   ki1000109-EE               PAKISTAN                       <259                    0       23     379
0-24 months   ki1000109-EE               PAKISTAN                       <259                    1      222     379
0-24 months   ki1000109-EE               PAKISTAN                       [259-273)               0       18     379
0-24 months   ki1000109-EE               PAKISTAN                       [259-273)               1       91     379
0-24 months   ki1000109-EE               PAKISTAN                       >=287                   0        1     379
0-24 months   ki1000109-EE               PAKISTAN                       >=287                   1        0     379
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)               0       19    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)               1       24    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <259                    0      485    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <259                    1      726    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)               0      108    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)               1      150    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=287                   0        1    1515
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=287                   1        2    1515
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)               0      179     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)               1       72     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                    0       64     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                    1       93     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)               0      204     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)               1      126     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                   0       17     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                   1        3     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)               0      686    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)               1      198    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                    0      225    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                    1      102    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)               0      358    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)               1      113    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                   0      474    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                   1       98    2254
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)               0      441    1704
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)               1      239    1704
0-24 months   ki1101329-Keneba           GAMBIA                         <259                    0       88    1704
0-24 months   ki1101329-Keneba           GAMBIA                         <259                    1       92    1704
0-24 months   ki1101329-Keneba           GAMBIA                         [259-273)               0      396    1704
0-24 months   ki1101329-Keneba           GAMBIA                         [259-273)               1      255    1704
0-24 months   ki1101329-Keneba           GAMBIA                         >=287                   0      120    1704
0-24 months   ki1101329-Keneba           GAMBIA                         >=287                   1       73    1704
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <259                    0        0     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <259                    1        1     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)               0      252     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)               1      345     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=287                   0        2     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=287                   1        2     602
0-24 months   ki1119695-PROBIT           BELARUS                        [273-287)               0    11154   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [273-287)               1     1184   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <259                    0        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        <259                    1        0   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [259-273)               0     2736   16897
0-24 months   ki1119695-PROBIT           BELARUS                        [259-273)               1      411   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=287                   0     1306   16897
0-24 months   ki1119695-PROBIT           BELARUS                        >=287                   1      105   16897
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)               0       70     816
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)               1      258     816
0-24 months   ki1135781-COHORTS          GUATEMALA                      <259                    0       19     816
0-24 months   ki1135781-COHORTS          GUATEMALA                      <259                    1       83     816
0-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)               0       26     816
0-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)               1       98     816
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                   0       78     816
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                   1      184     816
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)               0      440    1371
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)               1       98    1371
0-24 months   ki1135781-COHORTS          INDIA                          <259                    0      139    1371
0-24 months   ki1135781-COHORTS          INDIA                          <259                    1       65    1371
0-24 months   ki1135781-COHORTS          INDIA                          [259-273)               0      243    1371
0-24 months   ki1135781-COHORTS          INDIA                          [259-273)               1       66    1371
0-24 months   ki1135781-COHORTS          INDIA                          >=287                   0      261    1371
0-24 months   ki1135781-COHORTS          INDIA                          >=287                   1       59    1371
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)               0      543    3032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)               1      638    3032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                    0      166    3032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                    1      294    3032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)               0      326    3032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)               1      510    3032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                   0      262    3032
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                   1      293    3032
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)               0     4286   20164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)               1     2714   20164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                    0     1489   20164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                    1     2462   20164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)               0     2678   20164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)               1     2590   20164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                   0     2581   20164
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                   1     1364   20164


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##            ever_stunted
## gagebrth      0
##   [273-287) 451
##   <259      145
##   [259-273) 250
##   >=287     256
```




# Results Detail

## Results Plots
![](/tmp/9af66a76-cab6-45db-a751-bc37b9e87b40/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9af66a76-cab6-45db-a751-bc37b9e87b40/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9af66a76-cab6-45db-a751-bc37b9e87b40/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9af66a76-cab6-45db-a751-bc37b9e87b40/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.7567568   0.6875362   0.8259773
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.8085106   0.6958599   0.9211613
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.7733333   0.6784447   0.8682220
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.8271605   0.7447008   0.9096201
0-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.4000000   0.3251539   0.4748461
0-24 months   ki1000108-IRC              INDIA                          <259                 NA                0.7000000   0.5578047   0.8421953
0-24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.5217391   0.4195344   0.6239438
0-24 months   ki1000108-IRC              INDIA                          >=287                NA                0.4516129   0.3503405   0.5528853
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.2239819   0.1964928   0.2514710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.3119266   0.2617023   0.3621509
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.2399151   0.2013411   0.2784890
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.1713287   0.1404433   0.2022140
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.3514706   0.3155759   0.3873653
0-24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.5111111   0.4380642   0.5841581
0-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.3917051   0.3541973   0.4292129
0-24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.3782383   0.3098012   0.4466755
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.7865854   0.7422181   0.8309526
0-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.8137255   0.7381241   0.8893269
0-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.7903226   0.7186288   0.8620164
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.7022901   0.6468889   0.7576912
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.1821561   0.1495295   0.2147828
0-24 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.3186275   0.2546650   0.3825899
0-24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.2135922   0.1678788   0.2593057
0-24 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.1843750   0.1418712   0.2268788
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.5402202   0.5117916   0.5686487
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.6391304   0.5952359   0.6830250
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.6100478   0.5769801   0.6431156
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.5279279   0.4863881   0.5694678
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.3877143   0.3747858   0.4006427
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.6231334   0.6066016   0.6396652
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.4916477   0.4761558   0.5071396
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.3457541   0.3283963   0.3631119
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.1575342   0.0983558   0.2167127
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.3617021   0.2241349   0.4992693
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.2432432   0.1453485   0.3411380
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.1772152   0.0928901   0.2615402
0-6 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.0969697   0.0517599   0.1421795
0-6 months    ki1000108-IRC              INDIA                          <259                 NA                0.2500000   0.1156381   0.3843619
0-6 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.0978261   0.0370428   0.1586094
0-6 months    ki1000108-IRC              INDIA                          >=287                NA                0.1505376   0.0777666   0.2233087
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0576923   0.0423188   0.0730658
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1406728   0.1029803   0.1783653
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.0764331   0.0524332   0.1004330
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0349650   0.0199082   0.0500219
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.1042345   0.0700316   0.1384374
0-6 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.2200000   0.1387566   0.3012434
0-6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.1779661   0.1089101   0.2470221
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.1169355   0.0769159   0.1569551
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0849057   0.0611661   0.1086452
0-6 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.1592040   0.1086060   0.2098019
0-6 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1122112   0.0766595   0.1477629
0-6 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.0597484   0.0336881   0.0858088
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0321761   0.0221101   0.0422422
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.1652174   0.1312740   0.1991608
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.0753589   0.0574623   0.0932554
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0162162   0.0057063   0.0267261
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2430000   0.2315897   0.2544103
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.5352434   0.5176834   0.5528034
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.3685210   0.3538412   0.3832008
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2048682   0.1905625   0.2191738
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.6410256   0.5539450   0.7281062
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.6388889   0.4816982   0.7960796
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.6545455   0.5286445   0.7804464
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.6923077   0.5799000   0.8047154
6-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.1888112   0.1245681   0.2530542
6-24 months   ki1000108-IRC              INDIA                          <259                 NA                0.3043478   0.1160104   0.4926852
6-24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.3066667   0.2021482   0.4111851
6-24 months   ki1000108-IRC              INDIA                          >=287                NA                0.2771084   0.1806719   0.3735450
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.1422088   0.1155754   0.1688422
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1607843   0.1156859   0.2058828
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.1468144   0.1102948   0.1833340
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.1108696   0.0821695   0.1395696
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.2525253   0.2175744   0.2874761
6-24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.2615385   0.1859666   0.3371104
6-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.2597403   0.2227091   0.2967714
6-24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.2682927   0.2004580   0.3361273
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                0.0382096   0.0290729   0.0473463
6-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            NA                0.0416804   0.0268221   0.0565388
6-24 months   ki1119695-PROBIT           BELARUS                        >=287                NA                0.0284257   0.0175703   0.0392810
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.6648045   0.5955697   0.7340393
6-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.7380952   0.6049707   0.8712198
6-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.5178571   0.3868323   0.6488820
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.5460526   0.4668111   0.6252942
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.4765027   0.4441340   0.5088715
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.5034965   0.4455372   0.5614558
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.5240550   0.4834713   0.5646387
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.4633570   0.4158260   0.5108880
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2060134   0.1919205   0.2201062
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.2215109   0.1994763   0.2435454
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.2135417   0.1956460   0.2314373
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.1912517   0.1738875   0.2086160


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7834758   0.7403259   0.8266257
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4717949   0.4221869   0.5214028
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2267081   0.2094190   0.2439972
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3867371   0.3636073   0.4098669
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7634804   0.7343060   0.7926548
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2100656   0.1884951   0.2316362
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5722296   0.5546161   0.5898431
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4527871   0.4444343   0.4611400
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2080925   0.1652570   0.2509280
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1256410   0.0927040   0.1585780
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0678793   0.0574928   0.0782659
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1345408   0.1104700   0.1586115
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0961538   0.0804339   0.1118738
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613456   0.0528029   0.0698884
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3255272   0.3180302   0.3330241
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6556777   0.5992111   0.7121442
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2469136   0.1998872   0.2939400
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1375936   0.1213893   0.1537978
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2578837   0.2351779   0.2805894
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0380298   0.0285924   0.0474672
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6107226   0.5645294   0.6569158
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4900272   0.4691618   0.5108926
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2071640   0.1978526   0.2164754


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.0683891   0.9043660   1.2621607
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.0219048   0.8768888   1.1909028
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0930335   0.9547186   1.2513868
0-24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.7500000   1.3276812   2.3066532
0-24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.3043478   0.9948183   1.7101850
0-24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.1290323   0.8430762   1.5119795
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.3926420   1.1374039   1.7051566
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.0711360   0.8749835   1.3112617
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7649219   0.6150430   0.9513247
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.4542073   1.2199424   1.7334581
0-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.1144747   0.9688811   1.2819466
0-24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.0761593   0.8742661   1.3246755
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.0345037   0.9279592   1.1532812
0-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0047512   0.9029567   1.1180215
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.8928339   0.8103153   0.9837558
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.7491997   1.3365925   2.2891791
0-24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.1725778   0.8870286   1.5500500
0-24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.0121811   0.7559150   1.3553251
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.1830925   1.0850325   1.2900148
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.1292578   1.0470877   1.2178762
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9772459   0.8889829   1.0742721
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.6071974   1.5392092   1.6781887
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.2680670   1.2118466   1.3268956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8917755   0.8429205   0.9434622
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         2.2960222   1.3452825   3.9186699
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.5440658   0.8903732   2.6776854
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.1249312   0.6135310   2.0626020
0-6 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <259                 [273-287)         2.5781249   1.2656339   5.2516990
0-6 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.0088315   0.4639330   2.1937243
0-6 months    ki1000108-IRC              INDIA                          >=287                [273-287)         1.5524193   0.7931142   3.0386616
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         2.4383282   1.6709961   3.5580242
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.3248408   0.8776237   1.9999495
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.6060606   0.3652467   1.0056476
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         2.1106250   1.2878503   3.4590494
0-6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.7073623   1.0271395   2.8380622
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         1.1218498   0.6982699   1.8023790
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.8750691   1.2279475   2.8632202
0-6 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.3215988   0.8661334   2.0165757
0-6 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         0.7037037   0.4191658   1.1813916
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         5.1347826   3.5316536   7.4656226
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         2.3420738   1.5813280   3.4687995
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.5039830   0.2453973   1.0350515
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         2.2026478   2.0797105   2.3328522
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.5165472   1.4264208   1.6123682
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8430788   0.7772182   0.9145204
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         0.9966667   0.7524747   1.3201035
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.0210909   0.8068552   1.2922104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0800000   0.8739437   1.3346397
6-24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.6119163   0.7955101   3.2661736
6-24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.6241975   1.0034294   2.6290017
6-24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.4676484   0.9020880   2.3877845
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.1306216   0.8069441   1.5841312
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.0323864   0.7561655   1.4095084
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7796253   0.5664027   1.0731158
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.0356923   0.7517747   1.4268352
6-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.0285714   0.8432173   1.2546697
6-24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.0624390   0.7963836   1.4173782
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)         1.0908369   0.8721533   1.3643532
6-24 months   ki1119695-PROBIT           BELARUS                        >=287                [273-287)         0.7439400   0.5110964   1.0828618
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.1102441   0.9015048   1.3673161
6-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         0.7789616   0.5925014   1.0241008
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.8213733   0.6870167   0.9820053
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.0566498   0.9244476   1.2077577
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.0997943   0.9921412   1.2191284
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9724120   0.8598405   1.0997216
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.0752258   0.9513163   1.2152746
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.0365428   0.9315957   1.1533125
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.9283463   0.8344694   1.0327843


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0267190   -0.0243957   0.0778338
0-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0717949    0.0141513   0.1294385
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0027262   -0.0187644   0.0242167
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0352665    0.0070691   0.0634639
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0231050   -0.0582776   0.0120677
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0279095    0.0015592   0.0542598
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0320094    0.0099000   0.0541188
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0650729    0.0546888   0.0754569
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0505582    0.0017581   0.0993583
0-6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0286713   -0.0087358   0.0660785
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0101870   -0.0024162   0.0227902
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0303062    0.0016701   0.0589423
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0112482   -0.0079568   0.0304532
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0291695    0.0194038   0.0389353
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0825272    0.0730044   0.0920499
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0146520   -0.0507067   0.0800107
6-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0581024    0.0061839   0.1100209
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0046152   -0.0254010   0.0161706
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0053584   -0.0214771   0.0321939
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                -0.0001798   -0.0021517   0.0017921
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0540819   -0.1081848   0.0000211
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0135245   -0.0112535   0.0383024
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0011506   -0.0100783   0.0123795


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0341032   -0.0335647    0.0973408
0-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.1521739    0.0201309    0.2664234
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0120250   -0.0874636    0.1024117
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0911899    0.0152420    0.1612804
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0302627   -0.0774628    0.0148697
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1328609   -0.0016414    0.2493020
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0559380    0.0164383    0.0938515
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.1437162    0.1204795    0.1663391
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.2429604   -0.0275359    0.4422492
0-6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.2282004   -0.1281993    0.4720129
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.1500754   -0.0558848    0.3158611
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.2252568   -0.0158644    0.4091466
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1169811   -0.1062105    0.2951411
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.4754946    0.3074117    0.6027858
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.2535185    0.2237885    0.2821098
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0223464   -0.0826498    0.1171599
6-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.2353147   -0.0035594    0.4173303
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0335424   -0.1961676    0.1069730
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0207784   -0.0890067    0.1194959
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                -0.0047278   -0.0582672    0.0461030
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0885539   -0.1815083   -0.0029126
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0275994   -0.0243153    0.0768829
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0055542   -0.0501358    0.0582909
