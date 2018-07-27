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







# Results Detail

## Results Plots
![](/tmp/3b08c6da-d1c7-46e4-adba-5a7fbf792b7a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3b08c6da-d1c7-46e4-adba-5a7fbf792b7a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                3.3631043   3.1727714   3.5534371
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                3.6183554   3.5245170   3.7121938
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                3.6669053   3.5635942   3.7702165
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                3.4103361   3.2614171   3.5592551
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                4.0183901   3.7561710   4.2806091
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                4.0559319   3.8842771   4.2275868
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                4.1253257   3.9225660   4.3280854
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                3.9695364   3.7798515   4.1592213
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                3.6513482   3.4461161   3.8565804
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-25)              NA                3.5820036   3.4699176   3.6940896
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                3.5532987   3.4147399   3.6918575
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                3.5419857   3.2036695   3.8803019
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                4.0537642   3.6652710   4.4422575
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              NA                3.8263967   3.6814965   3.9712968
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                3.7872257   3.6791396   3.8953118
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                3.8684017   3.7043832   4.0324202
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  NA                3.3928404   3.2750829   3.5105979
0-3 months     ki0047075b-MAL-ED          PERU                           [20-25)              NA                3.3584548   3.2398477   3.4770619
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                3.2963193   3.1594289   3.4332096
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                3.1855717   3.0559143   3.3152290
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                3.4359653   3.2005972   3.6713333
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                3.3097437   3.1678742   3.4516132
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                3.5198812   3.3011170   3.7386453
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                3.5283329   3.3746264   3.6820395
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                3.3453192   3.1248908   3.5657476
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                3.6238337   3.4820543   3.7656131
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                3.5419426   3.3821629   3.7017222
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                3.3613532   3.2454450   3.4772614
0-3 months     ki1000108-IRC              INDIA                          <20                  NA                3.0370957   2.6573332   3.4168583
0-3 months     ki1000108-IRC              INDIA                          [20-25)              NA                3.1458199   2.9941027   3.2975371
0-3 months     ki1000108-IRC              INDIA                          [25-30)              NA                3.2492812   3.0440484   3.4545139
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                3.2241037   2.8128362   3.6353712
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                3.6334069   3.5449448   3.7218690
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                3.6410041   3.5888806   3.6931276
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                3.5964736   3.5213386   3.6716086
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                3.4230517   3.2875436   3.5585598
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                3.3387340   3.2000120   3.4774559
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                3.3587347   3.2652648   3.4522047
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                3.2898175   3.1834554   3.3961796
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                3.2598990   3.1534780   3.3663201
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                3.5770440   3.4449863   3.7091016
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                3.4846302   3.4283711   3.5408893
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                3.4748936   3.4006910   3.5490962
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                3.4323397   3.3387748   3.5259046
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                3.2877832   3.1884016   3.3871649
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                3.3112306   3.2450576   3.3774035
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                3.2857812   3.2210559   3.3505066
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                3.3325658   3.2440394   3.4210921
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  NA                3.3434701   3.2214475   3.4654928
0-3 months     ki1101329-Keneba           GAMBIA                         [20-25)              NA                3.1955205   3.0976723   3.2933688
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                3.1288313   3.0231407   3.2345220
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                3.0395338   2.9671789   3.1118888
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  NA                2.8675991   2.7435383   2.9916600
0-3 months     ki1119695-PROBIT           BELARUS                        [20-25)              NA                2.8476226   2.7278934   2.9673519
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.8175574   2.7081801   2.9269346
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.8166427   2.7010052   2.9322802
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                3.3450165   3.2919888   3.3980442
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                3.4016835   3.3684406   3.4349265
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                3.3929841   3.3526409   3.4333273
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                3.2909079   3.2420860   3.3397298
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                2.5901231   2.4741251   2.7061210
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                2.7619698   2.6754422   2.8484974
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                2.5166980   2.4271031   2.6062930
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                2.5688624   2.4992691   2.6384558
0-3 months     ki1135781-COHORTS          INDIA                          <20                  NA                3.5667202   3.5141712   3.6192692
0-3 months     ki1135781-COHORTS          INDIA                          [20-25)              NA                3.5614499   3.5338526   3.5890471
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                3.5554896   3.5260145   3.5849647
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                3.4494771   3.4121826   3.4867717
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                3.7188078   3.7039868   3.7336287
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                3.7383012   3.7228834   3.7537191
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                3.7088034   3.6865137   3.7310930
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                3.6691471   3.6390223   3.6992720
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                1.9365329   1.8022682   2.0707975
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                1.8843140   1.7964632   1.9721649
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.9482478   1.8690739   2.0274218
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.9648583   1.8462785   2.0834381
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                2.2519675   2.0667631   2.4371719
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                2.0983945   1.9482544   2.2485346
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                2.1340349   1.9815044   2.2865655
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                2.1491961   2.0048599   2.2935324
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                2.0163082   1.8839101   2.1487064
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-25)              NA                1.8584400   1.7579723   1.9589076
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.8387953   1.7483274   1.9292633
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.8643139   1.6295724   2.0990554
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                2.0038430   1.5462072   2.4614788
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              NA                1.9680955   1.8646581   2.0715330
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                1.9694397   1.8891403   2.0497391
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                1.9605482   1.8425705   2.0785259
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  NA                2.0309813   1.9104260   2.1515367
3-6 months     ki0047075b-MAL-ED          PERU                           [20-25)              NA                1.9915773   1.8674994   2.1156552
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                2.0895435   1.9272485   2.2518385
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                1.9656562   1.8473500   2.0839624
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                2.0916215   1.9066554   2.2765875
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                2.0359505   1.9046053   2.1672957
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.9733678   1.7217498   2.2249859
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.8910829   1.7617890   2.0203768
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.8769999   1.5773586   2.1766413
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                1.8075390   1.6649087   1.9501692
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.7226949   1.5973128   1.8480770
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.9067067   1.8067929   2.0066204
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                2.1596907   1.8477040   2.4716773
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                1.7361350   1.5939751   1.8782948
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                1.8599216   1.6937500   2.0260933
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                1.6939794   1.3430133   2.0449456
3-6 months     ki1000108-IRC              INDIA                          <20                  NA                2.0994371   1.8570812   2.3417930
3-6 months     ki1000108-IRC              INDIA                          [20-25)              NA                1.8250837   1.7436001   1.9065673
3-6 months     ki1000108-IRC              INDIA                          [25-30)              NA                1.9037377   1.7849761   2.0224992
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                1.9304333   1.6721154   2.1887511
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                2.0312928   1.8723009   2.1902847
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                1.9423512   1.8912692   1.9934333
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.9275741   1.8564936   1.9986545
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.8770350   1.7725042   1.9815657
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                1.8038448   1.6710270   1.9366627
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                1.8108726   1.7365357   1.8852094
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.8819784   1.7881577   1.9757991
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.8103511   1.7057717   1.9149306
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                1.9621639   1.8613531   2.0629747
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                1.9789878   1.9264197   2.0315560
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.9795834   1.9143458   2.0448209
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.9150974   1.8276901   2.0025048
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                2.0243358   1.9495376   2.0991339
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                2.0027309   1.9381225   2.0673394
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                2.0224120   1.9569894   2.0878346
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.9623708   1.8695167   2.0552249
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.7697157   1.6214526   1.9179787
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                1.7997515   1.7351362   1.8643668
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.7592153   1.6971194   1.8213112
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.8336520   1.7686930   1.8986110
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  NA                2.0975633   1.9935218   2.2016048
3-6 months     ki1101329-Keneba           GAMBIA                         [20-25)              NA                2.0133190   1.9274120   2.0992259
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                1.9735027   1.8841929   2.0628125
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                1.9572471   1.9003386   2.0141556
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                1.7648065   1.6711109   1.8585021
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                1.7050945   1.6398249   1.7703641
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                1.7269343   1.6588244   1.7950441
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                1.5996630   1.4999492   1.6993769
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  NA                2.0983640   2.0432564   2.1534717
3-6 months     ki1119695-PROBIT           BELARUS                        [20-25)              NA                2.0961015   2.0550106   2.1371924
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                2.0934984   2.0425520   2.1444448
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                2.0729338   2.0219854   2.1238822
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                1.9778337   1.9248526   2.0308147
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                1.9996232   1.9675393   2.0317071
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.9435421   1.9048538   1.9822304
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.9671461   1.9233535   2.0109387
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                1.8469505   1.7706579   1.9232431
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                1.7816120   1.7220988   1.8411252
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                1.7168257   1.6571745   1.7764769
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                1.7480164   1.6951370   1.8008958
3-6 months     ki1135781-COHORTS          INDIA                          <20                  NA                1.8751756   1.8297965   1.9205548
3-6 months     ki1135781-COHORTS          INDIA                          [20-25)              NA                1.8590129   1.8362994   1.8817265
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                1.8659158   1.8410370   1.8907946
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                1.8313494   1.8012824   1.8614163
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                1.9437342   1.9296807   1.9577876
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                1.8920904   1.8733116   1.9108692
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                1.9178771   1.8910341   1.9447200
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                1.9012074   1.8672388   1.9351759
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                1.1178071   1.0519848   1.1836294
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                1.1501097   1.1044957   1.1957238
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                1.1007165   1.0621810   1.1392519
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                1.0707905   1.0128226   1.1287584
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                1.2867993   1.1549039   1.4186948
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                1.4303152   1.3524634   1.5081670
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                1.3800574   1.3014405   1.4586742
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                1.4155493   1.3200305   1.5110680
6-12 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                1.1264933   1.0471530   1.2058337
6-12 months    ki0047075b-MAL-ED          INDIA                          [20-25)              NA                1.0971361   1.0560031   1.1382691
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                1.1310172   1.0850019   1.1770325
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                1.1455701   1.0365553   1.2545849
6-12 months    ki0047075b-MAL-ED          PERU                           <20                  NA                1.2324521   1.1770937   1.2878105
6-12 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                1.2289954   1.1572239   1.3007670
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                1.1433135   1.0737648   1.2128622
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                1.2296866   1.1679962   1.2913769
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                1.2538248   1.1565085   1.3511410
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                1.1348481   1.0657289   1.2039673
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                1.3061941   1.1984208   1.4139674
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                1.1567716   1.0891622   1.2243810
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.9027561   0.7319463   1.0735658
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                1.0751179   0.9938687   1.1563671
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.9986415   0.9305284   1.0667547
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.9747056   0.9223476   1.0270635
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                1.0970947   0.9265407   1.2676487
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                1.0292578   0.9642270   1.0942886
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                1.0953624   1.0066101   1.1841146
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                1.0926686   0.9453553   1.2399818
6-12 months    ki1000108-IRC              INDIA                          <20                  NA                1.2444658   1.1036063   1.3853253
6-12 months    ki1000108-IRC              INDIA                          [20-25)              NA                1.2520424   1.2112037   1.2928811
6-12 months    ki1000108-IRC              INDIA                          [25-30)              NA                1.2321258   1.1878748   1.2763768
6-12 months    ki1000108-IRC              INDIA                          >=30                 NA                1.2986411   1.2125965   1.3846857
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                1.1361102   1.1000021   1.1722183
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                1.1074033   1.0845378   1.1302688
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                1.0681627   1.0338610   1.1024644
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                1.0862845   1.0308507   1.1417182
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                1.1712193   0.8165549   1.5258837
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                1.0631565   0.9087141   1.2175989
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.9348820   0.8492693   1.0204947
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                1.0001921   0.8486563   1.1517279
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                1.1817563   1.1126595   1.2508530
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                1.1848190   1.1477415   1.2218964
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                1.1426783   1.1033212   1.1820354
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                1.1681469   1.1183914   1.2179025
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                1.1837849   1.1295474   1.2380225
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                1.1837463   1.1577355   1.2097571
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                1.1602978   1.1272004   1.1933951
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                1.1667470   1.1280911   1.2054030
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                1.1950190   1.1534217   1.2366163
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                1.2276988   1.1978942   1.2575034
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                1.2452118   1.2156066   1.2748170
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                1.2335188   1.1883440   1.2786937
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                1.2109181   1.1139983   1.3078379
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                1.2049814   1.1638660   1.2460968
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                1.1923155   1.1554060   1.2292249
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                1.1895960   1.1523576   1.2268344
6-12 months    ki1101329-Keneba           GAMBIA                         <20                  NA                1.1848896   1.1414071   1.2283721
6-12 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                1.2061038   1.1649163   1.2472913
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                1.2002484   1.1631985   1.2372983
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                1.1538496   1.1241667   1.1835325
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                1.1748025   1.0899918   1.2596132
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                1.0833074   1.0373653   1.1292495
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                1.1019232   1.0367308   1.1671156
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                1.1005919   1.0340305   1.1671533
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                1.2179911   1.1732278   1.2627545
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                1.1816300   1.1477049   1.2155550
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                1.1389643   1.1040240   1.1739046
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                1.1430089   1.0969587   1.1890592
6-12 months    ki1119695-PROBIT           BELARUS                        <20                  NA                1.4873779   1.4315933   1.5431625
6-12 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                1.4807724   1.4395057   1.5220391
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                1.4493645   1.4086361   1.4900930
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                1.4705747   1.4350180   1.5061313
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                1.2006367   1.1704308   1.2308426
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                1.1974265   1.1794986   1.2153543
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                1.2042032   1.1831639   1.2252425
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                1.1889455   1.1665630   1.2113281
6-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                1.0621134   1.0141351   1.1100917
6-12 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                1.0155367   0.9819238   1.0491496
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.9796273   0.9460207   1.0132339
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                1.0289930   1.0007543   1.0572317
6-12 months    ki1135781-COHORTS          INDIA                          <20                  NA                1.0868520   1.0476817   1.1260223
6-12 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                1.0877767   1.0713655   1.1041879
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                1.0859543   1.0694957   1.1024128
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                1.0717752   1.0520634   1.0914870
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                1.0951569   1.0570642   1.1332495
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                1.0817901   1.0598356   1.1037447
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                1.0521972   1.0297083   1.0746862
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                1.0561540   1.0338637   1.0784444
6-12 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                1.2378242   1.1706114   1.3050370
6-12 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                1.2700048   1.2127670   1.3272426
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                1.3233825   1.2670961   1.3796689
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                1.2648093   1.2166232   1.3129954
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                1.1215876   1.1120134   1.1311618
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                1.0970866   1.0858203   1.1083530
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                1.0971858   1.0821560   1.1122156
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                1.0884660   1.0654217   1.1115104
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.8459122   0.8055324   0.8862919
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.8526527   0.8229486   0.8823569
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.8460826   0.8193825   0.8727827
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.8344795   0.7990750   0.8698840
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                1.0362769   0.9551620   1.1173917
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.9687951   0.9130024   1.0245878
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.9701000   0.9244013   1.0157987
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.9745023   0.9026541   1.0463505
12-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.8971805   0.8595999   0.9347610
12-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              NA                0.8848453   0.8586886   0.9110020
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.8652031   0.8322146   0.8981916
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.8773450   0.8233016   0.9313883
12-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.8337493   0.7990853   0.8684133
12-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.8068843   0.7614411   0.8523274
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.8811463   0.8382745   0.9240181
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.8637666   0.8245907   0.9029426
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.8625029   0.8030649   0.9219410
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.8764930   0.8395052   0.9134807
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.8519498   0.7939442   0.9099554
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.8751122   0.8381845   0.9120399
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.7283269   0.5958141   0.8608397
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.7329334   0.6834065   0.7824603
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.7377390   0.6915125   0.7839654
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.8077391   0.7768236   0.8386545
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7402406   0.6493854   0.8310957
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.7558988   0.7180369   0.7937608
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.7320966   0.6851839   0.7790094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6885138   0.6022386   0.7747890
12-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.8186313   0.7586709   0.8785918
12-24 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.8393475   0.8128730   0.8658220
12-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.8307191   0.7950867   0.8663516
12-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.7630580   0.6865571   0.8395589
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.7780532   0.7311046   0.8250019
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.7416676   0.7172532   0.7660819
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7402565   0.7144963   0.7660168
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.7663468   0.7362396   0.7964541
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.8854915   0.8464328   0.9245503
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.8486846   0.8305458   0.8668235
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.8629505   0.8416532   0.8842478
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.8497846   0.8204304   0.8791387
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.8844663   0.8587331   0.9101995
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.8721606   0.8529312   0.8913901
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.8657106   0.8429482   0.8884730
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.8905230   0.8610370   0.9200091
12-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.8334715   0.8055653   0.8613777
12-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.8336513   0.8137636   0.8535391
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.8413977   0.8171521   0.8656433
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.8547571   0.8378270   0.8716873
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.8780891   0.8416618   0.9145164
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.8179504   0.7906561   0.8452447
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.8365058   0.8108634   0.8621483
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.8439945   0.8063525   0.8816365
12-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.8339522   0.7493240   0.9185804
12-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.8655320   0.8111999   0.9198641
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.8393596   0.7810202   0.8976991
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8896771   0.8232010   0.9561532
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.6386286   0.5644761   0.7127810
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.7573441   0.7159675   0.7987206
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6975331   0.6542028   0.7408633
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6960139   0.6335535   0.7584743
12-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7698290   0.7392371   0.8004208
12-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.7681777   0.7468846   0.7894709
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7715925   0.7496414   0.7935437
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7954655   0.7780219   0.8129091
12-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.7890648   0.7682507   0.8098788
12-24 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.8225182   0.8121812   0.8328553
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.8268704   0.8165698   0.8371710
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.8111255   0.7996460   0.8226050
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7032888   0.6818188   0.7247589
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.7025758   0.6892654   0.7158863
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.7108323   0.6968487   0.7248159
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7085809   0.6953153   0.7218465
12-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.8246604   0.7850807   0.8642402
12-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.8407188   0.8057597   0.8756778
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.8315875   0.7899942   0.8731808
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.8595001   0.8260526   0.8929476
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.7999735   0.7916537   0.8082932
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.7916907   0.7831127   0.8002686
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.7998206   0.7878189   0.8118224
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.7935157   0.7771052   0.8099262


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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20                0.2552511    0.0430431    0.4674591
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20                0.3038011    0.0872375    0.5203646
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20                0.0472318   -0.1944362    0.2888999
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20                0.0375419   -0.2758655    0.3509493
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20                0.1069356   -0.2245313    0.4384026
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.0488537   -0.3724880    0.2747807
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.0693447   -0.3031897    0.1645004
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.0980495   -0.3456758    0.1495768
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.1093626   -0.5050620    0.2863369
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              <20               -0.2273676   -0.6420036    0.1872685
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <20               -0.2665385   -0.6697874    0.1367103
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <20               -0.1853625   -0.6070604    0.2363354
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0343856   -0.2015217    0.1327505
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              <20               -0.0965212   -0.2770919    0.0840496
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.2072688   -0.3824197   -0.0321178
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               -0.1262216   -0.4010398    0.1485967
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20                0.0839159   -0.2374186    0.4052504
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20                0.0923677   -0.1887441    0.3734794
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.2785145    0.0164266    0.5406024
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.1966234   -0.0756232    0.4688699
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0160340   -0.2330109    0.2650789
0-3 months     ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          [20-25)              <20                0.1087242   -0.3002229    0.5176712
0-3 months     ki1000108-IRC              INDIA                          [25-30)              <20                0.2121854   -0.2194859    0.6438567
0-3 months     ki1000108-IRC              INDIA                          >=30                 <20                0.1870080   -0.3727782    0.7467941
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20                0.0075972   -0.1122069    0.1274014
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.0369333   -0.1912613    0.1173948
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.2103552   -0.3908766   -0.0298338
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0200008   -0.1472727    0.1872742
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0489165   -0.2237212    0.1258882
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0788349   -0.2536755    0.0960056
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0924138   -0.2359558    0.0511283
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.1021504   -0.2536273    0.0493265
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.1447043   -0.3065487    0.0171401
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20                0.0234473   -0.0959494    0.1428440
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0020020   -0.1206025    0.1165985
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20                0.0447825   -0.0883100    0.1778751
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         [20-25)              <20               -0.1479496   -0.3043587    0.0084595
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              <20               -0.2146388   -0.3760700   -0.0532076
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 <20               -0.3039363   -0.4457981   -0.1620745
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0199765   -0.0832133    0.0432603
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0500418   -0.1153619    0.0152784
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0509564   -0.1035639    0.0016511
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.0566670   -0.0059191    0.1192532
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20                0.0479676   -0.0186620    0.1145972
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0541086   -0.1261885    0.0179713
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              <20                0.1718467    0.0271313    0.3165621
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.0734250   -0.2199950    0.0731450
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.0212606   -0.1565335    0.1140122
0-3 months     ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          [20-25)              <20               -0.0052703   -0.0646252    0.0540846
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              <20               -0.0112306   -0.0714816    0.0490204
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 <20               -0.1172431   -0.1816813   -0.0528049
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20                0.0194935    0.0001407    0.0388463
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0100044   -0.0347971    0.0147883
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0496606   -0.0829167   -0.0164045
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               -0.0522188   -0.2126706    0.1082329
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20                0.0117150   -0.1441552    0.1675851
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20                0.0283254   -0.1508063    0.2074572
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               -0.1535730   -0.3919901    0.0848441
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               -0.1179325   -0.3578622    0.1219971
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.1027714   -0.3375768    0.1320341
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.1578683   -0.3240700    0.0083335
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.1775129   -0.3378679   -0.0171579
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.1519943   -0.4214991    0.1175104
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              <20               -0.0357475   -0.5049275    0.4334324
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <20               -0.0344034   -0.4990307    0.4302239
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <20               -0.0432948   -0.5158933    0.4293036
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0394040   -0.2124038    0.1335958
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              <20                0.0585622   -0.1436092    0.2607336
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.0653251   -0.2342332    0.1035830
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               -0.0556710   -0.2825278    0.1711858
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               -0.1182537   -0.4305421    0.1940348
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               -0.2005386   -0.4262139    0.0251367
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0694610   -0.4013169    0.2623949
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.1543051   -0.4791213    0.1705112
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0297068   -0.2861535    0.3455670
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               -0.4235557   -0.7664042   -0.0807072
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               -0.2997690   -0.6532498    0.0537118
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               -0.4657112   -0.9352992    0.0038768
3-6 months     ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          [20-25)              <20               -0.2743534   -0.5300407   -0.0186662
3-6 months     ki1000108-IRC              INDIA                          [25-30)              <20               -0.1956995   -0.4655896    0.0741907
3-6 months     ki1000108-IRC              INDIA                          >=30                 <20               -0.1690039   -0.5232135    0.1852058
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               -0.0889415   -0.2784876    0.1006045
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.1037187   -0.2905253    0.0830879
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.1542578   -0.3232510    0.0147355
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0070277   -0.1451779    0.1592334
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20                0.0781335   -0.0844792    0.2407463
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20                0.0065063   -0.1625424    0.1755550
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20                0.0168240   -0.0968696    0.1305176
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20                0.0174195   -0.1026587    0.1374976
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0470664   -0.1804938    0.0863610
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               -0.0216048   -0.1204431    0.0772335
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0019237   -0.1012962    0.0974487
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               -0.0619650   -0.1811986    0.0572686
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.0300358   -0.1316956    0.1917673
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0105003   -0.1712418    0.1502411
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0639363   -0.0979327    0.2258054
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         [20-25)              <20               -0.0842443   -0.2191689    0.0506802
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              <20               -0.1240606   -0.2611768    0.0130557
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 <20               -0.1403162   -0.2589046   -0.0217278
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0597120   -0.1739004    0.0544764
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0378722   -0.1537075    0.0779630
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.1651435   -0.3019708   -0.0283162
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0022625   -0.0438132    0.0392882
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0048657   -0.0576417    0.0479103
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0254302   -0.0849842    0.0341237
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.0217895   -0.0401489    0.0837279
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               -0.0342916   -0.0998947    0.0313116
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0106876   -0.0794246    0.0580494
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0653386   -0.1620979    0.0314208
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.1301248   -0.2269692   -0.0332805
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.0989342   -0.1917608   -0.0061075
3-6 months     ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          [20-25)              <20               -0.0161627   -0.0669089    0.0345835
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              <20               -0.0092599   -0.0610114    0.0424917
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 <20               -0.0438263   -0.0982624    0.0106099
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0516438   -0.0747675   -0.0285200
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0258571   -0.0561020    0.0043878
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0425268   -0.0780076   -0.0070461
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20                0.0323026   -0.0477799    0.1123852
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               -0.0170906   -0.0933635    0.0591822
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               -0.0470166   -0.1347255    0.0406923
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20                0.1435159   -0.0096419    0.2966736
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20                0.0932581   -0.0602900    0.2468061
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <20                0.1287499   -0.0341004    0.2916003
6-12 months    ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.0293572   -0.1187262    0.0600117
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              <20                0.0045239   -0.0871947    0.0962424
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 <20                0.0190768   -0.1157532    0.1539067
6-12 months    ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0034566   -0.0940972    0.0871839
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               -0.0891386   -0.1780294   -0.0002478
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.0027655   -0.0856525    0.0801215
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               -0.1189767   -0.2383413    0.0003880
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20                0.0523693   -0.0928393    0.1975779
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               -0.0970532   -0.2155499    0.0214436
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.1723618   -0.0167873    0.3615110
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.0958855   -0.0880041    0.2797750
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0719495   -0.1067047    0.2506037
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               -0.0678369   -0.2503682    0.1146944
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               -0.0017324   -0.1939968    0.1905321
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               -0.0044262   -0.2297922    0.2209399
6-12 months    ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          [20-25)              <20                0.0075766   -0.1390836    0.1542367
6-12 months    ki1000108-IRC              INDIA                          [25-30)              <20               -0.0123401   -0.1599868    0.1353066
6-12 months    ki1000108-IRC              INDIA                          >=30                 <20                0.0541753   -0.1108855    0.2192361
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               -0.0287069   -0.0806197    0.0232059
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.0679475   -0.1228940   -0.0130011
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.0498257   -0.1172928    0.0176414
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               -0.1080628   -0.4948952    0.2787695
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               -0.2363373   -0.6011885    0.1285139
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               -0.1710272   -0.5567084    0.2146539
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0030627   -0.0753535    0.0814789
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0390780   -0.1185974    0.0404415
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0136093   -0.0987561    0.0715375
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0000386   -0.0601907    0.0601134
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0234872   -0.0870257    0.0400514
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0170379   -0.0836411    0.0495653
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20                0.0326799   -0.0184929    0.0838526
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20                0.0501928   -0.0008640    0.1012497
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20                0.0384998   -0.0229095    0.0999092
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0059367   -0.1112170    0.0993436
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0186026   -0.1223126    0.0851074
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               -0.0213221   -0.1251496    0.0825054
6-12 months    ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20                0.0212142   -0.0386785    0.0811069
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20                0.0153588   -0.0417676    0.0724851
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               -0.0310400   -0.0836879    0.0216079
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               -0.0914951   -0.1879500    0.0049597
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               -0.0728793   -0.1798508    0.0340922
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               -0.0742106   -0.1820219    0.0336007
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0363611   -0.0925275    0.0198053
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0790268   -0.1358122   -0.0222414
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.0749822   -0.1392035   -0.0107608
6-12 months    ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0066055   -0.0412847    0.0280737
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0380134   -0.0744699   -0.0015569
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0168033   -0.0588805    0.0252740
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               -0.0032103   -0.0383358    0.0319153
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20                0.0035665   -0.0332445    0.0403774
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0116912   -0.0492861    0.0259037
6-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0465767   -0.1051578    0.0120044
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.0824860   -0.1410635   -0.0239086
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.0331203   -0.0887921    0.0225514
6-12 months    ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          [20-25)              <20                0.0009247   -0.0415446    0.0433940
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               -0.0008977   -0.0433853    0.0415899
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 <20               -0.0150768   -0.0589273    0.0287737
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               -0.0133667   -0.0573332    0.0305997
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               -0.0429596   -0.0871954    0.0012761
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               -0.0390028   -0.0831379    0.0051323
6-12 months    ki1148112-LCNI-5           MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20                0.0321806   -0.0561015    0.1204627
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20                0.0855583   -0.0021099    0.1732266
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20                0.0269851   -0.0557160    0.1096862
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0245009   -0.0384535   -0.0105484
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0244018   -0.0423461   -0.0064575
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0331215   -0.0576475   -0.0085956
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20                0.0067406   -0.0433879    0.0568691
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20                0.0001704   -0.0482385    0.0485793
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               -0.0114327   -0.0651356    0.0422703
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               -0.0674818   -0.1659320    0.0309684
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               -0.0661769   -0.1592789    0.0269252
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.0617746   -0.1701340    0.0465849
12-24 months   ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.0123351   -0.0581224    0.0334521
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.0319774   -0.0819827    0.0180280
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.0198355   -0.0856609    0.0459899
12-24 months   ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0268650   -0.0840198    0.0302898
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20                0.0473970   -0.0077354    0.1025295
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20                0.0300174   -0.0222928    0.0823275
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20                0.0139901   -0.0560169    0.0839970
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               -0.0105531   -0.0936045    0.0724983
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20                0.0126093   -0.0573660    0.0825845
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.0046065   -0.1368593    0.1460722
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.0094120   -0.1309323    0.1497564
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0794121   -0.0566592    0.2154835
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20                0.0156583   -0.0827703    0.1140868
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               -0.0081439   -0.1103959    0.0941080
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               -0.0517268   -0.1770187    0.0735651
12-24 months   ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          [20-25)              <20                0.0207162   -0.0448288    0.0862612
12-24 months   ki1000108-IRC              INDIA                          [25-30)              <20                0.0120878   -0.0576612    0.0818368
12-24 months   ki1000108-IRC              INDIA                          >=30                 <20               -0.0555733   -0.1527723    0.0416256
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               -0.0363857   -0.0893029    0.0165315
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0377967   -0.0913482    0.0157548
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0117064   -0.0674793    0.0440665
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0368069   -0.0798720    0.0062583
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0225410   -0.0670288    0.0219467
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0357070   -0.0845665    0.0131526
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               -0.0123057   -0.0444299    0.0198186
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0187557   -0.0531115    0.0156002
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20                0.0060567   -0.0330793    0.0451927
12-24 months   ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20                0.0001798   -0.0340879    0.0344475
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20                0.0079262   -0.0290414    0.0448938
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20                0.0212856   -0.0113546    0.0539259
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0601387   -0.1056571   -0.0146202
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0415833   -0.0861308    0.0029643
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.0340946   -0.0864766    0.0182874
12-24 months   ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20                0.0315798   -0.0358541    0.0990137
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20                0.0054074   -0.0488462    0.0596611
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20                0.0557249   -0.0057667    0.1172165
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.1187155    0.0338002    0.2036307
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20                0.0589045   -0.0269797    0.1447887
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20                0.0573853   -0.0395677    0.1543383
12-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0016512   -0.0389240    0.0356215
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20                0.0017635   -0.0358890    0.0394161
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20                0.0256365   -0.0095791    0.0608521
12-24 months   ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          [20-25)              <20                0.0334534    0.0102138    0.0566930
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <20                0.0378056    0.0145822    0.0610290
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 <20                0.0220607   -0.0017091    0.0458305
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               -0.0007130   -0.0259743    0.0245483
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20                0.0075435   -0.0180789    0.0331658
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20                0.0052920   -0.0199456    0.0305297
12-24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20                0.0160583   -0.0367497    0.0688664
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20                0.0069271   -0.0504886    0.0643428
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20                0.0348396   -0.0169802    0.0866595
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0082828   -0.0197429    0.0031773
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0001528   -0.0143135    0.0140079
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0064578   -0.0245401    0.0116246
