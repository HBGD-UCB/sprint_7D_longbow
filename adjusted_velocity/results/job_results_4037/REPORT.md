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
![](/tmp/c6f0b074-07a0-45df-b6e8-8a8c7620df7d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c6f0b074-07a0-45df-b6e8-8a8c7620df7d/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0401853   -0.0857826    0.0054121
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                 0.0029899   -0.0486636    0.0546434
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0946129   -0.1723904   -0.0168353
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.1898167    0.1198893    0.2597441
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.2673112    0.1667170    0.3679055
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.1683337    0.0756540    0.2610135
0-3 months     ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0012235   -0.0518179    0.0493709
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0475821   -0.1104921    0.0153280
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0724337   -0.2300309    0.0851636
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.1164871    0.0680024    0.1649718
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                 0.0545961    0.0096671    0.0995252
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.0726799    0.0085139    0.1368458
0-3 months     ki0047075b-MAL-ED          PERU                           <25                  NA                -0.1277414   -0.1692297   -0.0862530
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                -0.1668136   -0.2370447   -0.0965824
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.2261760   -0.2973070   -0.1550450
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1847999   -0.2388442   -0.1307556
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.1628015   -0.2390195   -0.0865834
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.1125970   -0.1753335   -0.0498605
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0158138   -0.0487645    0.0803922
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0018992   -0.0762767    0.0724784
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0887852   -0.1463633   -0.0312072
0-3 months     ki1000108-IRC              INDIA                          <25                  NA                -0.2735673   -0.3438544   -0.2032802
0-3 months     ki1000108-IRC              INDIA                          [25-30)              NA                -0.2262450   -0.3277926   -0.1246973
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                -0.3272720   -0.5068980   -0.1476460
0-3 months     ki1000109-EE               PAKISTAN                       <25                  NA                -0.3952004   -0.6023149   -0.1880858
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)              NA                -0.4259814   -0.5044659   -0.3474970
0-3 months     ki1000109-EE               PAKISTAN                       >=30                 NA                -0.3716312   -0.4213229   -0.3219395
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0353587    0.0202010    0.0505163
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                 0.0017609   -0.0435488    0.0470707
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0695323   -0.1280031   -0.0110615
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0943981   -0.1323613   -0.0564350
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.1321142   -0.1809924   -0.0832361
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.1460173   -0.1931181   -0.0989164
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0306429   -0.0542063   -0.0070795
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0444059   -0.0759999   -0.0128120
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0679813   -0.1066305   -0.0293322
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.1133801   -0.1381376   -0.0886227
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.1127235   -0.1401194   -0.0853277
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0707491   -0.1054003   -0.0360979
0-3 months     ki1101329-Keneba           GAMBIA                         <25                  NA                -0.2504012   -0.2897130   -0.2110894
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.3046350   -0.3555065   -0.2537635
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3554587   -0.3903940   -0.3205234
0-3 months     ki1119695-PROBIT           BELARUS                        <25                  NA                -0.4265936   -0.4874770   -0.3657102
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.4488458   -0.5061329   -0.3915587
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.4494540   -0.5085382   -0.3903698
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.1347534   -0.1486260   -0.1208809
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.1314319   -0.1510114   -0.1118524
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.1778357   -0.2010509   -0.1546206
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.4925095   -0.5246920   -0.4603269
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.5848559   -0.6242243   -0.5454875
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.5597412   -0.5918119   -0.5276705
0-3 months     ki1135781-COHORTS          INDIA                          <25                  NA                -0.0481518   -0.0597036   -0.0366000
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0615836   -0.0755609   -0.0476064
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.1183444   -0.1356399   -0.1010489
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0775570    0.0720691    0.0830449
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                 0.0584388    0.0480885    0.0687892
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                 0.0390349    0.0253613    0.0527086
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0299142   -0.0617822    0.0019538
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0200441   -0.0526470    0.0125588
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0069450   -0.0544217    0.0405316
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0647002    0.0152901    0.1141103
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0762533    0.0167426    0.1357640
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.1031368    0.0507726    0.1555010
3-6 months     ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0317077   -0.0697093    0.0062939
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0627239   -0.1057482   -0.0196995
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0577992   -0.1661326    0.0505342
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25                  NA                 0.0231455   -0.0211481    0.0674390
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0124511   -0.0496861    0.0247839
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.0202298   -0.0284122    0.0688718
3-6 months     ki0047075b-MAL-ED          PERU                           <25                  NA                 0.0260560   -0.0148861    0.0669980
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                 0.0600756   -0.0153034    0.1354546
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0014358   -0.0553743    0.0525026
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                 0.0371375   -0.0132161    0.0874910
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0012275   -0.1192073    0.1167522
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0448622   -0.1047611    0.0150367
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0756881   -0.1364829   -0.0148934
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1181144   -0.1776593   -0.0585695
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0362428   -0.0840021    0.0115165
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0996135   -0.1612241   -0.0380029
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0766659   -0.1540979    0.0007661
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1220789   -0.2799450    0.0357872
3-6 months     ki1000108-IRC              INDIA                          <25                  NA                -0.0561861   -0.0932347   -0.0191375
3-6 months     ki1000108-IRC              INDIA                          [25-30)              NA                -0.0456508   -0.1012923    0.0099906
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                -0.0409999   -0.1530535    0.0710537
3-6 months     ki1000109-EE               PAKISTAN                       <25                  NA                 0.1070749    0.0032762    0.2108737
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)              NA                 0.1099917    0.0604223    0.1595611
3-6 months     ki1000109-EE               PAKISTAN                       >=30                 NA                 0.0381550    0.0032889    0.0730211
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0086157   -0.0236619    0.0064304
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0241928   -0.0566689    0.0082833
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0410205   -0.0874338    0.0053928
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0645988   -0.0932528   -0.0359447
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0266102   -0.0667306    0.0135103
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0584999   -0.1044661   -0.0125338
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0237705   -0.0448985   -0.0026424
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0193936   -0.0473927    0.0086056
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0470621   -0.0822589   -0.0118654
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0285681    0.0069799    0.0501563
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                 0.0394191    0.0125406    0.0662977
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                 0.0073824   -0.0282364    0.0430013
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0853277   -0.1124108   -0.0582445
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1000606   -0.1282872   -0.0718340
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0606541   -0.0893660   -0.0319421
3-6 months     ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0053989   -0.0263365    0.0371343
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0287565   -0.0691498    0.0116368
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0357488   -0.0618050   -0.0096926
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.1571336   -0.1828433   -0.1314240
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.1614633   -0.1922784   -0.1306483
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.2110500   -0.2550087   -0.1670913
3-6 months     ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0505920    0.0315055    0.0696785
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0461916    0.0225438    0.0698394
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0351275    0.0115968    0.0586583
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0082966   -0.0043910    0.0209842
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0176401   -0.0352571   -0.0000230
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0093132   -0.0290798    0.0104533
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0748027   -0.0954568   -0.0541485
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.1044504   -0.1289219   -0.0799790
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0962575   -0.1194000   -0.0731151
3-6 months     ki1135781-COHORTS          INDIA                          <25                  NA                -0.0592204   -0.0683003   -0.0501405
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0649796   -0.0759085   -0.0540506
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0729308   -0.0859978   -0.0598637
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0014222   -0.0067795    0.0039352
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0098022   -0.0214134    0.0018089
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0166567   -0.0302126   -0.0031008
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0632165   -0.0786572   -0.0477758
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0826049   -0.0982202   -0.0669895
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0824156   -0.1065565   -0.0582747
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0117781   -0.0129564    0.0365127
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0146653   -0.0113225    0.0406531
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0241847   -0.0011432    0.0495127
6-12 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0844020   -0.0998478   -0.0689561
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0722095   -0.0917552   -0.0526638
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0752340   -0.1192686   -0.0311994
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0401012   -0.0563967   -0.0238058
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0467752   -0.0608098   -0.0327405
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0385955   -0.0574695   -0.0197216
6-12 months    ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0281112   -0.0474938   -0.0087286
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                -0.0655405   -0.0950419   -0.0360390
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0303765   -0.0565290   -0.0042240
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0559984   -0.0771538   -0.0348430
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0044999   -0.0384476    0.0294478
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0679881   -0.0922674   -0.0437088
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.1089321   -0.1357048   -0.0821595
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1184747   -0.1420387   -0.0949108
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1396007   -0.1592497   -0.1199517
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.1085346   -0.1344244   -0.0826449
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0856668   -0.1242414   -0.0470922
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1003741   -0.1605049   -0.0402432
6-12 months    ki1000108-IRC              INDIA                          <25                  NA                -0.0233044   -0.0408818   -0.0057270
6-12 months    ki1000108-IRC              INDIA                          [25-30)              NA                -0.0348709   -0.0543868   -0.0153551
6-12 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.0045103   -0.0364967    0.0274762
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                -0.0818548   -0.0888766   -0.0748330
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0974570   -0.1124806   -0.0824333
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0895460   -0.1071156   -0.0719765
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                -0.0950997   -0.1480155   -0.0421839
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                -0.1479717   -0.1791897   -0.1167537
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -0.1261559   -0.1801533   -0.0721584
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0470265   -0.0604165   -0.0336365
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0633518   -0.0801824   -0.0465211
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0520978   -0.0723849   -0.0318108
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0581790   -0.0676222   -0.0487358
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0690238   -0.0823864   -0.0556612
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0635397   -0.0787336   -0.0483458
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0338010   -0.0432918   -0.0243103
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.0269250   -0.0375781   -0.0162718
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0279135   -0.0438313   -0.0119956
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0527929   -0.0680993   -0.0374865
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0602408   -0.0753159   -0.0451657
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0637586   -0.0784117   -0.0491055
6-12 months    ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0539926   -0.0666472   -0.0413380
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0573323   -0.0744806   -0.0401840
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0708182   -0.0830976   -0.0585388
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                -0.0688144   -0.0859687   -0.0516602
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                -0.0621489   -0.0887985   -0.0354993
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0659649   -0.0926293   -0.0393004
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0511027   -0.0624585   -0.0397468
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.0712821   -0.0854533   -0.0571109
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0648993   -0.0832750   -0.0465237
6-12 months    ki1119695-PROBIT           BELARUS                        <25                  NA                 0.0479435    0.0295560    0.0663311
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0325119    0.0157504    0.0492734
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0411869    0.0257435    0.0566303
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0496398   -0.0561662   -0.0431134
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0477501   -0.0564980   -0.0390022
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0541796   -0.0632469   -0.0451123
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.1044407   -0.1149970   -0.0938844
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.1228865   -0.1354035   -0.1103694
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.1006809   -0.1114293   -0.0899326
6-12 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0927906   -0.0988480   -0.0867333
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0988615   -0.1055121   -0.0922109
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.1024181   -0.1100243   -0.0948119
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0932478   -0.1011084   -0.0853873
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                -0.1098956   -0.1188083   -0.1009829
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.1035989   -0.1126503   -0.0945475
6-12 months    ki1148112-LCNI-5           MALAWI                         <25                  NA                -0.0137351   -0.0303201    0.0028499
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                 0.0113683   -0.0070402    0.0297767
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0093303   -0.0264786    0.0078180
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0726043   -0.0757795   -0.0694291
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0800030   -0.0860124   -0.0739935
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0804798   -0.0890363   -0.0719232
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0168527   -0.0244397   -0.0092656
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0174089   -0.0254790   -0.0093388
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0163799   -0.0253293   -0.0074305
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  NA                 0.0032732   -0.0118898    0.0184362
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                -0.0060289   -0.0211611    0.0091033
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0038805   -0.0286412    0.0208802
12-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0075652   -0.0139314   -0.0011989
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0130226   -0.0226222   -0.0034229
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0171952   -0.0339103   -0.0004802
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.0290211   -0.0363201   -0.0217221
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0280889   -0.0342042   -0.0219737
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                -0.0307937   -0.0403354   -0.0212520
12-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0171623   -0.0256712   -0.0086533
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                 0.0020938   -0.0096621    0.0138496
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0050866   -0.0163101    0.0061369
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0121627   -0.0224276   -0.0018978
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0286151   -0.0478727   -0.0093575
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0139112   -0.0260455   -0.0017769
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0521290   -0.0670445   -0.0372135
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0464955   -0.0621897   -0.0308013
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0261486   -0.0365310   -0.0157662
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0395162   -0.0526164   -0.0264160
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0504852   -0.0681620   -0.0328085
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0663694   -0.0991579   -0.0335808
12-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0275734   -0.0363894   -0.0187573
12-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                -0.0342548   -0.0468691   -0.0216404
12-24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.0610330   -0.0849605   -0.0371054
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0421347   -0.0492951   -0.0349743
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0407163   -0.0486790   -0.0327535
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0373301   -0.0467123   -0.0279479
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0090904   -0.0138930   -0.0042879
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0054968   -0.0117826    0.0007889
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0088953   -0.0175670   -0.0002237
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0052014   -0.0103067   -0.0000962
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.0164129   -0.0234136   -0.0094122
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0064366   -0.0149168    0.0020435
12-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                -0.0252703   -0.0309537   -0.0195869
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0243362   -0.0324553   -0.0162172
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0141751   -0.0202019   -0.0081483
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                -0.0159515   -0.0229399   -0.0089630
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.0159535   -0.0248780   -0.0070291
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0128761   -0.0239302   -0.0018221
12-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0424823   -0.0614578   -0.0235069
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.0496695   -0.0679527   -0.0313864
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.0341498   -0.0547974   -0.0135022
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0492517   -0.0615179   -0.0369856
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0562610   -0.0699150   -0.0426070
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0545412   -0.0730980   -0.0359844
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0354042   -0.0409859   -0.0298226
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.0322110   -0.0385997   -0.0258224
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0256816   -0.0310673   -0.0202959
12-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                -0.0339349   -0.0367715   -0.0310983
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0363853   -0.0396132   -0.0331574
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0357084   -0.0394300   -0.0319867
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0600611   -0.0638277   -0.0562946
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                -0.0578422   -0.0624317   -0.0532528
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.0560709   -0.0605073   -0.0516346
12-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                -0.0140455   -0.0230002   -0.0050907
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                -0.0089405   -0.0216046    0.0037237
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                 0.0048652   -0.0064282    0.0161586
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                -0.0186931   -0.0208085   -0.0165777
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0200896   -0.0239549   -0.0162243
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0186652   -0.0241168   -0.0132135


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25                0.0431752   -0.0254974    0.1118478
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0544276   -0.1443764    0.0355211
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0774945   -0.0449265    0.1999155
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0214830   -0.1375961    0.0946301
0-3 months     ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0463586   -0.1268513    0.0341342
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0712102   -0.2368674    0.0944470
0-3 months     ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0618910   -0.1245372    0.0007552
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0438072   -0.1224954    0.0348810
0-3 months     ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              <25               -0.0390722   -0.1202479    0.0421035
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0984346   -0.1806356   -0.0162336
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25                0.0219984   -0.0716677    0.1156646
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25                0.0722029   -0.0106513    0.1550572
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0177130   -0.1161090    0.0806830
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.1045990   -0.1911640   -0.0180341
0-3 months     ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          [25-30)              <25                0.0473223   -0.0758130    0.1704576
0-3 months     ki1000108-IRC              INDIA                          >=30                 <25               -0.0537047   -0.2467308    0.1393214
0-3 months     ki1000109-EE               PAKISTAN                       <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)              <25               -0.0307810   -0.2522690    0.1907070
0-3 months     ki1000109-EE               PAKISTAN                       >=30                 <25                0.0235692   -0.1894231    0.2365614
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0335977   -0.0833566    0.0161611
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.1048910   -0.1648365   -0.0449455
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0377161   -0.0986928    0.0232607
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               -0.0516191   -0.1115494    0.0083111
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               -0.0137630   -0.0518820    0.0243559
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0373384   -0.0816772    0.0070003
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0006566   -0.0355629    0.0368761
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0426311    0.0007999    0.0844622
0-3 months     ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0542338   -0.1183972    0.0099296
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.1050575   -0.1577312   -0.0523838
0-3 months     ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0222522   -0.0371085   -0.0073960
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0228604   -0.0392850   -0.0064358
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25                0.0033215   -0.0205551    0.0271982
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0430823   -0.0700416   -0.0161230
0-3 months     ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0923464   -0.1427284   -0.0419645
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.0672317   -0.1119448   -0.0225186
0-3 months     ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0134318   -0.0314877    0.0046241
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0701926   -0.0909216   -0.0494636
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0191182   -0.0298103   -0.0084261
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0385221   -0.0532917   -0.0237526
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25                0.0098701   -0.0342033    0.0539436
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25                0.0229692   -0.0316398    0.0775782
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0115531   -0.0656693    0.0887755
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <25                0.0384366   -0.0334673    0.1103405
3-6 months     ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0310162   -0.0883885    0.0263561
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0260916   -0.1408721    0.0886890
3-6 months     ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0355966   -0.0934799    0.0222867
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0029157   -0.0688667    0.0630354
3-6 months     ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              <25                0.0340197   -0.0514989    0.1195382
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0274918   -0.0947640    0.0397804
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               -0.0383650   -0.1663339    0.0896039
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.0819996   -0.1598433   -0.0041560
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0424262   -0.1275210    0.0426685
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0394453   -0.0378636    0.1167543
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25                0.0229476   -0.0759267    0.1218218
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               -0.0224654   -0.1920199    0.1470890
3-6 months     ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          [25-30)              <25                0.0105352   -0.0562611    0.0773316
3-6 months     ki1000108-IRC              INDIA                          >=30                 <25                0.0151862   -0.1027230    0.1330954
3-6 months     ki1000109-EE               PAKISTAN                       <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)              <25                0.0029168   -0.1120841    0.1179176
3-6 months     ki1000109-EE               PAKISTAN                       >=30                 <25               -0.0689200   -0.1783480    0.0405080
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0155771   -0.0434200    0.0122658
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.0324048   -0.0762076    0.0113980
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25                0.0379886   -0.0105983    0.0865755
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25                0.0060988   -0.0474891    0.0596868
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25                0.0043769   -0.0295646    0.0383184
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0232916   -0.0636539    0.0170706
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0108510   -0.0228538    0.0445558
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               -0.0211857   -0.0619955    0.0196241
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0147329   -0.0536130    0.0241472
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0246736   -0.0145477    0.0638949
3-6 months     ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0341554   -0.0854474    0.0171367
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.0411477   -0.0822128   -0.0000826
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0043297   -0.0445105    0.0358511
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               -0.0539163   -0.1047380   -0.0030946
3-6 months     ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0044004   -0.0200074    0.0112066
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0154645   -0.0323881    0.0014592
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               -0.0259367   -0.0475716   -0.0043017
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0176099   -0.0410410    0.0058213
3-6 months     ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0296478   -0.0613070    0.0020115
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <25               -0.0214549   -0.0519780    0.0090683
3-6 months     ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0057592   -0.0199163    0.0083980
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0137103   -0.0295699    0.0021492
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0083800   -0.0208847    0.0041246
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0152345   -0.0295752   -0.0008938
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               -0.0193884   -0.0413791    0.0026024
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               -0.0191991   -0.0477998    0.0094016
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25                0.0028871   -0.0300642    0.0358385
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <25                0.0124066   -0.0202235    0.0450367
6-12 months    ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              <25                0.0121925   -0.0124099    0.0367948
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 <25                0.0091679   -0.0373487    0.0556846
6-12 months    ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               -0.0066739   -0.0281812    0.0148334
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30                 <25                0.0015057   -0.0234833    0.0264947
6-12 months    ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              <25               -0.0374292   -0.0726855   -0.0021730
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 <25               -0.0022653   -0.0347575    0.0302269
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25                0.0514985    0.0127234    0.0902735
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.0119897   -0.0420947    0.0181152
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0095426   -0.0433113    0.0242261
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0306686   -0.0625626    0.0012254
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25                0.0228678   -0.0235832    0.0693189
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25                0.0081606   -0.0573015    0.0736226
6-12 months    ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          [25-30)              <25               -0.0115665   -0.0377220    0.0145889
6-12 months    ki1000108-IRC              INDIA                          >=30                 <25                0.0187941   -0.0179011    0.0554893
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               -0.0156022   -0.0365828    0.0053784
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               -0.0076913   -0.0222685    0.0068859
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               -0.0528720   -0.1132497    0.0075057
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               -0.0310561   -0.1055030    0.0433907
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               -0.0163253   -0.0378319    0.0051814
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               -0.0050714   -0.0293773    0.0192345
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               -0.0108448   -0.0272072    0.0055175
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               -0.0053607   -0.0232500    0.0125285
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25                0.0068760   -0.0070141    0.0207662
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25                0.0058876   -0.0122153    0.0239905
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               -0.0074479   -0.0287060    0.0138102
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               -0.0109657   -0.0319024    0.0099710
6-12 months    ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               -0.0033397   -0.0246422    0.0179628
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               -0.0168256   -0.0344577    0.0008066
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25                0.0066655   -0.0250195    0.0383506
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25                0.0028496   -0.0287059    0.0344050
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0201794   -0.0383622   -0.0019966
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               -0.0137966   -0.0353952    0.0078019
6-12 months    ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0154316   -0.0239823   -0.0068809
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               -0.0067567   -0.0194410    0.0059277
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25                0.0018897   -0.0089752    0.0127545
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0045398   -0.0156753    0.0065957
6-12 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               -0.0184457   -0.0347025   -0.0021890
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25                0.0037598   -0.0112383    0.0187578
6-12 months    ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0060709   -0.0150314    0.0028897
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0096275   -0.0193121    0.0000572
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               -0.0166477   -0.0285003   -0.0047952
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               -0.0103511   -0.0223316    0.0016294
6-12 months    ki1148112-LCNI-5           MALAWI                         <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <25                0.0251033    0.0013978    0.0488088
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 <25                0.0044048   -0.0184058    0.0272153
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0073987   -0.0141160   -0.0006813
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               -0.0078755   -0.0168523    0.0011014
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               -0.0005562   -0.0115956    0.0104832
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25                0.0004728   -0.0112076    0.0121531
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <25               -0.0093021   -0.0304781    0.0118740
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <25               -0.0071537   -0.0359382    0.0216308
12-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               -0.0054574   -0.0169107    0.0059960
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               -0.0096301   -0.0274997    0.0082396
12-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25                0.0009322   -0.0085917    0.0104560
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               -0.0017726   -0.0137878    0.0102426
12-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25                0.0192560    0.0053199    0.0331922
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25                0.0120757   -0.0014493    0.0256006
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               -0.0164524   -0.0380798    0.0051751
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               -0.0017485   -0.0173239    0.0138269
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25                0.0056335   -0.0159815    0.0272484
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25                0.0259804    0.0078485    0.0441124
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               -0.0109690   -0.0329857    0.0110476
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               -0.0268531   -0.0621351    0.0084288
12-24 months   ki1000108-IRC              INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               -0.0066814   -0.0220320    0.0086692
12-24 months   ki1000108-IRC              INDIA                          >=30                 <25               -0.0334596   -0.0588787   -0.0080406
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25                0.0014184   -0.0092900    0.0121268
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25                0.0048046   -0.0069963    0.0166055
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25                0.0035936   -0.0039640    0.0111512
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25                0.0001951   -0.0093536    0.0097438
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               -0.0112115   -0.0198817   -0.0025412
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               -0.0012352   -0.0111530    0.0086827
12-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25                0.0009341   -0.0089839    0.0108520
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25                0.0110952    0.0028047    0.0193856
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               -0.0000021   -0.0113326    0.0113285
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25                0.0030753   -0.0099773    0.0161280
12-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               -0.0071872   -0.0212777    0.0069033
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25                0.0083325   -0.0086262    0.0252913
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               -0.0070093   -0.0244391    0.0104205
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               -0.0052895   -0.0264448    0.0158658
12-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25                0.0031932   -0.0052323    0.0116187
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25                0.0097226    0.0020378    0.0174075
12-24 months   ki1135781-COHORTS          INDIA                          <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               -0.0024504   -0.0067181    0.0018173
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               -0.0017735   -0.0064356    0.0028887
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25                0.0022189   -0.0036985    0.0081363
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25                0.0039902   -0.0018096    0.0097900
12-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25                0.0051050   -0.0104181    0.0206281
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25                0.0189107    0.0044584    0.0333630
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               -0.0013965   -0.0057569    0.0029639
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25                0.0000280   -0.0058098    0.0058658
