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

**Outcome Variable:** ever_stunted

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
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_single
* delta_brthmon
* delta_W_parity

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
##            ever_stunted
## gagebrth      0
##   [273-287) 451
##   <259      145
##   [259-273) 250
##   >=287     256
```




# Results Detail

## Results Plots
![](/tmp/86ede07b-6c7e-48a6-86d9-ee958f627154/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/86ede07b-6c7e-48a6-86d9-ee958f627154/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/86ede07b-6c7e-48a6-86d9-ee958f627154/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/86ede07b-6c7e-48a6-86d9-ee958f627154/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.7616028   0.6926678   0.8305378
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.8302809   0.7202965   0.9402653
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.7965806   0.7033468   0.8898143
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.8487887   0.7675837   0.9299937
0-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.3991988   0.3267171   0.4716805
0-24 months   ki1000108-IRC              INDIA                          <259                 NA                0.7075308   0.5882144   0.8268472
0-24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.5403902   0.4468963   0.6338841
0-24 months   ki1000108-IRC              INDIA                          >=287                NA                0.4440359   0.3519627   0.5361090
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.2239707   0.1968124   0.2511290
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.3090537   0.2599067   0.3582007
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.2380497   0.2001481   0.2759514
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.1734037   0.1431419   0.2036655
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.3478551   0.3145332   0.3811770
0-24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.4899431   0.4312088   0.5486773
0-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.3954379   0.3605686   0.4303071
0-24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.3734930   0.3161187   0.4308672
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.7867573   0.7439484   0.8295661
0-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.8353673   0.7711583   0.8995763
0-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.7886148   0.7242565   0.8529730
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.7087292   0.6562842   0.7611743
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.1783813   0.1467594   0.2100033
0-24 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.2974013   0.2381277   0.3566750
0-24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.2008834   0.1576443   0.2441225
0-24 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.1759052   0.1352316   0.2165788
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.5458267   0.5187365   0.5729169
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.6262510   0.5863392   0.6661627
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.6011745   0.5701093   0.6322396
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.5207641   0.4826546   0.5588735
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.3924700   0.3800446   0.4048954
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.6148494   0.5993409   0.6303579
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.4928706   0.4781653   0.5075758
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.3507313   0.3342326   0.3672299
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.1566059   0.0981345   0.2150772
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.3499439   0.2214436   0.4784441
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.2448759   0.1501083   0.3396436
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.1804483   0.0986232   0.2622734
0-6 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.0977439   0.0531075   0.1423804
0-6 months    ki1000108-IRC              INDIA                          <259                 NA                0.2818880   0.1563773   0.4073987
0-6 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.1017025   0.0431077   0.1602973
0-6 months    ki1000108-IRC              INDIA                          >=287                NA                0.1582846   0.0892864   0.2272827
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0578236   0.0427459   0.0729013
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1390228   0.1037514   0.1742942
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.0754642   0.0521224   0.0988061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0351720   0.0205141   0.0498299
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.0995706   0.0679716   0.1311697
0-6 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.2441604   0.1755974   0.3127233
0-6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.1754060   0.1170600   0.2337519
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.1239611   0.0863388   0.1615834
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0798774   0.0570556   0.1026991
0-6 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.1332289   0.0888971   0.1775608
0-6 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.0955335   0.0631725   0.1278945
0-6 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.0531114   0.0288896   0.0773332
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0323403   0.0225286   0.0421520
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.1474533   0.1172848   0.1776218
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.0688183   0.0521041   0.0855324
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0148304   0.0052218   0.0244389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2438529   0.2327438   0.2549620
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.5258687   0.5099464   0.5417910
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.3695934   0.3556377   0.3835490
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2055537   0.1920358   0.2190716
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.6397843   0.5533141   0.7262545
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.6381324   0.4830328   0.7932320
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.6574055   0.5324225   0.7823885
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.6934900   0.5818779   0.8051020
6-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.1864852   0.1233478   0.2496226
6-24 months   ki1000108-IRC              INDIA                          <259                 NA                0.2929827   0.1281387   0.4578266
6-24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.3170348   0.2163656   0.4177039
6-24 months   ki1000108-IRC              INDIA                          >=287                NA                0.2722342   0.1800128   0.3644555
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.1412896   0.1148526   0.1677265
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1614114   0.1165303   0.2062924
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.1468901   0.1107815   0.1829987
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.1116861   0.0833049   0.1400672
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.2518438   0.2190192   0.2846685
6-24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.3039583   0.2445889   0.3633277
6-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.2698981   0.2349305   0.3048657
6-24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.2861794   0.2284564   0.3439025
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                0.0377277   0.0286544   0.0468010
6-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            NA                0.0397685   0.0261748   0.0533622
6-24 months   ki1119695-PROBIT           BELARUS                        >=287                NA                0.0267783   0.0179799   0.0355768
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.6621610   0.5937287   0.7305933
6-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.7410531   0.6154875   0.8666187
6-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.5196722   0.3970565   0.6422879
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.5472526   0.4702416   0.6242637
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.4814601   0.4507184   0.5122018
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.4882369   0.4379030   0.5385709
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.5182501   0.4801130   0.5563872
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.4549459   0.4117543   0.4981375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2096558   0.1959551   0.2233565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.2168077   0.1960868   0.2375286
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.2118973   0.1944752   0.2293194
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.1928450   0.1761845   0.2095056


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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.0901758   0.9287603   1.2796447
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.0459266   0.9022265   1.2125141
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.1144769   0.9769512   1.2713621
0-24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.7723770   1.3848465   2.2683525
0-24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.3536869   1.0538682   1.7388021
0-24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.1123176   0.8446520   1.4648051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.3798846   1.1310428   1.6834742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.0628611   0.8711218   1.2968034
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7742249   0.6269178   0.9561447
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.4084689   1.2108507   1.6383396
0-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.1367891   1.0021143   1.2895629
0-24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.0737028   0.8987345   1.2827344
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.0617853   0.9675529   1.1651951
0-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0023609   0.9097159   1.1044409
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9008233   0.8227556   0.9862984
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.6672223   1.2789805   2.1733170
0-24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.1261457   0.8545740   1.4840192
0-24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         0.9861187   0.7386425   1.3165097
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.1473440   1.0593748   1.2426180
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.1014017   1.0264863   1.1817846
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9540832   0.8742439   1.0412136
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.5666151   1.5046229   1.6311614
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.2558173   1.2038214   1.3100590
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8936512   0.8482921   0.9414357
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         2.2345517   1.3253344   3.7675181
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.5636449   0.9150891   2.6718550
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.1522449   0.6430840   2.0645330
0-6 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <259                 [273-287)         2.8839437   1.5270453   5.4465517
0-6 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.0404991   0.4990416   2.1694350
0-6 months    ki1000108-IRC              INDIA                          >=287                [273-287)         1.6193800   0.8647953   3.0323842
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         2.4042563   1.6753340   3.4503258
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.3050763   0.8737339   1.9493627
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.6082638   0.3728874   0.9922159
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         2.4521321   1.6159681   3.7209594
0-6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.7616234   1.1225725   2.7644690
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         1.2449563   0.8104846   1.9123326
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.6679184   1.0778703   2.5809709
0-6 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.1960018   0.7702501   1.8570855
0-6 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         0.6649111   0.3890403   1.1364035
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         4.5594294   3.1677469   6.5625182
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         2.1279426   1.4463525   3.1307306
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.4585720   0.2246486   0.9360766
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         2.1564999   2.0436664   2.2755631
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.5156407   1.4295241   1.6069451
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8429415   0.7809604   0.9098418
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         0.9974181   0.7556897   1.3164700
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.0275425   0.8139116   1.2972458
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0839434   0.8786674   1.3371765
6-24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.5710772   0.8147866   3.0293620
6-24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.7000533   1.0687193   2.7043409
6-24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.4598164   0.9042363   2.3567556
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.1424154   0.8176312   1.5962123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.0396389   0.7640953   1.4145472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7904764   0.5772387   1.0824862
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.2069318   0.9579685   1.5205974
6-24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.0716884   0.8962360   1.2814884
6-24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.1363368   0.8973742   1.4389330
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [259-273)            [273-287)         1.0540934   0.8517734   1.3044701
6-24 months   ki1119695-PROBIT           BELARUS                        >=287                [273-287)         0.7097797   0.5280749   0.9540070
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.1191434   0.9190022   1.3628716
6-24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         0.7848125   0.6077880   1.0133972
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.8264646   0.6951520   0.9825820
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.0140756   0.8996115   1.1431038
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.0764134   0.9779977   1.1847326
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9449296   0.8441413   1.0577518
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.0341124   0.9198550   1.1625621
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.0106911   0.9117293   1.1203945
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.9198171   0.8321334   1.0167402


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0218730   -0.0290799   0.0728259
0-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0725961    0.0168006   0.1283916
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0027374   -0.0182845   0.0237592
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0388820    0.0134311   0.0643330
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0232769   -0.0565132   0.0099594
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0316843    0.0063511   0.0570175
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0264028    0.0057031   0.0471026
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0603172    0.0505420   0.0700924
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0514866    0.0035096   0.0994636
0-6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0278971   -0.0089021   0.0646963
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0100557   -0.0022116   0.0223230
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0349701    0.0086515   0.0612888
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0162765   -0.0021209   0.0346738
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0290054    0.0194632   0.0385475
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0816743    0.0725572   0.0907914
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0158934   -0.0489093   0.0806960
6-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0604284    0.0091977   0.1116591
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0036960   -0.0242416   0.0168496
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0060398   -0.0184793   0.0305590
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0003021   -0.0015888   0.0021931
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0514384   -0.1039265   0.0010497
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0085671   -0.0145461   0.0316803
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                -0.0024918   -0.0133251   0.0083415


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0279179   -0.0394705    0.0909375
0-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.1538721    0.0267509    0.2643894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0120745   -0.0851437    0.1005828
0-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1005386    0.0323642    0.1639098
0-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0304879   -0.0750464    0.0122238
0-24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1508305    0.0218545    0.2628000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0461403    0.0092526    0.0816546
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.1332131    0.1113784    0.1545113
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.2474219   -0.0178882    0.4435795
0-6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.2220381   -0.1263741    0.4626787
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.1481411   -0.0515224    0.3098924
0-6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.2599221    0.0419441    0.4283055
0-6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1692753   -0.0445009    0.3392983
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.4728185    0.3105345    0.5969047
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.2508985    0.2224409    0.2783147
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0242396   -0.0798247    0.1182751
6-24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.2447349    0.0099003    0.4238708
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0268618   -0.1875459    0.1120805
6-24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0234208   -0.0763842    0.1139716
6-24 months   ki1119695-PROBIT           BELARUS                        [273-287)            NA                 0.0079443   -0.0424853    0.0559344
6-24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0842255   -0.1742147   -0.0011328
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0174829   -0.0308210    0.0635233
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                -0.0120283   -0.0657453    0.0389811
