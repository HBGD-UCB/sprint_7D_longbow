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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mage       n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <25           114     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)        88     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           42     244
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25            88     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)        53     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30           39     180
0-3 months     ki0047075b-MAL-ED          INDIA                          <25           118     200
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)        65     200
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30           17     200
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25            45     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)        94     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30           36     175
0-3 months     ki0047075b-MAL-ED          PERU                           <25           153     271
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)        57     271
0-3 months     ki0047075b-MAL-ED          PERU                           >=30           61     271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25           105     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)        45     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           79     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25            73     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)        65     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           91     229
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25            50      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)        33      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4      87
0-3 months     ki1000108-IRC              INDIA                          <25           237     377
0-3 months     ki1000108-IRC              INDIA                          [25-30)       113     377
0-3 months     ki1000108-IRC              INDIA                          >=30           27     377
0-3 months     ki1000109-EE               PAKISTAN                       <25            30     592
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)       230     592
0-3 months     ki1000109-EE               PAKISTAN                       >=30          332     592
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25           697    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)       335    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30          136    1168
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25           274     564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)       168     564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          122     564
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25           330     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)       188     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          116     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25           377     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       220     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          123     720
0-3 months     ki1101329-Keneba           GAMBIA                         <25           500    1276
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)       287    1276
0-3 months     ki1101329-Keneba           GAMBIA                         >=30          489    1276
0-3 months     ki1119695-PROBIT           BELARUS                        <25          6848   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)      3562   12745
0-3 months     ki1119695-PROBIT           BELARUS                        >=30         2335   12745
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25          4340    7845
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      2020    7845
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1485    7845
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25           285     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)       154     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30          289     728
0-3 months     ki1135781-COHORTS          INDIA                          <25          1936    4601
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)      1524    4601
0-3 months     ki1135781-COHORTS          INDIA                          >=30         1141    4601
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25         29066   40070
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)      7124   40070
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30         3880   40070
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25           109     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)        84     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           38     231
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25            99     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)        62     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30           47     208
3-6 months     ki0047075b-MAL-ED          INDIA                          <25           133     227
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)        74     227
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30           20     227
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25            61     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)       126     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30           46     233
3-6 months     ki0047075b-MAL-ED          PERU                           <25           148     267
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)        59     267
3-6 months     ki0047075b-MAL-ED          PERU                           >=30           60     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25           112     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)        39     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           90     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25            75     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)        64     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          100     239
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25           182     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)        88     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30           37     307
3-6 months     ki1000108-IRC              INDIA                          <25           248     397
3-6 months     ki1000108-IRC              INDIA                          [25-30)       121     397
3-6 months     ki1000108-IRC              INDIA                          >=30           28     397
3-6 months     ki1000109-EE               PAKISTAN                       <25            32     660
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)       254     660
3-6 months     ki1000109-EE               PAKISTAN                       >=30          374     660
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25           669    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)       323    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30          132    1124
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25           245     521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)       161     521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          115     521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25           289     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)       178     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          107     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25           362     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       214     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          119     695
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25           629    1649
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)       554    1649
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          466    1649
3-6 months     ki1101329-Keneba           GAMBIA                         <25           534    1394
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)       304    1394
3-6 months     ki1101329-Keneba           GAMBIA                         >=30          556    1394
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25           500     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)       294     942
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30          148     942
3-6 months     ki1119695-PROBIT           BELARUS                        <25          7223   13309
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)      3717   13309
3-6 months     ki1119695-PROBIT           BELARUS                        >=30         2369   13309
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25          3204    5877
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      1521    5877
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1152    5877
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25           311     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)       181     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30          313     805
3-6 months     ki1135781-COHORTS          INDIA                          <25          1956    4656
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)      1552    4656
3-6 months     ki1135781-COHORTS          INDIA                          >=30         1148    4656
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25         19020   25154
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)      4152   25154
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30         1982   25154
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25           103     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)        81     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           36     220
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25            91     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)        60     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30           43     194
6-12 months    ki0047075b-MAL-ED          INDIA                          <25           130     222
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)        72     222
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30           20     222
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25            60     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       125     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30           45     230
6-12 months    ki0047075b-MAL-ED          PERU                           <25           128     237
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)        55     237
6-12 months    ki0047075b-MAL-ED          PERU                           >=30           54     237
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25           109     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)        35     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           88     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25            69     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)        58     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           96     223
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25           189     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)        95     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           39     323
6-12 months    ki1000108-IRC              INDIA                          <25           250     400
6-12 months    ki1000108-IRC              INDIA                          [25-30)       122     400
6-12 months    ki1000108-IRC              INDIA                          >=30           28     400
6-12 months    ki1000109-EE               PAKISTAN                       <25             0       8
6-12 months    ki1000109-EE               PAKISTAN                       [25-30)         6       8
6-12 months    ki1000109-EE               PAKISTAN                       >=30            2       8
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25           706    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)       303    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          128    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25           140     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       114     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           78     332
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25           227     480
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       150     480
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          103     480
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25           272     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       174     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30           99     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25           351     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       207     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          118     676
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25           388    1074
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)       368    1074
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          318    1074
6-12 months    ki1101329-Keneba           GAMBIA                         <25           467    1304
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)       297    1304
6-12 months    ki1101329-Keneba           GAMBIA                         >=30          540    1304
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25           101     179
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)        39     179
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           39     179
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25           496     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)       304     950
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30          150     950
6-12 months    ki1119695-PROBIT           BELARUS                        <25          7015   12896
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)      3579   12896
6-12 months    ki1119695-PROBIT           BELARUS                        >=30         2302   12896
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25          2446    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      1211    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30          903    4560
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25           339     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)       189     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30          334     862
6-12 months    ki1135781-COHORTS          INDIA                          <25          1501    3765
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)      1266    3765
6-12 months    ki1135781-COHORTS          INDIA                          >=30          998    3765
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25          1023    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)       680    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30          716    2419
6-12 months    ki1148112-LCNI-5           MALAWI                         <25           152     357
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)        90     357
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30          115     357
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25         14803   19657
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)      3220   19657
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30         1634   19657
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25            90     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)        80     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           36     206
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25            74     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)        51     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     165
12-24 months   ki0047075b-MAL-ED          INDIA                          <25           131     223
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)        72     223
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30           20     223
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25            58     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       123     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     226
12-24 months   ki0047075b-MAL-ED          PERU                           <25            96     191
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)        47     191
12-24 months   ki0047075b-MAL-ED          PERU                           >=30           48     191
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25           105     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)        35     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           90     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25            58     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)        60     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           89     207
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25           191     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)        96     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           37     324
12-24 months   ki1000108-IRC              INDIA                          <25           247     396
12-24 months   ki1000108-IRC              INDIA                          [25-30)       121     396
12-24 months   ki1000108-IRC              INDIA                          >=30           28     396
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25           200     419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       127     419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           92     419
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25           239     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       142     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           77     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25           266     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       150     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     495
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25             0       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1       2
12-24 months   ki1101329-Keneba           GAMBIA                         <25           405    1173
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)       262    1173
12-24 months   ki1101329-Keneba           GAMBIA                         >=30          506    1173
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25           382     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)       234     734
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30          118     734
12-24 months   ki1119695-PROBIT           BELARUS                        <25          1321    2533
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)       712    2533
12-24 months   ki1119695-PROBIT           BELARUS                        >=30          500    2533
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25           151     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)        94     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           57     302
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25           353     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)       194     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30          327     874
12-24 months   ki1135781-COHORTS          INDIA                          <25          1207    3118
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)      1050    3118
12-24 months   ki1135781-COHORTS          INDIA                          >=30          861    3118
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25           962    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)       645    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          653    2260
12-24 months   ki1148112-LCNI-5           MALAWI                         <25           112     254
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)        66     254
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30           76     254
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25          6829    9289
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)      1596    9289
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          864    9289


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/82885624-9f0d-4822-a935-ee40e9454b25/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/82885624-9f0d-4822-a935-ee40e9454b25/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0410366   -0.0866987    0.0046254
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                 0.0064781   -0.0463317    0.0592879
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0991672   -0.1791489   -0.0191855
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.1847992    0.1130117    0.2565867
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.2457375    0.1403807    0.3510943
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.1391832    0.0387421    0.2396243
0-3 months     ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0009412   -0.0514665    0.0495842
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0449360   -0.1107394    0.0208675
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0487898   -0.2113626    0.1137830
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.1116984    0.0522813    0.1711155
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                 0.0547805    0.0050510    0.1045101
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.0800761   -0.0000911    0.1602433
0-3 months     ki0047075b-MAL-ED          PERU                           <25                  NA                -0.1281695   -0.1699333   -0.0864057
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                -0.1667576   -0.2379511   -0.0955641
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.2251196   -0.2961396   -0.1540997
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1439666   -0.2045291   -0.0834041
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0728852   -0.1813870    0.0356166
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0624538   -0.1382040    0.0132964
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0013605   -0.0674511    0.0647302
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0201166   -0.0959801    0.0557469
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1007173   -0.1596113   -0.0418234
0-3 months     ki1000108-IRC              INDIA                          <25                  NA                -0.2737398   -0.3443439   -0.2031356
0-3 months     ki1000108-IRC              INDIA                          [25-30)              NA                -0.2317606   -0.3344827   -0.1290384
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                -0.2505504   -0.4524954   -0.0486054
0-3 months     ki1000109-EE               PAKISTAN                       <25                  NA                -0.3950829   -0.6146330   -0.1755327
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)              NA                -0.4255722   -0.5037125   -0.3474320
0-3 months     ki1000109-EE               PAKISTAN                       >=30                 NA                -0.3716210   -0.4212211   -0.3220208
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0352369    0.0190678    0.0514059
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0002615   -0.0453178    0.0447949
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0739080   -0.1345817   -0.0132343
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0974615   -0.1367820   -0.0581409
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.1305153   -0.1826824   -0.0783482
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.1480819   -0.1988412   -0.0973226
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0336974   -0.0584876   -0.0089073
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0416845   -0.0754551   -0.0079138
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0623830   -0.1054316   -0.0193343
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.1223821   -0.1486682   -0.0960959
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.1289364   -0.1599058   -0.0979669
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.1089030   -0.1510327   -0.0667732
0-3 months     ki1101329-Keneba           GAMBIA                         <25                  NA                -0.2280969   -0.2667597   -0.1894341
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.2972109   -0.3508068   -0.2436150
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3361569   -0.3729267   -0.2993871
0-3 months     ki1119695-PROBIT           BELARUS                        <25                  NA                -0.4263371   -0.4872873   -0.3653869
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.4501876   -0.5079833   -0.3923918
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.4513744   -0.5122513   -0.3904976
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.1345137   -0.1485460   -0.1204815
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.1326940   -0.1528978   -0.1124903
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.1827438   -0.2069435   -0.1585441
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.4961006   -0.5314844   -0.4607169
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.5941931   -0.6401680   -0.5482182
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.5624745   -0.5971374   -0.5278116
0-3 months     ki1135781-COHORTS          INDIA                          <25                  NA                -0.0518501   -0.0638610   -0.0398392
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0598066   -0.0741063   -0.0455070
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.1126416   -0.1309334   -0.0943499
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0774080    0.0718922    0.0829237
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                 0.0589482    0.0480221    0.0698743
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                 0.0400825    0.0252139    0.0549512
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0338225   -0.0685447    0.0008998
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0171085   -0.0539684    0.0197515
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0020685   -0.0577728    0.0536358
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0624323    0.0080940    0.1167705
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0565200   -0.0132347    0.1262747
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0616376   -0.0058315    0.1291068
3-6 months     ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0311497   -0.0691888    0.0068894
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0636763   -0.1066892   -0.0206633
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0579857   -0.1664108    0.0504394
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0106034   -0.0593415    0.0381347
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0232748   -0.0614449    0.0148952
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0308561   -0.0857380    0.0240258
3-6 months     ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0239365   -0.0169982    0.0648711
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                 0.0604394   -0.0156726    0.1365514
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                 0.0033668   -0.0527312    0.0594649
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                 0.0397042   -0.0107362    0.0901445
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0123250   -0.1329725    0.1083225
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0442101   -0.1044020    0.0159818
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0756909   -0.1364876   -0.0148942
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1181264   -0.1776794   -0.0585733
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0362331   -0.0839947    0.0115285
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0986538   -0.1608658   -0.0364417
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0753078   -0.1542616    0.0036459
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1484354   -0.3124587    0.0155880
3-6 months     ki1000108-IRC              INDIA                          <25                  NA                -0.0567585   -0.0939215   -0.0195955
3-6 months     ki1000108-IRC              INDIA                          [25-30)              NA                -0.0461396   -0.1025452    0.0102659
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                -0.0336443   -0.1528014    0.0855127
3-6 months     ki1000109-EE               PAKISTAN                       <25                  NA                 0.1055906   -0.0047785    0.2159596
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)              NA                 0.1101953    0.0608555    0.1595351
3-6 months     ki1000109-EE               PAKISTAN                       >=30                 NA                 0.0378671    0.0029592    0.0727750
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0079358   -0.0235554    0.0076838
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0244866   -0.0553115    0.0063382
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0415101   -0.0908503    0.0078300
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0625267   -0.0922288   -0.0328246
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0267364   -0.0697000    0.0162272
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0616876   -0.1107096   -0.0126656
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0239468   -0.0460848   -0.0018088
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0203285   -0.0508874    0.0102303
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0476473   -0.0877887   -0.0075060
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0293783    0.0062897    0.0524670
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                 0.0346445    0.0048751    0.0644139
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                 0.0046981   -0.0380083    0.0474044
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0857196   -0.1134627   -0.0579765
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1012405   -0.1301402   -0.0723408
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0665699   -0.0963385   -0.0368012
3-6 months     ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0061343   -0.0252987    0.0375673
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0284668   -0.0699436    0.0130099
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0319487   -0.0585817   -0.0053157
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.1571087   -0.1829629   -0.1312546
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.1588362   -0.1908075   -0.1268648
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.2102480   -0.2562210   -0.1642749
3-6 months     ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0507643    0.0316369    0.0698917
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0465312    0.0226494    0.0704129
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0366968    0.0127481    0.0606456
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0083683   -0.0044385    0.0211751
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0166560   -0.0348337    0.0015217
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0043972   -0.0249265    0.0161321
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0794714   -0.1020429   -0.0568999
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.1175130   -0.1462109   -0.0888150
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.1008526   -0.1259621   -0.0757430
3-6 months     ki1135781-COHORTS          INDIA                          <25                  NA                -0.0601668   -0.0695552   -0.0507783
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0609957   -0.0724115   -0.0495800
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0735276   -0.0873959   -0.0596593
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0014616   -0.0068377    0.0039146
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0079967   -0.0203470    0.0043536
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0136994   -0.0294511    0.0020524
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0672663   -0.0828331   -0.0516995
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0898311   -0.1057603   -0.0739019
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0988307   -0.1240057   -0.0736556
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0027063   -0.0277427    0.0331553
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0026407   -0.0301876    0.0354689
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0202043   -0.0179291    0.0583377
6-12 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0851306   -0.1008045   -0.0694567
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0709903   -0.0909530   -0.0510275
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0752227   -0.1204101   -0.0300352
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0483057   -0.0678022   -0.0288093
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0489723   -0.0638708   -0.0340738
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0490448   -0.0730314   -0.0250583
6-12 months    ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0280398   -0.0474319   -0.0086477
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                -0.0662739   -0.0959253   -0.0366225
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0297951   -0.0561842   -0.0034061
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0554856   -0.0798946   -0.0310766
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0112861   -0.0567467    0.0341744
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0685482   -0.0969725   -0.0401239
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.1086188   -0.1403872   -0.0768504
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1214723   -0.1493806   -0.0935640
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1366155   -0.1590567   -0.1141743
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.1083304   -0.1343119   -0.0823489
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0870191   -0.1260156   -0.0480226
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0857793   -0.1492448   -0.0223138
6-12 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0231221   -0.0407252   -0.0055189
6-12 months    ki1000108-IRC              INDIA                          [25-30)              NA                -0.0354173   -0.0553363   -0.0154984
6-12 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.0108791   -0.0510785    0.0293203
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0814597   -0.0885833   -0.0743362
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0967527   -0.1111741   -0.0823314
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0876478   -0.1094201   -0.0658754
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                -0.0817157   -0.1391874   -0.0242440
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                -0.1395655   -0.1740114   -0.1051196
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -0.1090907   -0.1732462   -0.0449352
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0470217   -0.0604119   -0.0336314
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0633485   -0.0801805   -0.0465165
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0521129   -0.0724070   -0.0318189
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0581799   -0.0676233   -0.0487365
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0690225   -0.0823855   -0.0556595
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0635394   -0.0787333   -0.0483455
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0348644   -0.0450864   -0.0246424
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.0273553   -0.0394685   -0.0152422
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0291399   -0.0483118   -0.0099680
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0550051   -0.0712631   -0.0387471
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0609334   -0.0766856   -0.0451813
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0639737   -0.0796828   -0.0482646
6-12 months    ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0541208   -0.0673332   -0.0409084
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0550351   -0.0705896   -0.0394807
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0713322   -0.0838250   -0.0588393
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0725190   -0.0898674   -0.0551706
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                -0.0812761   -0.1090690   -0.0534832
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0796727   -0.1073314   -0.0520140
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0519866   -0.0634960   -0.0404771
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.0731258   -0.0876378   -0.0586138
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0693710   -0.0885673   -0.0501747
6-12 months    ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0478919    0.0294354    0.0663484
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0321898    0.0152127    0.0491670
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0409069    0.0252713    0.0565424
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0491159   -0.0557066   -0.0425252
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0471245   -0.0561137   -0.0381353
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0528250   -0.0622923   -0.0433577
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.1057110   -0.1170870   -0.0943350
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.1248814   -0.1388304   -0.1109323
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.1036543   -0.1152457   -0.0920630
6-12 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0929029   -0.0992758   -0.0865299
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0980874   -0.1049496   -0.0912252
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0994576   -0.1076212   -0.0912941
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0925463   -0.1005531   -0.0845396
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                -0.1075649   -0.1169477   -0.0981822
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.1032593   -0.1126023   -0.0939163
6-12 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                -0.0154943   -0.0338083    0.0028197
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                 0.0103773   -0.0134388    0.0341934
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0093454   -0.0291373    0.0104465
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0724951   -0.0757012   -0.0692889
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0810177   -0.0875867   -0.0744487
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0829682   -0.0928584   -0.0730779
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0173536   -0.0256200   -0.0090873
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0181898   -0.0269768   -0.0094027
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0183302   -0.0304205   -0.0062398
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0036871   -0.0119155    0.0192896
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                -0.0068962   -0.0225216    0.0087291
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0033973   -0.0293786    0.0225840
12-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0073605   -0.0137583   -0.0009627
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0133406   -0.0230399   -0.0036414
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0173918   -0.0341200   -0.0006635
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0304615   -0.0398910   -0.0210320
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0285799   -0.0351564   -0.0220034
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0308325   -0.0440413   -0.0176238
12-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0173790   -0.0268075   -0.0079505
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                 0.0019363   -0.0129408    0.0168134
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0039690   -0.0177179    0.0097799
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0117884   -0.0223789   -0.0011979
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0299184   -0.0499180   -0.0099188
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0138257   -0.0263744   -0.0012769
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0521077   -0.0671151   -0.0371002
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0464405   -0.0621825   -0.0306985
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0262013   -0.0366281   -0.0157745
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0395051   -0.0526540   -0.0263563
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0497178   -0.0675324   -0.0319032
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0656641   -0.0992490   -0.0320792
12-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0275788   -0.0364427   -0.0187149
12-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                -0.0336275   -0.0463815   -0.0208736
12-24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.0606964   -0.0871413   -0.0342514
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0421345   -0.0492955   -0.0349735
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0407203   -0.0486831   -0.0327576
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0373248   -0.0467126   -0.0279371
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0084335   -0.0136249   -0.0032422
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0067478   -0.0137703    0.0002747
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0099852   -0.0196980   -0.0002724
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0036149   -0.0089033    0.0016734
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.0121798   -0.0197672   -0.0045925
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0006212   -0.0104015    0.0091591
12-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0251116   -0.0310340   -0.0191892
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0245759   -0.0328592   -0.0162926
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0147803   -0.0208599   -0.0087008
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0161723   -0.0232625   -0.0090820
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.0160053   -0.0250866   -0.0069240
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0127255   -0.0242002   -0.0012509
12-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0425579   -0.0615724   -0.0235434
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.0502330   -0.0689188   -0.0315473
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.0341200   -0.0543517   -0.0138884
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0482445   -0.0615717   -0.0349173
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0553836   -0.0705875   -0.0401797
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0557228   -0.0780694   -0.0333761
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0345333   -0.0405416   -0.0285250
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.0306212   -0.0379288   -0.0233136
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0235053   -0.0293843   -0.0176262
12-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0353898   -0.0383984   -0.0323812
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0360513   -0.0393975   -0.0327050
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0365974   -0.0404797   -0.0327151
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0596051   -0.0635028   -0.0557074
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                -0.0570938   -0.0618930   -0.0522945
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.0553261   -0.0598883   -0.0507639
12-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                -0.0187995   -0.0278831   -0.0097158
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                -0.0213269   -0.0348952   -0.0077585
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0048038   -0.0166891    0.0070816
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0185826   -0.0207143   -0.0164509
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0202847   -0.0245490   -0.0160204
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0182033   -0.0244496   -0.0119569


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0193066   -0.0586302    0.0200170
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3937707   -0.4365243   -0.3510171
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1182571   -0.1452753   -0.0912390
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0413143   -0.0594662   -0.0231624
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1431748   -0.1535906   -0.1327590
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0695612   -0.0778723   -0.0612501
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705118    0.0655570    0.0754666
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0441175   -0.0722008   -0.0160342
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0689861    0.0407853    0.0971869
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0512815   -0.0734273   -0.0291358
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0272428   -0.0436954   -0.0107902
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0855224   -0.1021794   -0.0688654
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0166009   -0.0350544    0.0018526
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0006104   -0.0099457    0.0087249
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0963382   -0.1109683   -0.0817082
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0637374   -0.0701991   -0.0572756
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0035046   -0.0083701    0.0013610
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0796519   -0.0916308   -0.0676731
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0532163   -0.0625510   -0.0438816
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0626151   -0.0695574   -0.0556729
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0596919   -0.0689285   -0.0504554
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0614564   -0.0693246   -0.0535883
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0759856   -0.0889912   -0.0629800
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0614960   -0.0697225   -0.0532696
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0493215   -0.0539815   -0.0446616
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1091173   -0.1161782   -0.1020564
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0963837   -0.1004421   -0.0923253
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0999391   -0.1050516   -0.0948266
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0069913   -0.0187672    0.0047845
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0747617   -0.0776009   -0.0719225
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0101910   -0.0153291   -0.0050528
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0406498   -0.0453177   -0.0359819
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.0081718   -0.0120131   -0.0043304
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0205353   -0.0243517   -0.0167190
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0518781   -0.0610844   -0.0426717
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0295389   -0.0332082   -0.0258696
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0359460   -0.0378892   -0.0340029
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0576520   -0.0601763   -0.0551277
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0152685   -0.0217374   -0.0087996
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188397   -0.0206878   -0.0169917


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25                0.0475147   -0.0222986    0.1173280
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0581306   -0.1502289    0.0339677
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0609383   -0.0665509    0.1884275
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0456160   -0.1690740    0.0778420
0-3 months     ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0439948   -0.1269581    0.0389685
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0478486   -0.2180918    0.1223945
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0569178   -0.1343995    0.0205639
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0316222   -0.1314079    0.0681634
0-3 months     ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              <25               -0.0385882   -0.1211274    0.0439511
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0969501   -0.1793397   -0.0145605
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25                0.0710814   -0.0531782    0.1953411
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25                0.0815128   -0.0154713    0.1784969
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0187561   -0.1193704    0.0818582
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0993568   -0.1878807   -0.0108330
0-3 months     ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          [25-30)              <25                0.0419792   -0.0826674    0.1666258
0-3 months     ki1000108-IRC              INDIA                          >=30                 <25                0.0231894   -0.1907422    0.2371209
0-3 months     ki1000109-EE               PAKISTAN                       <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)              <25               -0.0304894   -0.2635305    0.2025518
0-3 months     ki1000109-EE               PAKISTAN                       >=30                 <25                0.0234619   -0.2016213    0.2485451
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0354983   -0.0845136    0.0135170
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.1091449   -0.1731243   -0.0451654
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0330538   -0.0983800    0.0322723
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               -0.0506204   -0.1148280    0.0135872
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               -0.0079870   -0.0498799    0.0339058
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0286856   -0.0783619    0.0209908
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               -0.0065543   -0.0471753    0.0340668
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0134791   -0.0361785    0.0631367
0-3 months     ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0691140   -0.1351998   -0.0030282
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.1080600   -0.1614157   -0.0547043
0-3 months     ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0238505   -0.0387774   -0.0089235
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0250373   -0.0417273   -0.0083474
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25                0.0018197   -0.0227790    0.0264184
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0482301   -0.0762038   -0.0202564
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0980925   -0.1561072   -0.0400778
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.0663739   -0.1159070   -0.0168408
0-3 months     ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0079565   -0.0266311    0.0107181
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0607915   -0.0826741   -0.0389088
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0184598   -0.0296883   -0.0072312
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0373254   -0.0532391   -0.0214117
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25                0.0167140   -0.0339248    0.0673528
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25                0.0317540   -0.0338860    0.0973939
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               -0.0059123   -0.0943338    0.0825092
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0007947   -0.0874245    0.0858352
3-6 months     ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0325265   -0.0899468    0.0248937
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0268360   -0.1417402    0.0880682
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0126715   -0.0745775    0.0492346
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0202527   -0.0936518    0.0531464
3-6 months     ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              <25                0.0365030   -0.0499186    0.1229245
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0205696   -0.0900148    0.0488756
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               -0.0520291   -0.1827963    0.0787380
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.0839143   -0.1624464   -0.0053822
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0424354   -0.1275402    0.0426693
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0394578   -0.0378559    0.1167716
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25                0.0233459   -0.0771729    0.1238647
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               -0.0497816   -0.2252068    0.1256436
3-6 months     ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          [25-30)              <25                0.0106189   -0.0569288    0.0781665
3-6 months     ki1000108-IRC              INDIA                          >=30                 <25                0.0231142   -0.1017036    0.1479320
3-6 months     ki1000109-EE               PAKISTAN                       <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)              <25                0.0046047   -0.1162909    0.1255003
3-6 months     ki1000109-EE               PAKISTAN                       >=30                 <25               -0.0677235   -0.1834814    0.0480344
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0165509   -0.0423189    0.0092172
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.0335744   -0.0793760    0.0122273
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25                0.0357903   -0.0164408    0.0880214
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25                0.0008391   -0.0564791    0.0581572
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25                0.0036183   -0.0341168    0.0413534
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0237005   -0.0695418    0.0221407
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0052661   -0.0324075    0.0429398
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               -0.0246803   -0.0732284    0.0238678
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0155209   -0.0555818    0.0245399
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0191497   -0.0215424    0.0598419
3-6 months     ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0346011   -0.0866430    0.0174407
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.0380830   -0.0792819    0.0031159
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0017275   -0.0428444    0.0393895
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               -0.0531392   -0.1058836   -0.0003949
3-6 months     ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0042331   -0.0199557    0.0114895
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0140675   -0.0311991    0.0030642
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               -0.0250243   -0.0472603   -0.0027882
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0127655   -0.0369619    0.0114309
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0380416   -0.0745525   -0.0015307
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.0213812   -0.0551445    0.0123821
3-6 months     ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0008290   -0.0156094    0.0139515
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0133608   -0.0301081    0.0033865
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0065352   -0.0197553    0.0066850
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0122378   -0.0286038    0.0041281
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               -0.0225648   -0.0448373   -0.0002923
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0315643   -0.0611635   -0.0019652
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               -0.0000657   -0.0448410    0.0447097
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <25                0.0174980   -0.0313006    0.0662965
6-12 months    ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              <25                0.0141403   -0.0112405    0.0395211
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 <25                0.0099079   -0.0379207    0.0577365
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0006665   -0.0252038    0.0238707
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0007391   -0.0316497    0.0301715
6-12 months    ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              <25               -0.0382341   -0.0736637   -0.0028045
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0017553   -0.0345034    0.0309927
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25                0.0441994   -0.0073996    0.0957985
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.0130626   -0.0505292    0.0244039
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0128535   -0.0551394    0.0294325
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0279967   -0.0668919    0.0108985
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25                0.0213113   -0.0255477    0.0681703
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25                0.0225511   -0.0460267    0.0911288
6-12 months    ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          [25-30)              <25               -0.0122953   -0.0388779    0.0142874
6-12 months    ki1000108-IRC              INDIA                          >=30                 <25                0.0122429   -0.0316417    0.0561276
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0152930   -0.0355712    0.0049852
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.0061880   -0.0247912    0.0124151
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               -0.0578498   -0.1248536    0.0091541
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               -0.0273750   -0.1135081    0.0587582
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0163268   -0.0378353    0.0051816
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               -0.0050913   -0.0294048    0.0192223
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               -0.0108426   -0.0272056    0.0055203
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0053595   -0.0232490    0.0125299
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0075091   -0.0083407    0.0233589
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0057245   -0.0160022    0.0274512
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0059284   -0.0285658    0.0167091
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0089686   -0.0315761    0.0136389
6-12 months    ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0009143   -0.0213229    0.0194942
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.0172114   -0.0353949    0.0009721
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               -0.0087571   -0.0415201    0.0240059
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               -0.0071537   -0.0398029    0.0254955
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0211392   -0.0396612   -0.0026172
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               -0.0173844   -0.0397667    0.0049979
6-12 months    ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0157021   -0.0242552   -0.0071490
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0069850   -0.0198226    0.0058525
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25                0.0019914   -0.0091551    0.0131378
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0037091   -0.0152446    0.0078264
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0191704   -0.0371701   -0.0011707
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25                0.0020567   -0.0141844    0.0182977
6-12 months    ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0051846   -0.0145496    0.0041805
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0065548   -0.0169113    0.0038018
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               -0.0150186   -0.0273532   -0.0026839
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               -0.0107130   -0.0230174    0.0015914
6-12 months    ki1148112-LCNI-5           MALAWI                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25                0.0258716   -0.0041718    0.0559151
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25                0.0061489   -0.0208163    0.0331141
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0085226   -0.0158171   -0.0012281
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0104731   -0.0207182   -0.0002280
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               -0.0008361   -0.0129003    0.0112280
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0009765   -0.0156226    0.0136696
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               -0.0105833   -0.0326648    0.0114982
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0070844   -0.0373906    0.0232218
12-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0059801   -0.0175994    0.0056392
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0100312   -0.0279412    0.0078787
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25                0.0018817   -0.0096147    0.0133780
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0003710   -0.0166002    0.0158582
12-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25                0.0193153    0.0017021    0.0369285
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25                0.0134100   -0.0032612    0.0300813
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               -0.0181300   -0.0407605    0.0045006
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.0020372   -0.0184576    0.0143832
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25                0.0056672   -0.0160822    0.0274165
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0259064    0.0076323    0.0441804
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               -0.0102127   -0.0323543    0.0119290
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               -0.0261590   -0.0622261    0.0099082
12-24 months   ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               -0.0060487   -0.0215804    0.0094829
12-24 months   ki1000108-IRC              INDIA                          >=30                 <25               -0.0331176   -0.0610085   -0.0052266
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25                0.0014141   -0.0092950    0.0121233
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25                0.0048097   -0.0069975    0.0166169
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25                0.0016858   -0.0070473    0.0104188
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0015517   -0.0125648    0.0094614
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               -0.0085649   -0.0178134    0.0006836
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0029937   -0.0081248    0.0141123
12-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25                0.0005357   -0.0096470    0.0107185
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25                0.0103313    0.0018439    0.0188187
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25                0.0001670   -0.0113544    0.0116883
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25                0.0034467   -0.0100418    0.0169352
12-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0076752   -0.0222436    0.0068933
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25                0.0084378   -0.0084670    0.0253426
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               -0.0071391   -0.0273572    0.0130791
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0074783   -0.0334973    0.0185407
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25                0.0039121   -0.0055484    0.0133726
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25                0.0110280    0.0026219    0.0194342
12-24 months   ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0006614   -0.0051613    0.0038385
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0012076   -0.0061192    0.0037040
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25                0.0025113   -0.0036713    0.0086940
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25                0.0042790   -0.0017215    0.0102795
12-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               -0.0025274   -0.0188557    0.0138009
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25                0.0139957   -0.0009634    0.0289548
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0017021   -0.0064445    0.0030403
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25                0.0003793   -0.0062017    0.0069602
