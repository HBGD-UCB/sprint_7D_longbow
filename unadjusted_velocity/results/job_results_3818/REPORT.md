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

**Outcome Variable:** y_rate_len

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
![](/tmp/b21a000e-43dd-4ecf-9660-e5453c7796b3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b21a000e-43dd-4ecf-9660-e5453c7796b3/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                3.5399888   3.4499198   3.6300578
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                3.6669053   3.5635942   3.7702165
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                3.4103361   3.2614171   3.5592551
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25                  NA                4.0422803   3.8972333   4.1873274
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                4.1253257   3.9225660   4.3280854
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                3.9695364   3.7798515   4.1592213
0-3 months     ki0047075b-MAL-ED          INDIA                          <25                  NA                3.5978706   3.4993580   3.6963832
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                3.5532987   3.4147399   3.6918575
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                3.5419857   3.2036695   3.8803019
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25                  NA                3.8516597   3.7142147   3.9891048
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                3.7872257   3.6791396   3.8953118
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                3.8684017   3.7043832   4.0324202
0-3 months     ki0047075b-MAL-ED          PERU                           <25                  NA                3.3750858   3.2914090   3.4587625
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                3.2963193   3.1594289   3.4332096
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                3.1855717   3.0559143   3.3152290
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                3.3506154   3.2275726   3.4736583
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                3.5198812   3.3011170   3.7386453
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                3.5283329   3.3746264   3.6820395
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                3.5780505   3.4519076   3.7041934
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                3.5419426   3.3821629   3.7017222
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                3.3613532   3.2454450   3.4772614
0-3 months     ki1000108-IRC              INDIA                          <25                  NA                3.1306811   2.9897080   3.2716542
0-3 months     ki1000108-IRC              INDIA                          [25-30)              NA                3.2492812   3.0440484   3.4545139
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                3.2241037   2.8128362   3.6353712
0-3 months     ki1000109-EE               PAKISTAN                       <25                  NA                2.5313825   2.0941404   2.9686246
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)              NA                2.5969729   2.4466157   2.7473301
0-3 months     ki1000109-EE               PAKISTAN                       >=30                 NA                2.7138639   2.6151471   2.8125807
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                3.6395544   3.6012708   3.6778380
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                3.5964736   3.5213386   3.6716086
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                3.4230517   3.2875436   3.5585598
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                3.3542820   3.2753240   3.4332400
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                3.2898175   3.1834554   3.3961796
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                3.2598990   3.1534780   3.3663201
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                3.5047932   3.4520507   3.5575357
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                3.4748936   3.4006910   3.5490962
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                3.4323397   3.3387748   3.5259046
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                3.3031453   3.2478706   3.3584200
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                3.2857812   3.2210559   3.3505066
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                3.3325658   3.2440394   3.4210921
0-3 months     ki1101329-Keneba           GAMBIA                         <25                  NA                3.2549963   3.1783773   3.3316152
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                3.1288313   3.0231407   3.2345220
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                3.0395338   2.9671789   3.1118888
0-3 months     ki1119695-PROBIT           BELARUS                        <25                  NA                2.8514003   2.7333522   2.9694485
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.8175574   2.7081801   2.9269346
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.8166427   2.7010052   2.9322802
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                3.3865636   3.3583716   3.4147557
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                3.3929841   3.3526409   3.4333273
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                3.2909079   3.2420860   3.3397298
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25                  NA                2.7064964   2.6363342   2.7766587
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                2.5166980   2.4271031   2.6062930
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                2.5688624   2.4992691   2.6384558
0-3 months     ki1135781-COHORTS          INDIA                          <25                  NA                3.5624408   3.5379506   3.5869309
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                3.5554896   3.5260145   3.5849647
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                3.4494771   3.4121826   3.4867717
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                3.7273319   3.7156989   3.7389649
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                3.7088034   3.6865137   3.7310930
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                3.6691471   3.6390223   3.6992720
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                1.8996443   1.8259887   1.9732999
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.9482478   1.8690739   2.0274218
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.9648583   1.8462785   2.0834381
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25                  NA                2.1557905   2.0381153   2.2734656
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                2.1340349   1.9815044   2.2865655
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                2.1491961   2.0048599   2.2935324
3-6 months     ki0047075b-MAL-ED          INDIA                          <25                  NA                1.8976103   1.8144220   1.9807985
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.8387953   1.7483274   1.9292633
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.8643139   1.6295724   2.0990554
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25                  NA                1.9710257   1.8688964   2.0731549
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                1.9694397   1.8891403   2.0497391
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                1.9605482   1.8425705   2.0785259
3-6 months     ki0047075b-MAL-ED          PERU                           <25                  NA                2.0112793   1.9247210   2.0978376
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                2.0895435   1.9272485   2.2518385
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                1.9656562   1.8473500   2.0839624
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                2.0563301   1.9488948   2.1637653
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.9733678   1.7217498   2.2249859
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.8910829   1.7617890   2.0203768
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                1.8195789   1.6906009   1.9485568
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.7226949   1.5973128   1.8480770
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.9067067   1.8067929   2.0066204
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                1.7989702   1.6675162   1.9304241
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                1.8599216   1.6937500   2.0260933
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                1.6939794   1.3430133   2.0449456
3-6 months     ki1000108-IRC              INDIA                          <25                  NA                1.8638029   1.7850038   1.9426021
3-6 months     ki1000108-IRC              INDIA                          [25-30)              NA                1.9037377   1.7849761   2.0224992
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                1.9304333   1.6721154   2.1887511
3-6 months     ki1000109-EE               PAKISTAN                       <25                  NA                2.0601528   1.8197290   2.3005767
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)              NA                2.1130893   2.0067724   2.2194062
3-6 months     ki1000109-EE               PAKISTAN                       >=30                 NA                1.9572944   1.8826466   2.0319421
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                1.9595014   1.9230252   1.9959776
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.9275741   1.8564936   1.9986545
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.8770350   1.7725042   1.9815657
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                1.8092662   1.7443796   1.8741529
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.8819784   1.7881577   1.9757991
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.8103511   1.7057717   1.9149306
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                1.9753785   1.9287600   2.0219970
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.9795834   1.9143458   2.0448209
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.9150974   1.8276901   2.0025048
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                2.0102509   1.9607224   2.0597793
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                2.0224120   1.9569894   2.0878346
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.9623708   1.8695167   2.0552249
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                1.7939735   1.7344956   1.8534515
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.7592153   1.6971194   1.8213112
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.8336520   1.7686930   1.8986110
3-6 months     ki1101329-Keneba           GAMBIA                         <25                  NA                2.0425047   1.9756987   2.1093108
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                1.9735027   1.8841929   2.0628125
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                1.9572471   1.9003386   2.0141556
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25                  NA                1.7246800   1.6710110   1.7783491
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                1.7269343   1.6588244   1.7950441
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                1.5996630   1.4999492   1.6993769
3-6 months     ki1119695-PROBIT           BELARUS                        <25                  NA                2.0965357   2.0555547   2.1375166
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.0934984   2.0425520   2.1444448
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.0729338   2.0219854   2.1238822
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                1.9937950   1.9663489   2.0212410
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.9435421   1.9048538   1.9822304
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.9671461   1.9233535   2.0109387
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25                  NA                1.8015707   1.7540017   1.8491397
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                1.7168257   1.6571745   1.7764769
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                1.7480164   1.6951370   1.8008958
3-6 months     ki1135781-COHORTS          INDIA                          <25                  NA                1.8618803   1.8415338   1.8822267
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                1.8659158   1.8410370   1.8907946
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                1.8313494   1.8012824   1.8614163
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                1.9225011   1.9110392   1.9339629
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                1.9178771   1.8910341   1.9447200
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                1.9012074   1.8672388   1.9351759
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                1.1403876   1.1027396   1.1780356
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.1007165   1.0621810   1.1392519
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.0707905   1.0128226   1.1287584
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                1.3766939   1.3059057   1.4474821
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                1.3800574   1.3014405   1.4586742
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                1.4155493   1.3200305   1.5110680
6-12 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                1.1045883   1.0678127   1.1413639
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.1310172   1.0850019   1.1770325
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.1455701   1.0365553   1.2545849
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                1.2175366   1.1693627   1.2657106
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                1.2248147   1.1886909   1.2609385
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                1.2224092   1.1659591   1.2788594
6-12 months    ki0047075b-MAL-ED          PERU                           <25                  NA                1.2307778   1.1857953   1.2757602
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                1.1433135   1.0737648   1.2128622
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                1.2296866   1.1679962   1.2913769
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                1.1785093   1.1210096   1.2360089
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.3061941   1.1984208   1.4139674
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.1567716   1.0891622   1.2243810
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                1.0426439   0.9675575   1.1177303
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.9986415   0.9305284   1.0667547
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9747056   0.9223476   1.0270635
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                1.0396667   0.9786108   1.1007225
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                1.0953624   1.0066101   1.1841146
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                1.0926686   0.9453553   1.2399818
6-12 months    ki1000108-IRC              INDIA                          <25                  NA                1.2509817   1.2107014   1.2912620
6-12 months    ki1000108-IRC              INDIA                          [25-30)              NA                1.2321258   1.1878748   1.2763768
6-12 months    ki1000108-IRC              INDIA                          >=30                 NA                1.2986411   1.2125965   1.3846857
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                1.1134212   1.0981740   1.1286683
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.0681627   1.0338610   1.1024644
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.0862845   1.0308507   1.1417182
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                1.0839972   0.9416317   1.2263626
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.9348820   0.8492693   1.0204947
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                1.0001921   0.8486563   1.1517279
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                1.1841039   1.1514233   1.2167845
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.1426783   1.1033212   1.1820354
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.1681469   1.1183914   1.2179025
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                1.1837547   1.1602324   1.2072769
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.1602978   1.1272004   1.1933951
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.1667470   1.1280911   1.2054030
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                1.2162469   1.1919577   1.2405362
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                1.2452118   1.2156066   1.2748170
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.2335188   1.1883440   1.2786937
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                1.2060372   1.1680923   1.2439820
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.1923155   1.1554060   1.2292249
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.1895960   1.1523576   1.2268344
6-12 months    ki1101329-Keneba           GAMBIA                         <25                  NA                1.1988356   1.1679181   1.2297531
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                1.2002484   1.1631985   1.2372983
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                1.1538496   1.1241667   1.1835325
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                1.1104841   1.0687171   1.1522512
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                1.1019232   1.0367308   1.1671156
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                1.1005919   1.0340305   1.1671533
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                1.1936526   1.1664634   1.2208418
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                1.1389643   1.1040240   1.1739046
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                1.1430089   1.0969587   1.1890592
6-12 months    ki1119695-PROBIT           BELARUS                        <25                  NA                1.4820352   1.4397755   1.5242948
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                1.4493645   1.4086361   1.4900930
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                1.4705747   1.4350180   1.5061313
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                1.1982940   1.1828732   1.2137148
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.2042032   1.1831639   1.2252425
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.1889455   1.1665630   1.2113281
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                1.0299631   1.0023149   1.0576113
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.9796273   0.9460207   1.0132339
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                1.0289930   1.0007543   1.0572317
6-12 months    ki1135781-COHORTS          INDIA                          <25                  NA                1.0876246   1.0724744   1.1027748
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                1.0859543   1.0694957   1.1024128
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                1.0717752   1.0520634   1.0914870
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                1.0854879   1.0664251   1.1045506
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                1.0521972   1.0297083   1.0746862
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                1.0561540   1.0338637   1.0784444
6-12 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                1.2573019   1.2135940   1.3010099
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                1.3233825   1.2670961   1.3796689
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                1.2648093   1.2166232   1.3129954
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                1.1113952   1.1036845   1.1191058
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                1.0969698   1.0819080   1.1120316
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                1.0884660   1.0654151   1.1115170
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.8504808   0.8265006   0.8744610
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.8460826   0.8193825   0.8727827
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.8344795   0.7990750   0.8698840
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                0.9934168   0.9466542   1.0401794
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.9701000   0.9244013   1.0157987
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.9745023   0.9026541   1.0463505
12-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.8879526   0.8661958   0.9097094
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.8652031   0.8322146   0.8981916
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.8773450   0.8233016   0.9313883
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.8561053   0.8264707   0.8857399
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.8639915   0.8437125   0.8842706
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.8626891   0.8251071   0.9002710
12-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.8205966   0.7920435   0.8491498
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.8811463   0.8382745   0.9240181
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.8637666   0.8245907   0.9029426
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.8714299   0.8394702   0.9033896
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.8519498   0.7939442   0.9099554
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.8751122   0.8381845   0.9120399
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7322980   0.6858529   0.7787432
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7377390   0.6915125   0.7839654
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8077391   0.7768236   0.8386545
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.7534394   0.7184699   0.7884090
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.7320966   0.6851839   0.7790094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6885138   0.6022386   0.7747890
12-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.8364120   0.8121357   0.8606884
12-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.8307191   0.7950867   0.8663516
12-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.7630580   0.6865571   0.8395589
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.7494905   0.7277305   0.7712505
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7402565   0.7144963   0.7660168
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.7663468   0.7362396   0.7964541
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.8568468   0.8401716   0.8735221
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.8629505   0.8416532   0.8842478
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8497846   0.8204304   0.8791387
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.8766943   0.8612706   0.8921180
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.8657106   0.8429482   0.8884730
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.8905230   0.8610370   0.9200091
12-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.8335936   0.8173888   0.8497984
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.8413977   0.8171521   0.8656433
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.8547571   0.8378270   0.8716873
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.8368422   0.8145463   0.8591380
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.8365058   0.8108634   0.8621483
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.8439945   0.8063525   0.8816365
12-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.8601771   0.8054676   0.9148865
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8393596   0.7810202   0.8976991
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8896771   0.8232010   0.9561532
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.7219653   0.6844519   0.7594786
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6975331   0.6542028   0.7408633
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6960139   0.6335535   0.7584743
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7687297   0.7512506   0.7862088
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7715925   0.7496414   0.7935437
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7954655   0.7780219   0.8129091
12-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.8172799   0.8079469   0.8266128
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.8268704   0.8165698   0.8371710
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.8111255   0.7996460   0.8226050
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.7027700   0.6914564   0.7140837
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.7108323   0.6968487   0.7248159
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7085809   0.6953153   0.7218465
12-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.8342668   0.8079537   0.8605799
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.8315875   0.7899942   0.8731808
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.8595001   0.8260526   0.8929476
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.7962759   0.7900584   0.8024933
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.7994351   0.7874501   0.8114201
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.7935157   0.7771063   0.8099251


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                3.5634447   3.5006347   3.6262547
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                3.5786345   3.4996189   3.6576501
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                3.8204935   3.7444190   3.8965681
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                3.3158605   3.2526447   3.3790763
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                3.4451859   3.3559092   3.5344627
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.4816904   3.4044928   3.5588880
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6592028   2.5754147   2.7429909
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                3.3146636   3.2597455   3.3695817
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                3.4826706   3.4434873   3.5218539
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1440476   3.0964801   3.1916152
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3701099   3.3491986   3.3910212
0-3 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5321245   3.5151264   3.5491226
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7184037   3.7080584   3.7287489
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.9280462   1.8787523   1.9773401
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                1.8755035   1.8147940   1.9362130
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.9680995   1.9120346   2.0241643
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                2.0183213   1.9525900   2.0840526
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.9811941   1.9001209   2.0622672
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8300902   1.7622436   1.8979368
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8037880   1.7029866   1.9045894
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8806738   1.8168757   1.9444719
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0222389   1.9616986   2.0827792
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9406419   1.8967379   1.9845458
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.8319753   1.7838844   1.8800662
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.9654454   1.9303798   2.0005110
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7935091   1.7576078   1.8294104
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9934517   1.9540350   2.0328685
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.7057418   1.6666784   1.7448052
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9755656   1.9556123   1.9955189
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7616932   1.7309393   1.7924472
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8556976   1.8416635   1.8697317
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9200600   1.9095953   1.9305247
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                1.1143928   1.0896103   1.1391753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                1.1168519   1.0888002   1.1449036
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                1.2224454   1.1966480   1.2482429
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                1.2102315   1.1775158   1.2429472
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                1.1895267   1.1483723   1.2306812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0019524   0.9648566   1.0390481
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0624474   1.0146679   1.1102268
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2485668   1.2193308   1.2778028
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0983052   1.0864567   1.1101538
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                1.0131058   0.9370457   1.0891660
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                1.1677343   1.1452240   1.1902446
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                1.1731762   1.1558671   1.1904853
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1964675   1.1747968   1.2181381
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1805282   1.1619168   1.1991396
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                1.1064636   1.0753522   1.1375750
6-12 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                1.1681560   1.1485303   1.1877817
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1980121   1.1870892   1.2089349
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0185507   1.0014002   1.0357013
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0828617   1.0731428   1.0925805
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0674471   1.0552459   1.0796483
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                1.2763792   1.2481525   1.3046060
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1071262   1.1003880   1.1138643
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8796561   0.8622733   0.8970390
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.8617083   0.8463512   0.8770654
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.8463453   0.8256453   0.8670453
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.8699064   0.8475321   0.8922808
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7663111   0.7428636   0.7897586
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7397013   0.7128622   0.7665404
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8294859   0.8099817   0.8489901
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7503928   0.7357863   0.7649993
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.8575519   0.8455586   0.8695452
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8444661   0.8337769   0.8551553
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.8378848   0.8224521   0.8533174
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7094624   0.6834877   0.7354371
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7793681   0.7685580   0.7901783
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8188101   0.8128787   0.8247415
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7067500   0.6994129   0.7140870
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.8411207   0.8223113   0.8599301
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7965619   0.7912505   0.8018734


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25                0.1269165   -0.0101441    0.2639772
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.1296527   -0.3036909    0.0443854
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0830453   -0.1662540    0.3323447
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0727440   -0.3115305    0.1660426
0-3 months     ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0445719   -0.2145815    0.1254378
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0558849   -0.4082520    0.2964822
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0644340   -0.2392875    0.1104195
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <25                0.0167420   -0.1972515    0.2307355
0-3 months     ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              <25               -0.0787665   -0.2392058    0.0816728
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.1895141   -0.3438282   -0.0352000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25                0.1692657   -0.0817269    0.4202583
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25                0.1777175   -0.0191714    0.3746064
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0361079   -0.2396800    0.1674641
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.2166973   -0.3880062   -0.0453884
0-3 months     ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          [25-30)              <25                0.1186001   -0.1303857    0.3675859
0-3 months     ki1000108-IRC              INDIA                          >=30                 <25                0.0934226   -0.3413352    0.5281805
0-3 months     ki1000109-EE               PAKISTAN                       <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)              <25                0.0655904   -0.3967816    0.5279624
0-3 months     ki1000109-EE               PAKISTAN                       >=30                 <25                0.1824814   -0.2657659    0.6307287
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0430808   -0.1336869    0.0475253
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.2165027   -0.3667784   -0.0662270
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0644645   -0.1969306    0.0680015
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               -0.0943830   -0.2268964    0.0381304
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               -0.0298996   -0.1209370    0.0611378
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0724535   -0.1798601    0.0349530
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               -0.0173641   -0.1024796    0.0677515
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0294205   -0.0749453    0.1337862
0-3 months     ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.1261649   -0.2567061    0.0043762
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.2154624   -0.3208460   -0.1100788
0-3 months     ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0338429   -0.0640762   -0.0036097
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0347576   -0.0674747   -0.0020405
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25                0.0064205   -0.0427970    0.0556380
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0956557   -0.1520327   -0.0392787
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.1897984   -0.3035964   -0.0760004
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.1376340   -0.2364569   -0.0388111
0-3 months     ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0069512   -0.0452728    0.0313705
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 <25               -0.1129637   -0.1575804   -0.0683470
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0185285   -0.0415926    0.0045356
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0581847   -0.0906292   -0.0257403
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25                0.0486035   -0.0595337    0.1567407
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25                0.0652140   -0.0743794    0.2048074
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               -0.0217555   -0.2144029    0.1708918
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0065943   -0.1928211    0.1796324
3-6 months     ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0588149   -0.1817162    0.0640864
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0332964   -0.2823423    0.2157495
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0015860   -0.1315028    0.1283308
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0104775   -0.1665195    0.1455646
3-6 months     ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              <25                0.0782642   -0.1056706    0.2621990
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0456231   -0.1922134    0.1009671
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               -0.0829622   -0.3565568    0.1906323
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.1652471   -0.3333520    0.0028577
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0968840   -0.2767617    0.0829937
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0871278   -0.0760227    0.2502783
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25                0.0609515   -0.1509286    0.2728315
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               -0.1049907   -0.4797672    0.2697857
3-6 months     ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          [25-30)              <25                0.0399347   -0.1025911    0.1824606
3-6 months     ki1000108-IRC              INDIA                          >=30                 <25                0.0666303   -0.2034389    0.3366996
3-6 months     ki1000109-EE               PAKISTAN                       <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)              <25                0.0529365   -0.2099454    0.3158184
3-6 months     ki1000109-EE               PAKISTAN                       >=30                 <25               -0.1028585   -0.3546042    0.1488872
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0319273   -0.0949938    0.0311392
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.0824664   -0.1802374    0.0153046
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25                0.0727121   -0.0413607    0.1867849
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25                0.0010849   -0.1219889    0.1241587
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25                0.0042048   -0.0759776    0.0843873
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0602811   -0.1593434    0.0387812
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0121612   -0.0698948    0.0942171
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               -0.0478801   -0.1531177    0.0573575
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0347582   -0.1207438    0.0512274
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0396784   -0.0483971    0.1277539
3-6 months     ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0690020   -0.1805336    0.0425296
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.0852577   -0.1730166    0.0025012
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25                0.0022542   -0.0844598    0.0889682
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               -0.1250170   -0.2382567   -0.0117773
3-6 months     ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0030373   -0.0366214    0.0305468
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0236019   -0.0595677    0.0123640
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               -0.0502529   -0.0976878   -0.0028179
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0266489   -0.0783313    0.0250336
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0847450   -0.1610410   -0.0084490
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.0535543   -0.1246812    0.0175726
3-6 months     ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              <25                0.0040355   -0.0281038    0.0361748
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0305309   -0.0668352    0.0057734
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0046240   -0.0332520    0.0240040
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0212937   -0.0564435    0.0138561
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               -0.0396711   -0.0935446    0.0142024
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0695971   -0.1387176   -0.0004765
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0033635   -0.1024268    0.1091538
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <25                0.0388554   -0.0800345    0.1577453
6-12 months    ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              <25                0.0264289   -0.0324766    0.0853343
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 <25                0.0409818   -0.0740690    0.1560326
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              <25                0.0072781   -0.0529354    0.0674915
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 <25                0.0048726   -0.0693389    0.0790842
6-12 months    ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              <25               -0.0874643   -0.1702921   -0.0046365
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0010912   -0.0774399    0.0752575
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25                0.1276848    0.0055321    0.2498376
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.0217377   -0.1104915    0.0670162
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0440024   -0.1453797    0.0573749
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0679384   -0.1594770    0.0236003
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25                0.0556957   -0.0520298    0.1634212
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25                0.0530019   -0.1064629    0.2124667
6-12 months    ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          [25-30)              <25               -0.0188559   -0.0786945    0.0409827
6-12 months    ki1000108-IRC              INDIA                          >=30                 <25                0.0476594   -0.0473468    0.1426656
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0452585   -0.0909439    0.0004269
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.0271367   -0.0727902    0.0185168
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               -0.1491152   -0.3152400    0.0170096
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               -0.0838051   -0.2917258    0.1241156
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0414256   -0.0925823    0.0097311
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               -0.0159570   -0.0754854    0.0435715
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               -0.0234569   -0.0640615    0.0171477
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0170077   -0.0622578    0.0282425
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0289649   -0.0093292    0.0672589
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0172719   -0.0340188    0.0685626
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0137217   -0.0666567    0.0392134
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0164412   -0.0696061    0.0367237
6-12 months    ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25                0.0014128   -0.0468426    0.0496682
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.0449860   -0.0878458   -0.0021261
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               -0.0085609   -0.0859853    0.0688634
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               -0.0098922   -0.0884728    0.0686883
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0546883   -0.0989611   -0.0104155
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               -0.0506437   -0.1041215    0.0028341
6-12 months    ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0326706   -0.0522238   -0.0131174
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0114605   -0.0414528    0.0185319
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25                0.0059092   -0.0201763    0.0319947
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0093485   -0.0365290    0.0178320
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0503358   -0.0938539   -0.0068177
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.0009701   -0.0404903    0.0385501
6-12 months    ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0016703   -0.0240402    0.0206996
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0158493   -0.0407106    0.0090119
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               -0.0332906   -0.0627719   -0.0038094
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               -0.0293338   -0.0586638   -0.0000039
6-12 months    ki1148112-LCNI-5           MALAWI                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25                0.0660806   -0.0051833    0.1373445
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25                0.0075073   -0.0575487    0.0725634
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0144254   -0.0313277    0.0024769
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0229291   -0.0469167    0.0010585
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               -0.0043982   -0.0402862    0.0314897
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0160013   -0.0587626    0.0267600
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               -0.0233168   -0.0887012    0.0420675
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0189145   -0.1046402    0.0668112
12-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0227495   -0.0622666    0.0167675
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0106077   -0.0688661    0.0476508
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25                0.0078862   -0.0280226    0.0437951
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25                0.0065838   -0.0412765    0.0544441
12-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25                0.0605497    0.0090397    0.1120596
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25                0.0431700   -0.0053072    0.0916472
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               -0.0194801   -0.0857075    0.0467473
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25                0.0036823   -0.0451549    0.0525195
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25                0.0054409   -0.0600880    0.0709698
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0754410    0.0196475    0.1312345
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               -0.0213428   -0.0798550    0.0371694
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               -0.0649256   -0.1580185    0.0281672
12-24 months   ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               -0.0056929   -0.0488091    0.0374233
12-24 months   ki1000108-IRC              INDIA                          >=30                 <25               -0.0733540   -0.1536144    0.0069063
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0092340   -0.0429547    0.0244868
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25                0.0168564   -0.0202913    0.0540040
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25                0.0061036   -0.0209452    0.0331525
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0070623   -0.0408222    0.0266976
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               -0.0109837   -0.0384794    0.0165121
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0138287   -0.0194477    0.0471051
12-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25                0.0078041   -0.0213583    0.0369665
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25                0.0211635   -0.0022720    0.0445991
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0003363   -0.0343163    0.0336437
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25                0.0071523   -0.0365972    0.0509019
12-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0208174   -0.0604520    0.0188172
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25                0.0295000   -0.0186257    0.0776258
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               -0.0244322   -0.0817451    0.0328807
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0259514   -0.0988112    0.0469085
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25                0.0028628   -0.0251974    0.0309230
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25                0.0267358    0.0020417    0.0514299
12-24 months   ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25                0.0095906   -0.0043093    0.0234904
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0061544   -0.0209490    0.0086403
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25                0.0080623   -0.0099249    0.0260495
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25                0.0058109   -0.0116240    0.0232457
12-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               -0.0026793   -0.0518970    0.0465385
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25                0.0252333   -0.0173239    0.0677905
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25                0.0031592   -0.0101800    0.0164984
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0027602   -0.0203430    0.0148226
