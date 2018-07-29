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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

* arm
* meducyrs
* feducyrs
* W_mhtcm
* single
* impsan
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        mage       n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20            35     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)        79     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)        88     244
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           42     244
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20            61     564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)       213     564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)       168     564
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          122     564
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20            72     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)       258     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)       188     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          116     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20           130     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)       247     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       220     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          123     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20          8178   20035
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)      6355   20035
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)      3562   20035
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30         1940   20035
0-3 months     ki1119695-PROBIT           BELARUS                        <20          1295   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [20-25)      5553   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)      3562   12745
0-3 months     ki1119695-PROBIT           BELARUS                        >=30         2335   12745
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20            32     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)        56     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)        53     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30           39     180
0-3 months     ki1101329-Keneba           GAMBIA                         <20           201    1276
0-3 months     ki1101329-Keneba           GAMBIA                         [20-25)       299    1276
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)       287    1276
0-3 months     ki1101329-Keneba           GAMBIA                         >=30          489    1276
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20            92     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-25)       193     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)       154     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30          289     728
0-3 months     ki0047075b-MAL-ED          INDIA                          <20            27     200
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-25)        91     200
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)        65     200
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30           17     200
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20             6      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)        44      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)        33      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30            4      87
0-3 months     ki1000108-IRC              INDIA                          <20            33     377
0-3 months     ki1000108-IRC              INDIA                          [20-25)       204     377
0-3 months     ki1000108-IRC              INDIA                          [25-30)       113     377
0-3 months     ki1000108-IRC              INDIA                          >=30           27     377
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20           133    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)       564    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)       335    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30          136    1168
0-3 months     ki1135781-COHORTS          INDIA                          <20           364    4601
0-3 months     ki1135781-COHORTS          INDIA                          [20-25)      1572    4601
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)      1524    4601
0-3 months     ki1135781-COHORTS          INDIA                          >=30         1141    4601
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20             5     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-25)        40     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)        94     175
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30           36     175
0-3 months     ki1000109-EE               PAKISTAN                       <20             1     296
0-3 months     ki1000109-EE               PAKISTAN                       [20-25)        14     296
0-3 months     ki1000109-EE               PAKISTAN                       [25-30)       115     296
0-3 months     ki1000109-EE               PAKISTAN                       >=30          166     296
0-3 months     ki0047075b-MAL-ED          PERU                           <20            74     271
0-3 months     ki0047075b-MAL-ED          PERU                           [20-25)        79     271
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)        57     271
0-3 months     ki0047075b-MAL-ED          PERU                           >=30           61     271
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20            34     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)        71     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)        45     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           79     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            12     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)        61     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)        65     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           91     229
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20          1158    7845
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)      3182    7845
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      2020    7845
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1485    7845
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20            32     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)        77     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)        84     231
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30           38     231
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20            56     521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)       189     521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)       161     521
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30          115     521
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20            62     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)       227     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)       178     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30          107     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20           126     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)       236     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       214     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30          119     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20          5600   12577
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)      3910   12577
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)      2076   12577
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30          991   12577
3-6 months     ki1119695-PROBIT           BELARUS                        <20          1386   13309
3-6 months     ki1119695-PROBIT           BELARUS                        [20-25)      5837   13309
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)      3717   13309
3-6 months     ki1119695-PROBIT           BELARUS                        >=30         2369   13309
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20            37     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)        62     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)        62     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30           47     208
3-6 months     ki1101329-Keneba           GAMBIA                         <20           185    1394
3-6 months     ki1101329-Keneba           GAMBIA                         [20-25)       349    1394
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)       304    1394
3-6 months     ki1101329-Keneba           GAMBIA                         >=30          556    1394
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20            95     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-25)       216     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)       181     805
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30          313     805
3-6 months     ki0047075b-MAL-ED          INDIA                          <20            33     227
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-25)       100     227
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)        74     227
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30           20     227
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20            27     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)       155     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)        88     307
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30           37     307
3-6 months     ki1000108-IRC              INDIA                          <20            35     397
3-6 months     ki1000108-IRC              INDIA                          [20-25)       213     397
3-6 months     ki1000108-IRC              INDIA                          [25-30)       121     397
3-6 months     ki1000108-IRC              INDIA                          >=30           28     397
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20           129    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)       540    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)       323    1124
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30          132    1124
3-6 months     ki1135781-COHORTS          INDIA                          <20           347    4656
3-6 months     ki1135781-COHORTS          INDIA                          [20-25)      1609    4656
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)      1552    4656
3-6 months     ki1135781-COHORTS          INDIA                          >=30         1148    4656
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20             5     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-25)        56     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)       126     233
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30           46     233
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20            82     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-25)       168     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)       147     471
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30           74     471
3-6 months     ki1000109-EE               PAKISTAN                       <20             1     330
3-6 months     ki1000109-EE               PAKISTAN                       [20-25)        15     330
3-6 months     ki1000109-EE               PAKISTAN                       [25-30)       127     330
3-6 months     ki1000109-EE               PAKISTAN                       >=30          187     330
3-6 months     ki0047075b-MAL-ED          PERU                           <20            74     267
3-6 months     ki0047075b-MAL-ED          PERU                           [20-25)        74     267
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)        59     267
3-6 months     ki0047075b-MAL-ED          PERU                           >=30           60     267
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20            41     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)        71     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)        39     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           90     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)        62     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)        64     239
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          100     239
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20           121    1649
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)       508    1649
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)       554    1649
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          466    1649
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20           857    5877
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)      2347    5877
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      1521    5877
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1152    5877
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20            31     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)        72     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)        81     220
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30           36     220
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20            53     480
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)       174     480
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       150     480
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          103     480
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20            59     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)       213     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       174     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30           99     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20           123     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)       228     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       207     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          118     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <20          4333    9835
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)      3074    9835
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)      1611    9835
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30          817    9835
6-12 months    ki1119695-PROBIT           BELARUS                        <20          1341   12896
6-12 months    ki1119695-PROBIT           BELARUS                        [20-25)      5674   12896
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)      3579   12896
6-12 months    ki1119695-PROBIT           BELARUS                        >=30         2302   12896
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <20            34     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)        57     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)        60     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30           43     194
6-12 months    ki1101329-Keneba           GAMBIA                         <20           160    1304
6-12 months    ki1101329-Keneba           GAMBIA                         [20-25)       307    1304
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)       297    1304
6-12 months    ki1101329-Keneba           GAMBIA                         >=30          540    1304
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20            30     179
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)        71     179
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)        39     179
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30           39     179
6-12 months    ki1135781-COHORTS          GUATEMALA                      <20           105     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      [20-25)       234     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)       189     862
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30          334     862
6-12 months    ki0047075b-MAL-ED          INDIA                          <20            33     222
6-12 months    ki0047075b-MAL-ED          INDIA                          [20-25)        97     222
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)        72     222
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30           20     222
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20            29     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)       160     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)        95     323
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30           39     323
6-12 months    ki1000108-IRC              INDIA                          <20            35     400
6-12 months    ki1000108-IRC              INDIA                          [20-25)       215     400
6-12 months    ki1000108-IRC              INDIA                          [25-30)       122     400
6-12 months    ki1000108-IRC              INDIA                          >=30           28     400
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20           148    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)       558    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)       303    1137
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30          128    1137
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20            27     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       113     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       114     332
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30           78     332
6-12 months    ki1135781-COHORTS          INDIA                          <20           247    3765
6-12 months    ki1135781-COHORTS          INDIA                          [20-25)      1254    3765
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)      1266    3765
6-12 months    ki1135781-COHORTS          INDIA                          >=30          998    3765
6-12 months    ki1148112-LCNI-5           MALAWI                         <20            60     357
6-12 months    ki1148112-LCNI-5           MALAWI                         [20-25)        92     357
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)        90     357
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30          115     357
6-12 months    ki0047075b-MAL-ED          NEPAL                          <20             4     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [20-25)        56     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       125     230
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=30           45     230
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <20            82     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)       166     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)       152     475
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30           75     475
6-12 months    ki1000109-EE               PAKISTAN                       [25-30)         3       4
6-12 months    ki1000109-EE               PAKISTAN                       >=30            1       4
6-12 months    ki0047075b-MAL-ED          PERU                           <20            66     237
6-12 months    ki0047075b-MAL-ED          PERU                           [20-25)        62     237
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)        55     237
6-12 months    ki0047075b-MAL-ED          PERU                           >=30           54     237
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <20           283    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)       740    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)       680    2419
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30          716    2419
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20            40     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)        69     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)        35     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           88     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20            13     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)        56     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)        58     223
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           96     223
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            69    1074
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)       319    1074
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)       368    1074
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          318    1074
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20           661    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)      1785    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      1211    4560
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30          903    4560
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20            29     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)        61     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)        80     206
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30           36     206
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20            43     419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)       157     419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       127     419
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30           92     419
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20            53     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)       186     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       142     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30           77     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20            98     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)       168     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       150     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30           79     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20          1920    4650
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)      1499    4650
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)       799    4650
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30          432    4650
12-24 months   ki1119695-PROBIT           BELARUS                        <20           224    2533
12-24 months   ki1119695-PROBIT           BELARUS                        [20-25)      1097    2533
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)       712    2533
12-24 months   ki1119695-PROBIT           BELARUS                        >=30          500    2533
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <20            27     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)        47     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)        51     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30           40     165
12-24 months   ki1101329-Keneba           GAMBIA                         <20           130    1173
12-24 months   ki1101329-Keneba           GAMBIA                         [20-25)       275    1173
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)       262    1173
12-24 months   ki1101329-Keneba           GAMBIA                         >=30          506    1173
12-24 months   ki1135781-COHORTS          GUATEMALA                      <20           118     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)       235     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)       194     874
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30          327     874
12-24 months   ki0047075b-MAL-ED          INDIA                          <20            33     223
12-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)        98     223
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)        72     223
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30           20     223
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20            30     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)       161     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)        96     324
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30           37     324
12-24 months   ki1000108-IRC              INDIA                          <20            35     396
12-24 months   ki1000108-IRC              INDIA                          [20-25)       212     396
12-24 months   ki1000108-IRC              INDIA                          [25-30)       121     396
12-24 months   ki1000108-IRC              INDIA                          >=30           28     396
12-24 months   ki1135781-COHORTS          INDIA                          <20           189    3118
12-24 months   ki1135781-COHORTS          INDIA                          [20-25)      1018    3118
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)      1050    3118
12-24 months   ki1135781-COHORTS          INDIA                          >=30          861    3118
12-24 months   ki1148112-LCNI-5           MALAWI                         <20            45     254
12-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)        67     254
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)        66     254
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30           76     254
12-24 months   ki0047075b-MAL-ED          NEPAL                          <20             4     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)        54     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       123     226
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=30           45     226
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <20            60     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)       131     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)       117     367
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30           59     367
12-24 months   ki0047075b-MAL-ED          PERU                           <20            49     191
12-24 months   ki0047075b-MAL-ED          PERU                           [20-25)        47     191
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)        47     191
12-24 months   ki0047075b-MAL-ED          PERU                           >=30           48     191
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <20           262    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)       700    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)       645    2260
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30          653    2260
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20            38     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)        67     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)        35     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30           90     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20             8     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)        50     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)        60     207
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30           89     207
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20            45     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)       106     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)        94     302
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30           57     302


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
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
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
![](/tmp/f8e218e3-8199-44c2-926c-077a8875c5e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f8e218e3-8199-44c2-926c-077a8875c5e2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                3.3241126   3.1447087   3.5035165
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                3.6147497   3.5238701   3.7056293
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                3.6629349   3.5624874   3.7633824
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                3.3859030   3.2483298   3.5234763
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                4.1303882   3.8846704   4.3761061
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                4.0963763   3.9313441   4.2614086
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                4.1605877   3.9651868   4.3559885
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                4.0453680   3.8669563   4.2237796
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                3.8301179   3.6667817   3.9934542
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-25)              NA                3.6118708   3.5054411   3.7183006
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                3.5935158   3.4636422   3.7233893
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                3.8403321   3.6079988   4.0726655
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                4.0210332   3.6859502   4.3561162
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              NA                3.8266971   3.6938588   3.9595354
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                3.7857313   3.6816427   3.8898199
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                3.8710918   3.7180160   4.0241677
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  NA                3.3962438   3.2958120   3.4966756
0-3 months     ki0047075b-MAL-ED          PERU                           [20-25)              NA                3.3792165   3.2760270   3.4824060
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                3.2965557   3.1817164   3.4113950
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                3.1883070   3.0795044   3.2971096
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                3.3007426   3.1231496   3.4783355
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                3.2142664   3.0901196   3.3384132
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                3.4711750   3.2974266   3.6449234
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                3.4772195   3.3446361   3.6098028
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                3.2734390   3.1075148   3.4393632
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                3.6476451   3.5195464   3.7757438
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                3.5370150   3.3862151   3.6878148
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                3.3687096   3.2595679   3.4778512
0-3 months     ki1000108-IRC              INDIA                          <20                  NA                3.0370957   2.6573332   3.4168583
0-3 months     ki1000108-IRC              INDIA                          [20-25)              NA                3.1458199   2.9941027   3.2975371
0-3 months     ki1000108-IRC              INDIA                          [25-30)              NA                3.2492812   3.0440484   3.4545139
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                3.2241037   2.8128362   3.6353712
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                3.6291620   3.5370504   3.7212736
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                3.6404877   3.5901958   3.6907797
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                3.5966860   3.5199555   3.6734165
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                3.4219546   3.2957142   3.5481950
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                3.3403887   3.2010860   3.4796913
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                3.3571138   3.2642211   3.4500065
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                3.2906191   3.1850035   3.3962347
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                3.2608065   3.1546892   3.3669239
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                3.6102016   3.5007648   3.7196383
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                3.4874082   3.4348340   3.5399823
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                3.4701931   3.4015922   3.5387939
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                3.4278373   3.3444424   3.5112323
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                3.2887442   3.1986455   3.3788430
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                3.3152163   3.2535832   3.3768493
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                3.2819053   3.2215396   3.3422709
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                3.3523590   3.2735073   3.4312108
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  NA                3.2563232   3.1419683   3.3706781
0-3 months     ki1101329-Keneba           GAMBIA                         [20-25)              NA                3.1583111   3.0607745   3.2558477
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                3.1073607   3.0072492   3.2074723
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                3.0026966   2.9340660   3.0713271
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  NA                2.8748165   2.7556411   2.9939920
0-3 months     ki1119695-PROBIT           BELARUS                        [20-25)              NA                2.8478469   2.7287769   2.9669170
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.8201093   2.7116541   2.9285646
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.8210277   2.7083322   2.9337232
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                3.3410121   3.2900548   3.3919694
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                3.4009875   3.3683814   3.4335936
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                3.3938942   3.3548748   3.4329135
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                3.2977422   3.2511257   3.3443587
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                2.6529271   2.5714290   2.7344251
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                2.7946927   2.7237429   2.8656424
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                2.5357492   2.4589881   2.6125103
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                2.5812717   2.5171901   2.6453533
0-3 months     ki1135781-COHORTS          INDIA                          <20                  NA                3.5846483   3.5371966   3.6321001
0-3 months     ki1135781-COHORTS          INDIA                          [20-25)              NA                3.5635014   3.5365176   3.5904852
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                3.5577490   3.5287080   3.5867900
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                3.4550766   3.4192044   3.4909487
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                3.7218498   3.7071032   3.7365965
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                3.7388582   3.7236826   3.7540338
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                3.7053058   3.6837179   3.7268938
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                3.6645590   3.6361281   3.6929899
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                2.0268441   1.9267719   2.1269163
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                1.9035819   1.8236946   1.9834693
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.9711321   1.8962327   2.0460316
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                2.0490740   1.9495608   2.1485872
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                2.2368463   2.0610387   2.4126540
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                2.0893167   1.9443522   2.2342812
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                2.1276321   1.9805294   2.2747349
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                2.1408695   2.0026659   2.2790731
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                2.0383717   1.9252817   2.1514617
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-25)              NA                1.8644457   1.7670248   1.9618666
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.8252459   1.7456313   1.9048606
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.8605437   1.6992415   2.0218458
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                2.6912595   2.5512798   2.8312392
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              NA                2.0280190   1.9397177   2.1163203
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                1.9965113   1.9212627   2.0717599
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                2.0472548   1.9472691   2.1472405
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  NA                1.9809599   1.8664845   2.0954354
3-6 months     ki0047075b-MAL-ED          PERU                           [20-25)              NA                1.9482152   1.8269276   2.0695029
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                2.0258618   1.8752253   2.1764983
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                1.8998690   1.7884003   2.0113378
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                2.0059573   1.8629056   2.1490091
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                2.0323401   1.9259227   2.1387575
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.9308869   1.7268996   2.1348741
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.8324748   1.7220864   1.9428632
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.9682182   1.6918453   2.2445911
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                1.8218644   1.6845630   1.9591657
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.7357400   1.6149806   1.8564994
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.9129663   1.8149754   2.0109572
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                2.1596907   1.8477040   2.4716773
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                1.7361350   1.5939751   1.8782948
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                1.8599216   1.6937500   2.0260933
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                1.6939794   1.3430133   2.0449456
3-6 months     ki1000108-IRC              INDIA                          <20                  NA                2.0994371   1.8570812   2.3417930
3-6 months     ki1000108-IRC              INDIA                          [20-25)              NA                1.8250837   1.7436001   1.9065673
3-6 months     ki1000108-IRC              INDIA                          [25-30)              NA                1.9037377   1.7849761   2.0224992
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                1.9304333   1.6721154   2.1887511
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                2.0341953   1.8795390   2.1888517
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                1.9394919   1.8888338   1.9901500
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.9318152   1.8578170   2.0058134
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.8835670   1.7870471   1.9800869
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                1.8041890   1.6722370   1.9361409
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                1.8104079   1.7361717   1.8846442
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.8821673   1.7883708   1.9759638
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.8106707   1.7062069   1.9151344
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                2.0099840   1.9235438   2.0964242
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                1.9912298   1.9421195   2.0403401
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.9935112   1.9339557   2.0530667
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.9315935   1.8573155   2.0058715
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                2.0540939   1.9857132   2.1224746
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                2.0131247   1.9532475   2.0730019
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                2.0341414   1.9720793   2.0962034
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.9832383   1.8982345   2.0682421
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.7889854   1.6529871   1.9249838
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                1.8007927   1.7384042   1.8631812
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.7621584   1.7017378   1.8225791
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.8450684   1.7828328   1.9073040
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  NA                2.1191236   2.0260985   2.2121487
3-6 months     ki1101329-Keneba           GAMBIA                         [20-25)              NA                2.0121074   1.9273228   2.0968921
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                1.9707072   1.8834632   2.0579511
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                1.9482835   1.8931051   2.0034619
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                1.7676448   1.6743529   1.8609367
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                1.7056730   1.6404198   1.7709262
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                1.7272432   1.6591791   1.7953074
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                1.5998974   1.5008100   1.6989847
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  NA                2.1010578   2.0501641   2.1519515
3-6 months     ki1119695-PROBIT           BELARUS                        [20-25)              NA                2.0945652   2.0537029   2.1354275
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.0930499   2.0424720   2.1436278
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.0697794   2.0192897   2.1202691
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                1.9791206   1.9277312   2.0305100
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                2.0009708   1.9693067   2.0326348
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.9418001   1.9042509   1.9793492
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.9602353   1.9179732   2.0024974
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                1.8732416   1.8073330   1.9391503
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                1.7833338   1.7290340   1.8376336
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                1.7322781   1.6778888   1.7866674
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                1.7559270   1.7054549   1.8063990
3-6 months     ki1135781-COHORTS          INDIA                          <20                  NA                1.8695879   1.8280970   1.9110788
3-6 months     ki1135781-COHORTS          INDIA                          [20-25)              NA                1.8595750   1.8374529   1.8816972
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                1.8603241   1.8362085   1.8844397
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                1.8339294   1.8049360   1.8629229
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                1.9449341   1.9310162   1.9588520
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                1.8912363   1.8726937   1.9097788
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                1.9145635   1.8881969   1.9409301
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                1.8954908   1.8635746   1.9274070
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                1.1527210   1.0959924   1.2094497
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                1.1659172   1.1235000   1.2083344
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.1122936   1.0754612   1.1491259
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.1044856   1.0575870   1.1513842
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                1.2559827   1.1416449   1.3703205
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                1.4219385   1.3550786   1.4887985
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                1.3867260   1.3145789   1.4588730
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                1.4003670   1.3172432   1.4834908
6-12 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                1.0620422   0.9969050   1.1271795
6-12 months    ki0047075b-MAL-ED          INDIA                          [20-25)              NA                1.0846348   1.0454430   1.1238267
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.1154154   1.0724518   1.1583790
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.0556663   0.9790372   1.1322954
6-12 months    ki0047075b-MAL-ED          PERU                           <20                  NA                1.2207411   1.1663781   1.2751042
6-12 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                1.2168996   1.1486067   1.2851925
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                1.1306838   1.0642135   1.1971541
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                1.2143876   1.1569232   1.2718521
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                1.2404777   1.1787307   1.3022248
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                1.1248410   1.0664979   1.1831840
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.3097054   1.2259274   1.3934834
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.1508435   1.0933318   1.2083552
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.9188660   0.7741947   1.0635374
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                1.0792640   1.0103858   1.1481422
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.9975064   0.9376489   1.0573639
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9736092   0.9251760   1.0220425
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                1.0970947   0.9265407   1.2676487
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                1.0292578   0.9642270   1.0942886
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                1.0953624   1.0066101   1.1841146
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                1.0926686   0.9453553   1.2399818
6-12 months    ki1000108-IRC              INDIA                          <20                  NA                1.2444658   1.1036063   1.3853253
6-12 months    ki1000108-IRC              INDIA                          [20-25)              NA                1.2520424   1.2112037   1.2928811
6-12 months    ki1000108-IRC              INDIA                          [25-30)              NA                1.2321258   1.1878748   1.2763768
6-12 months    ki1000108-IRC              INDIA                          >=30                 NA                1.2986411   1.2125965   1.3846857
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                1.1376734   1.1026989   1.1726479
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                1.1066535   1.0850001   1.1283068
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.0694747   1.0320924   1.1068569
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.0873068   1.0428654   1.1317483
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                1.0272273   0.7581203   1.2963342
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                1.0181236   0.8810713   1.1551760
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.9141370   0.8358619   0.9924122
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.9582449   0.8313524   1.0851374
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                1.1818020   1.1127605   1.2508435
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                1.1847100   1.1476657   1.2217544
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.1426799   1.1034042   1.1819556
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.1683060   1.1186973   1.2179146
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                1.1831380   1.1318456   1.2344304
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                1.1831093   1.1573658   1.2088528
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.1590572   1.1265680   1.1915464
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.1663676   1.1283178   1.2044175
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                1.1932448   1.1518569   1.2346327
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                1.2276632   1.1979714   1.2573550
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                1.2431744   1.2137420   1.2726068
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.2332049   1.1881515   1.2782584
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.2324669   1.1461459   1.3187880
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                1.2134491   1.1745199   1.2523783
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.1946213   1.1588490   1.2303936
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.1895452   1.1539943   1.2250961
6-12 months    ki1101329-Keneba           GAMBIA                         <20                  NA                1.1551829   1.1165824   1.1937834
6-12 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                1.2091978   1.1699111   1.2484845
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                1.1937788   1.1550930   1.2324647
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                1.1542799   1.1253258   1.1832339
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                1.1767710   1.0954361   1.2581059
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                1.0828859   1.0373886   1.1283831
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                1.1016676   1.0372258   1.1661095
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                1.1001300   1.0357453   1.1645147
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                1.2168135   1.1722275   1.2613995
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                1.1817252   1.1477386   1.2157118
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                1.1390160   1.1041011   1.1739310
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                1.1431377   1.0973711   1.1889043
6-12 months    ki1119695-PROBIT           BELARUS                        <20                  NA                1.4882062   1.4345101   1.5419022
6-12 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                1.4811237   1.4399100   1.5223375
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                1.4495857   1.4092545   1.4899170
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                1.4714211   1.4363147   1.5065274
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                1.2010187   1.1716011   1.2304364
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                1.1975250   1.1798682   1.2151819
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.2041705   1.1836748   1.2246662
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.1893447   1.1676943   1.2109952
6-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                1.0579606   1.0185434   1.0973779
6-12 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                1.0053080   0.9754758   1.0351401
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.9805797   0.9506704   1.0104889
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                1.0329199   1.0068865   1.0589534
6-12 months    ki1135781-COHORTS          INDIA                          <20                  NA                1.0851750   1.0485899   1.1217601
6-12 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                1.0861078   1.0701296   1.1020860
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                1.0858637   1.0697761   1.1019514
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                1.0725152   1.0535046   1.0915258
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                1.0994989   1.0650633   1.1339346
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                1.0804538   1.0590778   1.1018298
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                1.0487266   1.0273221   1.0701310
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                1.0557965   1.0342297   1.0773634
6-12 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                1.2487616   1.1915654   1.3059579
6-12 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                1.2883014   1.2399408   1.3366621
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                1.3370808   1.2919075   1.3822542
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                1.2715812   1.2293473   1.3138151
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                1.1225017   1.1130551   1.1319482
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                1.0970288   1.0859203   1.1081373
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                1.0952107   1.0807038   1.1097176
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                1.0895428   1.0678464   1.1112391
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.8549816   0.8237364   0.8862268
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.8535503   0.8282533   0.8788473
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.8485273   0.8250861   0.8719686
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.8376939   0.8106369   0.8647509
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                1.0368763   0.9570149   1.1167377
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.9692006   0.9146352   1.0237660
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.9705491   0.9254486   1.0156495
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.9725384   0.9020833   1.0429935
12-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.8830378   0.8529551   0.9131206
12-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              NA                0.8836189   0.8589618   0.9082759
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.8652701   0.8361069   0.8944332
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.8705591   0.8375010   0.9036172
12-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.8330503   0.7984297   0.8676710
12-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.8072601   0.7619677   0.8525524
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.8815723   0.8388517   0.9242929
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.8636829   0.8247123   0.9026534
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.9096029   0.8740406   0.9451653
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.9068139   0.8764120   0.9372158
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.9060959   0.8673702   0.9448216
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.9025357   0.8721856   0.9328858
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.7335167   0.6038479   0.8631855
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.7316808   0.6825135   0.7808481
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7373461   0.6912768   0.7834154
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8082348   0.7776004   0.8388692
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7402406   0.6493854   0.8310957
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.7558988   0.7180369   0.7937608
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.7320966   0.6851839   0.7790094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6885138   0.6022386   0.7747890
12-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.8186313   0.7586709   0.8785918
12-24 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.8393475   0.8128730   0.8658220
12-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.8307191   0.7950867   0.8663516
12-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.7630580   0.6865571   0.8395589
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.7813899   0.7377598   0.8250201
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.7392731   0.7163330   0.7622132
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7403149   0.7164892   0.7641406
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.7663883   0.7391986   0.7935780
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.8871735   0.8492887   0.9250582
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.8484232   0.8305289   0.8663175
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.8627779   0.8416850   0.8838709
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8495648   0.8207394   0.8783903
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.8813161   0.8563069   0.9063254
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.8702492   0.8513378   0.8891606
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.8636533   0.8412067   0.8860999
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.8882530   0.8594685   0.9170374
12-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.8312959   0.8082090   0.8543829
12-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.8316195   0.8121836   0.8510554
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.8409396   0.8173885   0.8644907
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.8572199   0.8404448   0.8739950
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.8788728   0.8427383   0.9150072
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.8180464   0.7907117   0.8453812
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.8361683   0.8104768   0.8618597
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.8436549   0.8061496   0.8811602
12-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.8490473   0.7675849   0.9305098
12-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.8673531   0.8126630   0.9220432
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8425688   0.7859454   0.8991921
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8909645   0.8222438   0.9596853
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.6218885   0.5575130   0.6862639
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.7560364   0.7166333   0.7954394
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6927170   0.6511510   0.7342830
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6918824   0.6369089   0.7468560
12-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7673597   0.7419884   0.7927310
12-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.7608872   0.7418275   0.7799470
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7742565   0.7551701   0.7933429
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7902181   0.7741975   0.8062387
12-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.7842050   0.7649663   0.8034437
12-24 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.8211735   0.8112191   0.8311280
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.8249259   0.8149149   0.8349370
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.8130598   0.8019636   0.8241560
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7040759   0.6846109   0.7235408
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.7011657   0.6884244   0.7139070
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.7089001   0.6955315   0.7222687
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7068933   0.6941097   0.7196770
12-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.8256510   0.7892721   0.8620299
12-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.8386503   0.8058055   0.8714952
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.8319366   0.7930740   0.8707992
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.8588148   0.8268685   0.8907611
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.8003887   0.7921734   0.8086041
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.7914887   0.7831868   0.7997906
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.7983111   0.7866192   0.8100030
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.7920795   0.7766857   0.8074732


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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1071811   1.1004379   1.1139244
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.8459764   0.8299714   0.8619814
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8796561   0.8622733   0.8970390
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7966772   0.7913584   0.8019959


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20                0.2906371    0.0895236    0.4917506
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20                0.3388223    0.1331720    0.5444726
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20                0.0617904   -0.1642619    0.2878428
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               -0.0340119   -0.3288177    0.2607939
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20                0.0301994   -0.2825023    0.3429012
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.0850203   -0.3865315    0.2164909
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.2182471   -0.4137420   -0.0227522
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.2366022   -0.4452751   -0.0279292
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 <20                0.0102142   -0.2734708    0.2938992
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              <20               -0.1943361   -0.5521773    0.1635052
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <20               -0.2353019   -0.5838125    0.1132088
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <20               -0.1499414   -0.5176962    0.2178135
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0170273   -0.1555382    0.1214835
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              <20               -0.0996881   -0.2480651    0.0486889
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.2079368   -0.3545544   -0.0613192
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               -0.0864762   -0.3037180    0.1307657
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20                0.1704324   -0.0781434    0.4190083
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20                0.1764769   -0.0446541    0.3976079
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.3742061    0.1646260    0.5837861
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.2635760    0.0394576    0.4876943
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0952706   -0.1031905    0.2937317
0-3 months     ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          [20-25)              <20                0.1087242   -0.3002229    0.5176712
0-3 months     ki1000108-IRC              INDIA                          [25-30)              <20                0.2121854   -0.2194859    0.6438567
0-3 months     ki1000108-IRC              INDIA                          >=30                 <20                0.1870080   -0.3727782    0.7467941
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20                0.0113258   -0.1093307    0.1319822
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.0324760   -0.1936988    0.1287468
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.2072074   -0.3816358   -0.0327789
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0167252   -0.1505670    0.1840173
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0497696   -0.2244479    0.1249088
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0795821   -0.2546993    0.0955351
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.1227934   -0.2422129   -0.0033738
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.1400085   -0.2667009   -0.0133161
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.1823642   -0.3178291   -0.0468993
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20                0.0264720   -0.0815449    0.1344890
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0068389   -0.1140998    0.1004220
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20                0.0636148   -0.0549345    0.1821641
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         [20-25)              <20               -0.0980121   -0.2480607    0.0520365
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              <20               -0.1489625   -0.3007056    0.0027806
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 <20               -0.2536267   -0.3872532   -0.1200001
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0269696   -0.0878351    0.0338959
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0547072   -0.1155054    0.0060910
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0537888   -0.1040906   -0.0034870
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.0599753   -0.0003507    0.1203014
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20                0.0528820   -0.0111087    0.1168728
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0432699   -0.1121556    0.0256157
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              <20                0.1417656    0.0342791    0.2492522
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.1171779   -0.2282967   -0.0060590
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.0716554   -0.1741261    0.0308152
0-3 months     ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          [20-25)              <20               -0.0211469   -0.0756833    0.0333894
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              <20               -0.0268993   -0.0824853    0.0286867
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 <20               -0.1295718   -0.1890349   -0.0701087
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20                0.0170084   -0.0020174    0.0360341
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0165440   -0.0408286    0.0077407
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0572908   -0.0890792   -0.0255024
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               -0.1232621   -0.2505891    0.0040649
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               -0.0557119   -0.1802354    0.0688115
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20                0.0222299   -0.1184623    0.1629222
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               -0.1475296   -0.3747246    0.0796654
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               -0.1092142   -0.3380612    0.1196328
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.0959769   -0.3190312    0.1270774
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.1739260   -0.3225577   -0.0252942
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.2131258   -0.3505691   -0.0756824
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.1778280   -0.3742382    0.0185822
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              <20               -0.6632405   -0.8282287   -0.4982523
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <20               -0.6947482   -0.8531830   -0.5363134
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <20               -0.6440047   -0.8153661   -0.4726433
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0327447   -0.1999682    0.1344788
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              <20                0.0449019   -0.1443249    0.2341286
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.0810909   -0.2400947    0.0779129
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20                0.0263827   -0.1515575    0.2043229
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               -0.0750705   -0.3241531    0.1740121
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               -0.1734825   -0.3549590    0.0079939
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.1463538   -0.4546759    0.1619682
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.2324782   -0.5337463    0.0687898
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20               -0.0552519   -0.3479906    0.2374868
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               -0.4235557   -0.7664042   -0.0807072
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               -0.2997690   -0.6532498    0.0537118
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               -0.4657112   -0.9352992    0.0038768
3-6 months     ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          [20-25)              <20               -0.2743534   -0.5300407   -0.0186662
3-6 months     ki1000108-IRC              INDIA                          [25-30)              <20               -0.1956995   -0.4655896    0.0741907
3-6 months     ki1000108-IRC              INDIA                          >=30                 <20               -0.1690039   -0.5232135    0.1852058
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               -0.0947034   -0.2782550    0.0888482
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.1023802   -0.2880117    0.0832513
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.1506283   -0.3148201    0.0135635
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0062189   -0.1450624    0.1575003
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20                0.0779783   -0.0838249    0.2397815
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20                0.0064817   -0.1617149    0.1746782
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0187542   -0.1163881    0.0788798
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0164728   -0.1199555    0.0870100
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0783905   -0.1908262    0.0340452
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               -0.0409692   -0.1302955    0.0483572
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0199525   -0.1113772    0.0714722
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               -0.0708555   -0.1786524    0.0369413
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.0118073   -0.1374505    0.1610651
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0268270   -0.1752928    0.1216388
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0560830   -0.0931778    0.2053437
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         [20-25)              <20               -0.1070162   -0.2327947    0.0187624
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              <20               -0.1484165   -0.2760337   -0.0207992
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 <20               -0.1708401   -0.2789340   -0.0627462
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0619718   -0.1757530    0.0518094
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0404016   -0.1558733    0.0750701
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.1677475   -0.3038364   -0.0316585
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0064926   -0.0451679    0.0321827
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0080079   -0.0574054    0.0413896
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0312785   -0.0875310    0.0249741
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.0218501   -0.0384226    0.0821229
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               -0.0373206   -0.1007956    0.0261544
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0188853   -0.0852889    0.0475183
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0899078   -0.1751156   -0.0047001
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.1409635   -0.2263634   -0.0555636
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.1173147   -0.1999858   -0.0346435
3-6 months     ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          [20-25)              <20               -0.0100129   -0.0569950    0.0369692
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              <20               -0.0092638   -0.0571995    0.0386718
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 <20               -0.0356585   -0.0862350    0.0149181
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0536978   -0.0764953   -0.0309003
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0303706   -0.0601164   -0.0006247
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0494433   -0.0829875   -0.0158991
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20                0.0131962   -0.0576156    0.0840080
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               -0.0404275   -0.1080894    0.0272344
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               -0.0482354   -0.1218627    0.0253918
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20                0.1659558    0.0361149    0.2957968
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20                0.1307433   -0.0026580    0.2641446
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <20                0.1443843    0.0037901    0.2849786
6-12 months    ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          [20-25)              <20                0.0225926   -0.0532668    0.0984519
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              <20                0.0533732   -0.0244175    0.1311639
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.0063759   -0.1065588    0.0938070
6-12 months    ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0038416   -0.0905879    0.0829047
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               -0.0900573   -0.1759083   -0.0042063
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.0063535   -0.0850377    0.0723306
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               -0.1156367   -0.2001643   -0.0311092
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20                0.0692277   -0.0350997    0.1735550
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               -0.0896342   -0.1737381   -0.0055303
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.1603980    0.0018740    0.3189220
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.0786404   -0.0765493    0.2338300
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0547432   -0.0969321    0.2064185
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               -0.0678369   -0.2503682    0.1146944
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               -0.0017324   -0.1939968    0.1905321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               -0.0044262   -0.2297922    0.2209399
6-12 months    ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          [20-25)              <20                0.0075766   -0.1390836    0.1542367
6-12 months    ki1000108-IRC              INDIA                          [25-30)              <20               -0.0123401   -0.1599868    0.1353066
6-12 months    ki1000108-IRC              INDIA                          >=30                 <20                0.0541753   -0.1108855    0.2192361
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               -0.0310199   -0.0786610    0.0166212
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.0681987   -0.1236915   -0.0127060
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.0503665   -0.1035254    0.0027923
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               -0.0091036   -0.3102432    0.2920359
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               -0.1130902   -0.3926434    0.1664629
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               -0.0689824   -0.3648116    0.2268469
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0029080   -0.0754287    0.0812448
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0391221   -0.1185290    0.0402848
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0134960   -0.0984831    0.0714911
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0000287   -0.0574188    0.0573615
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0240808   -0.0847970    0.0366354
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0167703   -0.0806326    0.0470919
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20                0.0344184   -0.0164599    0.0852966
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20                0.0499296   -0.0007753    0.1006345
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20                0.0399601   -0.0211760    0.1010963
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0190178   -0.1131645    0.0751289
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0378456   -0.1309348    0.0552436
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               -0.0429217   -0.1357943    0.0499509
6-12 months    ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20                0.0540149   -0.0009854    0.1090151
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20                0.0385960   -0.0160909    0.0932828
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               -0.0009030   -0.0491076    0.0473016
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               -0.0938852   -0.1863064   -0.0014640
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               -0.0751034   -0.1781618    0.0279551
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               -0.0766410   -0.1794298    0.0261477
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0350883   -0.0911264    0.0209497
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0777975   -0.1344175   -0.0211774
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.0736758   -0.1375600   -0.0097915
6-12 months    ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0070824   -0.0410075    0.0268426
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0386204   -0.0739668   -0.0032740
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0167851   -0.0571413    0.0235711
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               -0.0034937   -0.0377138    0.0307263
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20                0.0031517   -0.0325966    0.0389001
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0116740   -0.0480929    0.0247448
6-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0526527   -0.1018958   -0.0034096
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.0773810   -0.1266631   -0.0280989
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.0250407   -0.0720004    0.0219190
6-12 months    ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          [20-25)              <20                0.0009328   -0.0389440    0.0408097
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              <20                0.0006887   -0.0392406    0.0406180
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 <20               -0.0126598   -0.0538432    0.0285236
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               -0.0190451   -0.0594892    0.0213990
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               -0.0507724   -0.0912462   -0.0102985
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               -0.0437024   -0.0842515   -0.0031533
6-12 months    ki1148112-LCNI-5           MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20                0.0395398   -0.0338364    0.1129160
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20                0.0883192    0.0167323    0.1599061
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20                0.0228195   -0.0459660    0.0916051
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0254729   -0.0392079   -0.0117379
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0272910   -0.0446098   -0.0099722
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0329589   -0.0561586   -0.0097592
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               -0.0014313   -0.0404283    0.0375657
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               -0.0064543   -0.0444166    0.0315081
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               -0.0172877   -0.0577377    0.0231623
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               -0.0676757   -0.1642278    0.0288764
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               -0.0663272   -0.1581230    0.0254685
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.0643379   -0.1706446    0.0419688
12-24 months   ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              <20                0.0005810   -0.0381143    0.0392763
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.0177678   -0.0593834    0.0238478
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.0124787   -0.0570664    0.0321090
12-24 months   ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0257903   -0.0827499    0.0311694
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20                0.0485220   -0.0064175    0.1034615
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20                0.0306326   -0.0214329    0.0826980
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               -0.0027890   -0.0490367    0.0434587
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               -0.0035070   -0.0554688    0.0484547
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               -0.0070673   -0.0539930    0.0398585
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0018359   -0.1403651    0.1366933
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.0038294   -0.1336514    0.1413103
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0747181   -0.0583602    0.2077965
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20                0.0156583   -0.0827703    0.1140868
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               -0.0081439   -0.1103959    0.0941080
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               -0.0517268   -0.1770187    0.0735651
12-24 months   ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          [20-25)              <20                0.0207162   -0.0448288    0.0862612
12-24 months   ki1000108-IRC              INDIA                          [25-30)              <20                0.0120878   -0.0576612    0.0818368
12-24 months   ki1000108-IRC              INDIA                          >=30                 <20               -0.0555733   -0.1527723    0.0416256
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               -0.0421169   -0.0911944    0.0069607
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0410751   -0.0903779    0.0082277
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0150016   -0.0660636    0.0360603
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0387503   -0.0804566    0.0029560
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0243955   -0.0675957    0.0188046
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0376086   -0.0850430    0.0098257
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               -0.0110669   -0.0424190    0.0202851
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0176628   -0.0512690    0.0159434
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20                0.0069368   -0.0311991    0.0450728
12-24 months   ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20                0.0003236   -0.0299029    0.0305500
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20                0.0096436   -0.0232467    0.0425339
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20                0.0259240   -0.0025733    0.0544212
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0608263   -0.1061213   -0.0155314
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0427045   -0.0870213    0.0016123
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.0352178   -0.0872809    0.0168453
12-24 months   ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20                0.0183058   -0.0475279    0.0841395
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0064786   -0.0601897    0.0472326
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20                0.0419172   -0.0189803    0.1028147
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.1341479    0.0588665    0.2094292
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20                0.0708285   -0.0057147    0.1473717
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20                0.0699939   -0.0144366    0.1544245
12-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0064725   -0.0379143    0.0249694
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20                0.0068968   -0.0245087    0.0383022
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20                0.0228584   -0.0067512    0.0524680
12-24 months   ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          [20-25)              <20                0.0369685    0.0153370    0.0586001
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <20                0.0407209    0.0190552    0.0623867
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 <20                0.0288548    0.0066819    0.0510277
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               -0.0029102   -0.0260741    0.0202538
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20                0.0048242   -0.0186900    0.0283385
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20                0.0028174   -0.0203815    0.0260164
12-24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20                0.0129993   -0.0351679    0.0611665
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20                0.0062856   -0.0461335    0.0587047
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20                0.0331638   -0.0147033    0.0810310
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0089000   -0.0199623    0.0021622
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0020776   -0.0158510    0.0116958
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0083093   -0.0253734    0.0087549
