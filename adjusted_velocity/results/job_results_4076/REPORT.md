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

* arm
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/432970e8-6af2-4619-8e7d-0ff3ddd4ffb7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/432970e8-6af2-4619-8e7d-0ff3ddd4ffb7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                3.5425336   3.4622760   3.6227913
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                3.6601414   3.5685150   3.7517677
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                3.4410735   3.3251849   3.5569622
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25                  NA                4.0250502   3.8855756   4.1645249
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                4.1151419   3.9235315   4.3067523
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                3.9529865   3.7809137   4.1250593
0-3 months     ki0047075b-MAL-ED          INDIA                          <25                  NA                3.5700513   3.4758487   3.6642538
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                3.4931320   3.3688842   3.6173798
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                3.2835410   3.0276476   3.5394344
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25                  NA                3.7611351   3.6550258   3.8672445
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                3.7562186   3.6600262   3.8524111
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                3.7283186   3.6092314   3.8474058
0-3 months     ki0047075b-MAL-ED          PERU                           <25                  NA                3.3750748   3.2914215   3.4587282
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                3.2963225   3.1595081   3.4331369
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                3.1855510   3.0559761   3.3151260
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                3.2673413   3.1610520   3.3736307
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                3.3621782   3.2246366   3.4997198
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                3.4487142   3.3281866   3.5692417
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                3.6532372   3.5280825   3.7783920
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                3.6264591   3.4662667   3.7866516
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                3.4208273   3.3064053   3.5352493
0-3 months     ki1000108-IRC              INDIA                          <25                  NA                3.1302749   2.9898905   3.2706593
0-3 months     ki1000108-IRC              INDIA                          [25-30)              NA                3.2595219   3.0564948   3.4625491
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                3.0545605   2.6923304   3.4167907
0-3 months     ki1000109-EE               PAKISTAN                       <25                  NA                2.5299629   2.1174892   2.9424367
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)              NA                2.5958040   2.4448935   2.7467146
0-3 months     ki1000109-EE               PAKISTAN                       >=30                 NA                2.7134530   2.6146436   2.8122624
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                3.6400054   3.6031870   3.6768237
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                3.6055003   3.5294460   3.6815545
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                3.4392011   3.3136146   3.5647877
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                3.3533480   3.2746779   3.4320180
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                3.2906409   3.1849741   3.3963077
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                3.2608650   3.1547340   3.3669959
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                3.5102353   3.4606592   3.5598114
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                3.4701897   3.4013957   3.5389836
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                3.4226077   3.3390143   3.5062011
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                3.3228502   3.2686197   3.3770806
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                3.3149428   3.2528419   3.3770436
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                3.3985360   3.3163509   3.4807211
0-3 months     ki1101329-Keneba           GAMBIA                         <25                  NA                3.2099824   3.1317045   3.2882604
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                3.1107150   3.0106206   3.2108093
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                3.0029813   2.9340747   3.0718880
0-3 months     ki1119695-PROBIT           BELARUS                        <25                  NA                2.8509006   2.7330325   2.9687687
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.8201600   2.7117336   2.9285864
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.8208944   2.7087717   2.9330171
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                3.3862547   3.3583952   3.4141142
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                3.3954014   3.3563861   3.4344166
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                3.3011826   3.2544321   3.3479331
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25                  NA                2.7111429   2.6475805   2.7747054
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                2.5288466   2.4513840   2.6063093
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                2.5775174   2.5130543   2.6419805
0-3 months     ki1135781-COHORTS          INDIA                          <25                  NA                3.5691833   3.5456323   3.5927343
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                3.5519891   3.5232301   3.5807480
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                3.4376585   3.4025019   3.4728151
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                3.7282462   3.7166685   3.7398239
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                3.7073037   3.6861411   3.7284663
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                3.6658465   3.6377940   3.6938989
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                1.8986203   1.8318075   1.9654330
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.9364322   1.8666065   2.0062579
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.9306612   1.8330271   2.0282953
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25                  NA                2.1608705   2.0498306   2.2719105
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                2.1720823   2.0342830   2.3098816
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                2.2034333   2.0799046   2.3269620
3-6 months     ki0047075b-MAL-ED          INDIA                          <25                  NA                1.9002074   1.8170536   1.9833611
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.8458613   1.7554261   1.9362965
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.8978416   1.6662534   2.1294298
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25                  NA                2.0702782   1.9951966   2.1453598
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                2.0011873   1.9275750   2.0747995
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                2.1161413   2.0295690   2.2027135
3-6 months     ki0047075b-MAL-ED          PERU                           <25                  NA                1.9964498   1.9112671   2.0816325
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                2.0151757   1.8630478   2.1673035
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                1.8848346   1.7740378   1.9956313
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                2.0866108   1.9820561   2.1911655
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                2.0815468   1.8575697   2.3055238
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.9281536   1.8047199   2.0515874
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                1.8195789   1.6906009   1.9485568
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.7226949   1.5973128   1.8480770
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.9067067   1.8067929   2.0066204
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                1.7985181   1.6681898   1.9288463
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                1.8659462   1.7026257   2.0292666
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                1.8034034   1.4696499   2.1371570
3-6 months     ki1000108-IRC              INDIA                          <25                  NA                1.8649038   1.7863470   1.9434606
3-6 months     ki1000108-IRC              INDIA                          [25-30)              NA                1.9056648   1.7883536   2.0229760
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                1.9232531   1.6809663   2.1655399
3-6 months     ki1000109-EE               PAKISTAN                       <25                  NA                2.0628573   1.8367627   2.2889518
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)              NA                2.1125875   2.0057926   2.2193824
3-6 months     ki1000109-EE               PAKISTAN                       >=30                 NA                1.9577964   1.8831620   2.0324308
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                1.9578445   1.9225180   1.9931710
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.9318338   1.8581843   2.0054834
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.8835946   1.7881059   1.9790833
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                1.8080023   1.7432135   1.8727912
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.8827650   1.7891373   1.9763927
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.8119382   1.7075178   1.9163587
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                1.9757522   1.9292361   2.0222684
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.9783409   1.9133129   2.0433689
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.9161712   1.8287767   2.0035658
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                2.0088554   1.9627304   2.0549803
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                2.0265442   1.9678278   2.0852607
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.9614907   1.8833447   2.0396367
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                1.7919751   1.7336785   1.8502717
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.7581243   1.6972874   1.8189611
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.8374998   1.7743517   1.9006478
3-6 months     ki1101329-Keneba           GAMBIA                         <25                  NA                2.0390512   1.9723368   2.1057656
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                1.9701453   1.8834518   2.0568388
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                1.9467129   1.8915132   2.0019125
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25                  NA                1.7237116   1.6703562   1.7770669
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                1.7213435   1.6555951   1.7870918
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                1.6001061   1.5057705   1.6944416
3-6 months     ki1119695-PROBIT           BELARUS                        <25                  NA                2.0960973   2.0552553   2.1369392
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.0925123   2.0420215   2.1430031
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.0698911   2.0197308   2.1200514
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                1.9941503   1.9669375   2.0213632
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.9400606   1.9025830   1.9775381
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.9559158   1.9138198   1.9980119
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25                  NA                1.8125536   1.7693516   1.8557557
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                1.7481586   1.6974163   1.7989009
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                1.7599634   1.7117847   1.8081421
3-6 months     ki1135781-COHORTS          INDIA                          <25                  NA                1.8640846   1.8444188   1.8837504
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                1.8569136   1.8331133   1.8807139
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                1.8317172   1.8033859   1.8600485
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                1.9229008   1.9114844   1.9343173
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                1.9142242   1.8890560   1.9393923
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                1.8969191   1.8678033   1.9260349
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                1.1537159   1.1173372   1.1900945
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.1211945   1.0853410   1.1570481
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.1139413   1.0638825   1.1640001
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                1.3936265   1.3312754   1.4559776
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                1.4107768   1.3440542   1.4774993
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                1.4454243   1.3745313   1.5163174
6-12 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                1.1066537   1.0709902   1.1423171
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.1279312   1.0843968   1.1714657
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.1460006   1.0450508   1.2469503
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                1.2411860   1.2014258   1.2809462
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                1.2321923   1.1983790   1.2660055
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                1.2568798   1.2142675   1.2994921
6-12 months    ki0047075b-MAL-ED          PERU                           <25                  NA                1.2294655   1.1858032   1.2731278
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                1.1487826   1.0835010   1.2140642
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                1.2276321   1.1705925   1.2846717
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                1.1733932   1.1237529   1.2230334
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.3025169   1.2228062   1.3822276
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.1567851   1.0994517   1.2141185
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                1.0436248   0.9804935   1.1067560
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.0062420   0.9476053   1.0648786
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9703376   0.9236930   1.0169821
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                1.0397095   0.9788293   1.1005897
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                1.0994830   1.0119688   1.1869973
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                1.0780708   0.9328889   1.2232528
6-12 months    ki1000108-IRC              INDIA                          <25                  NA                1.2512934   1.2111138   1.2914730
6-12 months    ki1000108-IRC              INDIA                          [25-30)              NA                1.2325034   1.1893221   1.2756847
6-12 months    ki1000108-IRC              INDIA                          >=30                 NA                1.3028097   1.2301232   1.3754962
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                1.1123308   1.0966306   1.1280311
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.0668521   1.0299924   1.1037119
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.0843339   1.0402085   1.1284593
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                1.0531619   0.9183700   1.1879537
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.9120120   0.8315535   0.9924705
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.9576620   0.8224753   1.0928487
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                1.1840966   1.1514171   1.2167762
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.1426742   1.1033211   1.1820274
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.1681686   1.1184254   1.2179118
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                1.1837623   1.1602417   1.2072829
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.1602870   1.1271925   1.1933814
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.1667448   1.1280903   1.2053992
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                1.2183978   1.1948385   1.2419572
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                1.2488128   1.2209084   1.2767172
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.2384851   1.1972138   1.2797564
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                1.2121231   1.1767291   1.2475171
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.1945535   1.1593300   1.2297770
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.1888037   1.1542507   1.2233567
6-12 months    ki1101329-Keneba           GAMBIA                         <25                  NA                1.1969323   1.1676162   1.2262485
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                1.1938040   1.1543171   1.2332909
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                1.1544987   1.1254272   1.1835701
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                1.1104863   1.0687235   1.1522491
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                1.1019215   1.0367363   1.1671067
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                1.1005879   1.0340453   1.1671306
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                1.1959698   1.1688952   1.2230444
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                1.1438372   1.1092101   1.1784643
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                1.1567535   1.1116824   1.2018246
6-12 months    ki1119695-PROBIT           BELARUS                        <25                  NA                1.4820628   1.4399695   1.5241562
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                1.4497408   1.4093823   1.4900992
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                1.4712131   1.4361988   1.5062274
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                1.1971888   1.1819603   1.2124173
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.2022043   1.1818994   1.2225092
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.1854938   1.1642174   1.2067702
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                1.0330550   1.0073906   1.0587194
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.9857119   0.9556498   1.0157740
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                1.0371040   1.0109887   1.0632193
6-12 months    ki1135781-COHORTS          INDIA                          <25                  NA                1.0887498   1.0743662   1.1031333
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                1.0822608   1.0663667   1.0981549
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                1.0640827   1.0457829   1.0823825
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                1.0849668   1.0663371   1.1035964
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                1.0467869   1.0254913   1.0680825
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                1.0551282   1.0335619   1.0766945
6-12 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                1.2625721   1.2233957   1.3017485
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                1.3275821   1.2857688   1.3693954
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                1.2636426   1.2231704   1.3041149
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                1.1113914   1.1037662   1.1190167
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                1.0982960   1.0843506   1.1122415
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                1.0936172   1.0737260   1.1135083
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.8506211   0.8288536   0.8723886
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.8468030   0.8230538   0.8705523
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.8365429   0.8073312   0.8657546
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                0.9766851   0.9319950   1.0213753
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.9396876   0.8977891   0.9815861
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.9272660   0.8638677   0.9906643
12-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.8862701   0.8648092   0.9077309
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.8678459   0.8359009   0.8997909
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.8788719   0.8244950   0.9332487
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.8495262   0.8278030   0.8712495
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.8628955   0.8443205   0.8814704
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.8552699   0.8299786   0.8805612
12-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.8205966   0.7920435   0.8491498
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.8811463   0.8382745   0.9240181
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.8637666   0.8245907   0.9029426
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.8611483   0.8338185   0.8884782
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.8336276   0.7938041   0.8734510
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.8648763   0.8345392   0.8952133
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.7322586   0.6860467   0.7784705
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7375927   0.6914452   0.7837403
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8078598   0.7770593   0.8386603
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.7533074   0.7185063   0.7881086
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.7304553   0.6840290   0.7768815
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6875919   0.6039193   0.7712646
12-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.8365823   0.8124663   0.8606984
12-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.8298953   0.7945688   0.8652217
12-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.7600350   0.6905717   0.8294983
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.7488868   0.7279780   0.7697956
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7410741   0.7171065   0.7650416
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.7633712   0.7380948   0.7886476
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.8568249   0.8403351   0.8733147
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.8625919   0.8414620   0.8837218
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8505276   0.8215315   0.8795237
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.8736733   0.8588479   0.8884987
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.8584515   0.8377255   0.8791775
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.8814604   0.8563932   0.9065276
12-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.8331211   0.8174614   0.8487807
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.8414477   0.8178827   0.8650128
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.8576797   0.8409000   0.8744595
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.8375896   0.8157194   0.8594598
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.8359638   0.8107746   0.8611530
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.8457979   0.8100390   0.8815568
12-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.8598521   0.8051125   0.9145916
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8412240   0.7841193   0.8983287
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8897568   0.8213993   0.9581143
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.7219653   0.6844519   0.7594786
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6975331   0.6542028   0.7408633
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6960139   0.6335535   0.7584743
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.7669972   0.7509712   0.7830231
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7737623   0.7547700   0.7927545
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7910839   0.7751807   0.8069871
12-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.8229869   0.8142759   0.8316979
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.8233700   0.8135291   0.8332109
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.8129386   0.8020680   0.8238092
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.7025730   0.6916172   0.7135287
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.7077029   0.6943720   0.7210337
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7059850   0.6932181   0.7187518
12-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.8451913   0.8191962   0.8711864
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.8601106   0.8209152   0.8993061
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.8815685   0.8495793   0.9135577
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.7961036   0.7899652   0.8022420
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.7981876   0.7871222   0.8092531
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.7907621   0.7763152   0.8052090


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25                0.1176077    0.0009509    0.2342646
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.1014601   -0.2351933    0.0322731
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0900917   -0.1465451    0.3267284
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0720638   -0.2933987    0.1492712
0-3 months     ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0769193   -0.2309651    0.0771265
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.2865103   -0.5590380   -0.0139825
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0049165   -0.1371719    0.1273389
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0328165   -0.1897749    0.1241419
0-3 months     ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              <25               -0.0787523   -0.2391028    0.0815981
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.1895238   -0.3437385   -0.0353091
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25                0.0948368   -0.0794480    0.2691217
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25                0.1813728    0.0207151    0.3420305
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0267781   -0.2299038    0.1763476
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.2324099   -0.4025075   -0.0623123
0-3 months     ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          [25-30)              <25                0.1292470   -0.1169251    0.3754191
0-3 months     ki1000108-IRC              INDIA                          >=30                 <25               -0.0757144   -0.4643663    0.3129375
0-3 months     ki1000109-EE               PAKISTAN                       <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)              <25                0.0658411   -0.3733966    0.5050788
0-3 months     ki1000109-EE               PAKISTAN                       >=30                 <25                0.1834901   -0.2406287    0.6076088
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0345051   -0.1262146    0.0572045
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.2008042   -0.3359722   -0.0656363
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0627071   -0.1940428    0.0686286
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               -0.0924830   -0.2243610    0.0393950
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               -0.0400456   -0.1216221    0.0415309
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0876276   -0.1827594    0.0075042
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               -0.0079074   -0.0901985    0.0743837
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0756859   -0.0225122    0.1738840
0-3 months     ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0992675   -0.2260436    0.0275086
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.2070011   -0.3114623   -0.1025399
0-3 months     ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0307406   -0.0609011   -0.0005801
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0300062   -0.0615466    0.0015342
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25                0.0091467   -0.0385280    0.0568214
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0850721   -0.1393035   -0.0308407
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.1822963   -0.2813114   -0.0832812
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.1336255   -0.2229460   -0.0443050
0-3 months     ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0171942   -0.0542178    0.0198293
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 <25               -0.1315248   -0.1736725   -0.0893772
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0209425   -0.0429510    0.0010659
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0623997   -0.0928393   -0.0319601
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25                0.0378119   -0.0567126    0.1323364
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25                0.0320409   -0.0820449    0.1461268
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0112118   -0.1641702    0.1865938
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <25                0.0425628   -0.1222266    0.2073521
3-6 months     ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0543461   -0.1771571    0.0684649
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0023658   -0.2484935    0.2437620
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0690909   -0.1745683    0.0363864
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <25                0.0458631   -0.0692536    0.1609798
3-6 months     ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              <25                0.0187259   -0.1551424    0.1925941
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.1116152   -0.2509524    0.0277219
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               -0.0050640   -0.2520787    0.2419506
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.1584572   -0.3201554    0.0032411
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0968840   -0.2767617    0.0829937
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0871278   -0.0760227    0.2502783
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25                0.0674281   -0.1409345    0.2757907
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25                0.0048853   -0.3538713    0.3636420
3-6 months     ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          [25-30)              <25                0.0407610   -0.1003451    0.1818671
3-6 months     ki1000108-IRC              INDIA                          >=30                 <25                0.0583493   -0.1960879    0.3127865
3-6 months     ki1000109-EE               PAKISTAN                       <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)              <25                0.0497302   -0.2002676    0.2997280
3-6 months     ki1000109-EE               PAKISTAN                       >=30                 <25               -0.1050609   -0.3430525    0.1329307
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0260107   -0.0928556    0.0408342
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.0742499   -0.1659688    0.0174690
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25                0.0747627   -0.0389640    0.1884894
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25                0.0039359   -0.1188682    0.1267400
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25                0.0025886   -0.0772386    0.0824159
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0595810   -0.1585437    0.0393818
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0176888   -0.0552857    0.0906634
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               -0.0473647   -0.1361615    0.0414322
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0338508   -0.1175829    0.0498813
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0455247   -0.0398764    0.1309258
3-6 months     ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0689059   -0.1781300    0.0403182
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.0923383   -0.1788875   -0.0057891
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0023681   -0.0869937    0.0822574
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               -0.1236055   -0.2316491   -0.0155619
3-6 months     ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0035850   -0.0367579    0.0295880
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0262062   -0.0617548    0.0093424
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               -0.0540898   -0.1002381   -0.0079414
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0382345   -0.0882328    0.0117638
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0643950   -0.1303666    0.0015765
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.0525902   -0.1162228    0.0110423
3-6 months     ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0071710   -0.0379228    0.0235807
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0323674   -0.0667517    0.0020169
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0086767   -0.0356944    0.0183410
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0259817   -0.0566507    0.0046873
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               -0.0325213   -0.0837426    0.0186999
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0397746   -0.1014847    0.0219355
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0171503   -0.0718428    0.1061433
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <25                0.0517978   -0.0403832    0.1439788
6-12 months    ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              <25                0.0212775   -0.0335795    0.0761346
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 <25                0.0393469   -0.0668288    0.1455226
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0089937   -0.0611845    0.0431970
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 <25                0.0156938   -0.0428163    0.0742040
6-12 months    ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              <25               -0.0806829   -0.1580579   -0.0033079
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0018334   -0.0721016    0.0684349
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25                0.1291237    0.0386990    0.2195484
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.0166081   -0.0871405    0.0539243
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0373828   -0.1189445    0.0441789
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0732872   -0.1478952    0.0013207
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25                0.0597735   -0.0469055    0.1664525
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25                0.0383613   -0.1191097    0.1958323
6-12 months    ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          [25-30)              <25               -0.0187900   -0.0774524    0.0398724
6-12 months    ki1000108-IRC              INDIA                          >=30                 <25                0.0515163   -0.0319434    0.1349760
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0454787   -0.0944137    0.0034563
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.0279970   -0.0615725    0.0055786
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               -0.1411499   -0.2965674    0.0142676
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               -0.0954999   -0.2845089    0.0935091
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0414224   -0.0925734    0.0097286
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               -0.0159280   -0.0754422    0.0435862
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               -0.0234754   -0.0640745    0.0171237
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0170176   -0.0622644    0.0282293
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0304150   -0.0060262    0.0668562
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0200873   -0.0273846    0.0675591
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0175696   -0.0669789    0.0318397
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0233194   -0.0720892    0.0254504
6-12 months    ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0031283   -0.0522651    0.0460086
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.0424337   -0.0836857   -0.0011817
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               -0.0085648   -0.0859762    0.0688466
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               -0.0098984   -0.0884535    0.0686567
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0521326   -0.0960994   -0.0081659
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               -0.0392163   -0.0917809    0.0133483
6-12 months    ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0323220   -0.0518927   -0.0127514
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0108497   -0.0403174    0.0186179
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25                0.0050155   -0.0202406    0.0302717
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0116950   -0.0377511    0.0143612
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0473431   -0.0865847   -0.0081015
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25                0.0040490   -0.0323161    0.0404141
6-12 months    ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0064890   -0.0278155    0.0148375
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0246671   -0.0478070   -0.0015271
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               -0.0381799   -0.0663678   -0.0099920
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               -0.0298386   -0.0582841   -0.0013930
6-12 months    ki1148112-LCNI-5           MALAWI                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25                0.0650100    0.0095850    0.1204351
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25                0.0010706   -0.0524863    0.0546274
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0130954   -0.0288029    0.0026121
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0177743   -0.0387488    0.0032003
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               -0.0038181   -0.0347220    0.0270858
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0140782   -0.0493688    0.0212124
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               -0.0369975   -0.0982078    0.0242128
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0494191   -0.1270301    0.0281919
12-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0184242   -0.0562409    0.0193926
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0073982   -0.0657438    0.0509474
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25                0.0133692   -0.0152178    0.0419563
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25                0.0057437   -0.0275596    0.0390470
12-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25                0.0605497    0.0090397    0.1120596
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25                0.0431700   -0.0053072    0.0916472
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               -0.0275208   -0.0730891    0.0180475
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25                0.0037279   -0.0335797    0.0410356
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25                0.0053341   -0.0598863    0.0705546
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0756013    0.0201903    0.1310122
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               -0.0228522   -0.0809051    0.0352007
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               -0.0657155   -0.1561910    0.0247600
12-24 months   ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               -0.0066871   -0.0493018    0.0359276
12-24 months   ki1000108-IRC              INDIA                          >=30                 <25               -0.0765474   -0.1498898   -0.0032049
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0078128   -0.0388898    0.0232643
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25                0.0144844   -0.0175119    0.0464807
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25                0.0057670   -0.0208525    0.0323865
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0062973   -0.0394926    0.0268980
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               -0.0152218   -0.0406926    0.0102489
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0077871   -0.0213751    0.0369493
12-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25                0.0083266   -0.0199689    0.0366222
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25                0.0245587    0.0016257    0.0474916
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0016257   -0.0348917    0.0316402
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25                0.0082083   -0.0337107    0.0501273
12-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0186280   -0.0573963    0.0201403
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25                0.0299047   -0.0211794    0.0809889
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               -0.0244322   -0.0817451    0.0328807
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0259514   -0.0988112    0.0469085
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25                0.0067651   -0.0177562    0.0312864
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25                0.0240867    0.0019604    0.0462131
12-24 months   ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25                0.0003831   -0.0125891    0.0133554
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0100483   -0.0238461    0.0037495
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25                0.0051299   -0.0120130    0.0222728
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25                0.0034120   -0.0132800    0.0201040
12-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25                0.0149193   -0.0320945    0.0619331
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25                0.0363772   -0.0049232    0.0776777
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25                0.0020840   -0.0103370    0.0145050
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0053415   -0.0210607    0.0103776
