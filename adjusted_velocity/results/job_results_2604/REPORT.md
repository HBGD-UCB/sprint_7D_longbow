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

**Outcome Variable:** y_rate_haz

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
![](/tmp/5af59ffc-856f-4c8d-84c1-3adc83249814/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/5af59ffc-856f-4c8d-84c1-3adc83249814/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1513096   -0.2361191   -0.0665001
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                -0.0091334   -0.0569015    0.0386346
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                 0.0004873   -0.0503900    0.0513645
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.1175869   -0.1906944   -0.0444793
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.2127122    0.0905766    0.3348477
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                 0.2417090    0.1609812    0.3224368
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.2740150    0.1708432    0.3771867
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.1896609    0.0961544    0.2831673
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0880119    0.0104017    0.1656221
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-25)              NA                 0.0047594   -0.0519975    0.0615164
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0299908   -0.0916370    0.0316554
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                 0.0632253   -0.0511738    0.1776245
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                -0.0082214   -0.1313107    0.1148678
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              NA                 0.0855737    0.0236755    0.1474720
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                 0.0480069   -0.0011900    0.0972038
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.0583616   -0.0202933    0.1370165
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1068913   -0.1539887   -0.0597939
0-3 months     ki0047075b-MAL-ED          PERU                           [20-25)              NA                -0.1253128   -0.1763143   -0.0743114
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                -0.1568117   -0.2134825   -0.1001409
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.2206024   -0.2791736   -0.1620313
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.2433791   -0.3356084   -0.1511498
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                -0.1939172   -0.2540001   -0.1338343
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.1159880   -0.2031034   -0.0288726
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.1043709   -0.1701574   -0.0385843
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.2216993   -0.3285681   -0.1148305
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                 0.0343046   -0.0285180    0.0971271
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0287536   -0.0996265    0.0421193
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0992767   -0.1545906   -0.0439629
0-3 months     ki1000108-IRC              INDIA                          <20                  NA                -0.2967901   -0.4749470   -0.1186331
0-3 months     ki1000108-IRC              INDIA                          [20-25)              NA                -0.2700110   -0.3467946   -0.1932275
0-3 months     ki1000108-IRC              INDIA                          [25-30)              NA                -0.2317606   -0.3344827   -0.1290384
0-3 months     ki1000108-IRC              INDIA                          >=30                 NA                -0.2505504   -0.4524954   -0.0486054
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0432592   -0.0068551    0.0933735
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                 0.0345132    0.0092067    0.0598197
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                 0.0026334   -0.0424256    0.0476924
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0685210   -0.1286021   -0.0084400
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.1112530   -0.1784230   -0.0440830
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                -0.0899107   -0.1335297   -0.0462918
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.1333376   -0.1818817   -0.0847936
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.1445368   -0.1917261   -0.0973475
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0086836   -0.0364964    0.0538635
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                -0.0381385   -0.0635512   -0.0127257
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0404927   -0.0712004   -0.0097850
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0674979   -0.1044075   -0.0305882
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.1227648   -0.1708195   -0.0747101
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                -0.1161899   -0.1470619   -0.0853179
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.1274001   -0.1583247   -0.0964755
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.1035156   -0.1452036   -0.0618276
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  NA                -0.2251409   -0.2829174   -0.1673644
0-3 months     ki1101329-Keneba           GAMBIA                         [20-25)              NA                -0.2783595   -0.3273409   -0.2293781
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.3064433   -0.3575344   -0.2553522
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.3553027   -0.3900531   -0.3205523
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  NA                -0.4102840   -0.4716006   -0.3489674
0-3 months     ki1119695-PROBIT           BELARUS                        [20-25)              NA                -0.4291566   -0.4906208   -0.3676923
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.4489247   -0.5062484   -0.3916009
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.4493829   -0.5087338   -0.3900320
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1507332   -0.1763692   -0.1250971
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                -0.1294324   -0.1456642   -0.1132007
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.1325654   -0.1522008   -0.1129299
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.1785996   -0.2017481   -0.1554512
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.5070684   -0.5479817   -0.4661550
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                -0.4566590   -0.4923788   -0.4209393
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.5816638   -0.6201202   -0.5432075
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.5574610   -0.5889861   -0.5259359
0-3 months     ki1135781-COHORTS          INDIA                          <20                  NA                -0.0396211   -0.0624193   -0.0168229
0-3 months     ki1135781-COHORTS          INDIA                          [20-25)              NA                -0.0519491   -0.0652369   -0.0386612
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0596941   -0.0737597   -0.0456285
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.1106488   -0.1282230   -0.0930747
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                 0.0793233    0.0722413    0.0864054
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                 0.0767332    0.0694085    0.0840579
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                 0.0578416    0.0472579    0.0684254
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                 0.0388032    0.0247741    0.0528322
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.0176304   -0.0312678    0.0665286
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                -0.0348272   -0.0695370   -0.0001174
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0087261   -0.0405771    0.0231250
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                 0.0211146   -0.0214682    0.0636974
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0907464    0.0092996    0.1721933
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                 0.0377311   -0.0290818    0.1045440
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0533731   -0.0139308    0.1206770
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0564738   -0.0077677    0.1207153
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0272367   -0.0238205    0.0782939
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-25)              NA                -0.0447496   -0.0892534   -0.0002457
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0691979   -0.1069245   -0.0314714
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0593936   -0.1320039    0.0132166
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  NA                 0.3133095    0.2608831    0.3657359
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              NA                 0.0093473   -0.0269902    0.0456848
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                -0.0089010   -0.0426242    0.0248222
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 NA                 0.0037959   -0.0369077    0.0444996
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0152872   -0.0387822    0.0693566
3-6 months     ki0047075b-MAL-ED          PERU                           [20-25)              NA                -0.0053853   -0.0621249    0.0513542
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              NA                 0.0358910   -0.0338732    0.1056553
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0237985   -0.0760489    0.0284519
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.0010094   -0.0675186    0.0695375
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                 0.0337092   -0.0168176    0.0842360
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0399070   -0.1391340    0.0593201
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0718327   -0.1242839   -0.0193815
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0452643   -0.1816159    0.0910873
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0798680   -0.1477459   -0.0119900
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1214729   -0.1796397   -0.0633061
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0354126   -0.0829580    0.0121328
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0761972   -0.0725615    0.2249560
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                -0.1291117   -0.1962622   -0.0619612
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0753078   -0.1542616    0.0036459
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.1484354   -0.3124587    0.0155880
3-6 months     ki1000108-IRC              INDIA                          <20                  NA                 0.0627658   -0.0522785    0.1778101
3-6 months     ki1000108-IRC              INDIA                          [20-25)              NA                -0.0763986   -0.1146803   -0.0381170
3-6 months     ki1000108-IRC              INDIA                          [25-30)              NA                -0.0461396   -0.1025452    0.0102659
3-6 months     ki1000108-IRC              INDIA                          >=30                 NA                -0.0336443   -0.1528014    0.0855127
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0278576   -0.0413342    0.0970494
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                -0.0174137   -0.0386122    0.0037848
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0234417   -0.0564499    0.0095664
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0386461   -0.0857001    0.0084079
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0683449   -0.1274836   -0.0092062
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                -0.0608902   -0.0951368   -0.0266437
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0266905   -0.0696543    0.0162733
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0616083   -0.1106123   -0.0126043
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0105914   -0.0507239    0.0295411
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                -0.0138041   -0.0367596    0.0091515
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0119278   -0.0390825    0.0152268
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0398830   -0.0733953   -0.0063707
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0478832    0.0153784    0.0803880
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                 0.0310820    0.0028123    0.0593517
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                 0.0422108    0.0140668    0.0703548
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                 0.0142054   -0.0248912    0.0533020
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0916067   -0.1546600   -0.0285534
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0823195   -0.1113431   -0.0532959
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1005380   -0.1286228   -0.0724531
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0612881   -0.0897509   -0.0328252
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0384016   -0.0061493    0.0829525
3-6 months     ki1101329-Keneba           GAMBIA                         [20-25)              NA                -0.0047079   -0.0443609    0.0349451
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0293141   -0.0698578    0.0112296
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0347176   -0.0606247   -0.0088105
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.1352029   -0.1799415   -0.0904644
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                -0.1666150   -0.1981158   -0.1351143
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.1587899   -0.1907379   -0.1268420
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.2101631   -0.2558468   -0.1644793
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  NA                 0.0539897    0.0305378    0.0774417
3-6 months     ki1119695-PROBIT           BELARUS                        [20-25)              NA                 0.0496335    0.0304587    0.0688083
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0462307    0.0225526    0.0699088
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0351753    0.0115201    0.0588305
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                 0.0046240   -0.0194453    0.0286932
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                 0.0105810   -0.0041611    0.0253231
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0165765   -0.0341942    0.0010413
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0068876   -0.0267422    0.0129670
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0439234   -0.0727424   -0.0151043
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                -0.0901881   -0.1143105   -0.0660656
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.1071291   -0.1314169   -0.0828412
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0988477   -0.1217355   -0.0759599
3-6 months     ki1135781-COHORTS          INDIA                          <20                  NA                -0.0549707   -0.0741325   -0.0358090
3-6 months     ki1135781-COHORTS          INDIA                          [20-25)              NA                -0.0613186   -0.0715191   -0.0511181
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0636363   -0.0747053   -0.0525672
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0721890   -0.0855498   -0.0588283
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                 0.0106053    0.0041462    0.0170644
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                -0.0189999   -0.0277565   -0.0102432
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0090481   -0.0211925    0.0030963
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0164492   -0.0313006   -0.0015977
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0622111   -0.0832654   -0.0411569
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                -0.0624488   -0.0778973   -0.0470003
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0846808   -0.0982061   -0.0711555
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0784644   -0.0959340   -0.0609948
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0348055   -0.0872192    0.0176082
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                 0.0254235   -0.0029846    0.0538317
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                 0.0079766   -0.0219110    0.0378642
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                 0.0177027   -0.0162393    0.0516447
6-12 months    ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0955898   -0.1254518   -0.0657279
6-12 months    ki0047075b-MAL-ED          INDIA                          [20-25)              NA                -0.0925340   -0.1094024   -0.0756655
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0762133   -0.0953813   -0.0570453
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.1066477   -0.1420132   -0.0712822
6-12 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0331840   -0.0564850   -0.0098830
6-12 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                -0.0334931   -0.0631890   -0.0037972
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                -0.0734156   -0.1019569   -0.0448743
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0362095   -0.0609492   -0.0114698
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0177426   -0.0451244    0.0096392
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                -0.0758957   -0.1006230   -0.0511684
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                 0.0028425   -0.0326533    0.0383383
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0699778   -0.0943792   -0.0455764
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1642238   -0.2245833   -0.1038644
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0959036   -0.1238139   -0.0679933
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.1218851   -0.1461910   -0.0975793
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.1363463   -0.1567099   -0.1159826
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0903200   -0.1628760   -0.0177640
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                -0.1115948   -0.1392949   -0.0838946
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0870191   -0.1260156   -0.0480226
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0857793   -0.1492448   -0.0223138
6-12 months    ki1000108-IRC              INDIA                          <20                  NA                -0.0264380   -0.0889834    0.0361074
6-12 months    ki1000108-IRC              INDIA                          [20-25)              NA                -0.0225823   -0.0403379   -0.0048266
6-12 months    ki1000108-IRC              INDIA                          [25-30)              NA                -0.0354173   -0.0553363   -0.0154984
6-12 months    ki1000108-IRC              INDIA                          >=30                 NA                -0.0108791   -0.0510785    0.0293203
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0717289   -0.0862796   -0.0571782
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                -0.0844738   -0.0943688   -0.0745789
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                -0.0965364   -0.1120201   -0.0810527
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                -0.0874994   -0.1048394   -0.0701594
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  NA                -0.1019126   -0.2252564    0.0214313
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              NA                -0.1043986   -0.1601544   -0.0486428
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                -0.1420166   -0.1727929   -0.1112403
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                -0.1226476   -0.1767907   -0.0685045
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0500374   -0.0794356   -0.0206392
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                -0.0462890   -0.0612714   -0.0313066
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0633468   -0.0800860   -0.0466076
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0518010   -0.0719010   -0.0317010
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0564882   -0.0760634   -0.0369130
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                -0.0595594   -0.0696668   -0.0494520
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0706620   -0.0834421   -0.0578819
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0643562   -0.0789951   -0.0497173
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0442256   -0.0615564   -0.0268949
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                -0.0302270   -0.0427124   -0.0177416
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.0280431   -0.0400983   -0.0159878
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0292425   -0.0482711   -0.0102139
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0406148   -0.0738674   -0.0073622
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0529859   -0.0695351   -0.0364367
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0596289   -0.0747400   -0.0445178
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0633452   -0.0781210   -0.0485693
6-12 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0726642   -0.0893803   -0.0559481
6-12 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                -0.0485704   -0.0653117   -0.0318291
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0572584   -0.0735914   -0.0409253
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0708881   -0.0830421   -0.0587342
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.0414912   -0.0741836   -0.0087989
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                -0.0853910   -0.1044498   -0.0663322
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                -0.0815028   -0.1090373   -0.0539683
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                -0.0798696   -0.1066126   -0.0531266
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0410605   -0.0594886   -0.0226324
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                -0.0575404   -0.0720475   -0.0430333
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.0730681   -0.0875703   -0.0585659
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0692894   -0.0883681   -0.0502108
6-12 months    ki1119695-PROBIT           BELARUS                        <20                  NA                 0.0521304    0.0283106    0.0759503
6-12 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                 0.0471450    0.0292344    0.0650556
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                 0.0323440    0.0155673    0.0491208
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                 0.0411764    0.0257492    0.0566036
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0466542   -0.0591969   -0.0341114
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                -0.0502341   -0.0577840   -0.0426842
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0470049   -0.0557486   -0.0382611
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0527062   -0.0618620   -0.0435505
6-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0932232   -0.1094931   -0.0769534
6-12 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                -0.1158782   -0.1281388   -0.1036177
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.1250740   -0.1375460   -0.1126021
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.1027109   -0.1134478   -0.0919741
6-12 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0911626   -0.1068775   -0.0754476
6-12 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                -0.0936065   -0.1003188   -0.0868942
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0980156   -0.1047260   -0.0913051
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0992703   -0.1071439   -0.0913967
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0853378   -0.1001072   -0.0705685
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                -0.0959665   -0.1049559   -0.0869771
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                -0.1089312   -0.1178902   -0.0999722
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.1033754   -0.1124403   -0.0943105
6-12 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.0286485   -0.0532625   -0.0040345
6-12 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                -0.0051881   -0.0261431    0.0157669
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                 0.0114873   -0.0077812    0.0307559
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0094908   -0.0272619    0.0082803
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0672511   -0.0712334   -0.0632689
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                -0.0799450   -0.0845756   -0.0753144
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0813928   -0.0877146   -0.0750710
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0820186   -0.0912680   -0.0727692
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0116923   -0.0257495    0.0023648
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                -0.0174754   -0.0266159   -0.0083350
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                -0.0174507   -0.0259519   -0.0089494
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                -0.0156829   -0.0263327   -0.0050331
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0241261   -0.0017793    0.0500315
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                -0.0078434   -0.0265760    0.0108892
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                -0.0068222   -0.0224885    0.0088441
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                -0.0037398   -0.0296638    0.0221843
12-24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0037859   -0.0130808    0.0055090
12-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              NA                -0.0078133   -0.0148909   -0.0007358
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                -0.0115421   -0.0200940   -0.0029903
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                -0.0105056   -0.0202927   -0.0007184
12-24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0127084   -0.0224728   -0.0029441
12-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                -0.0160614   -0.0279429   -0.0041799
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                 0.0030356   -0.0091743    0.0152456
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                -0.0016858   -0.0130639    0.0096923
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0030011   -0.0138471    0.0078450
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                 0.0004348   -0.0093524    0.0102221
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                -0.0091012   -0.0208842    0.0026817
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                -0.0038999   -0.0134439    0.0056442
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0471913   -0.0837609   -0.0106217
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                -0.0533056   -0.0690316   -0.0375797
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                -0.0466851   -0.0618897   -0.0314805
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                -0.0260510   -0.0362446   -0.0158575
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0505667   -0.0824109   -0.0187224
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                -0.0374440   -0.0518479   -0.0230401
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                -0.0497178   -0.0675324   -0.0319032
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                -0.0656641   -0.0992490   -0.0320792
12-24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0334785   -0.0522123   -0.0147448
12-24 months   ki1000108-IRC              INDIA                          [20-25)              NA                -0.0266048   -0.0364519   -0.0167576
12-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                -0.0336275   -0.0463815   -0.0208736
12-24 months   ki1000108-IRC              INDIA                          >=30                 NA                -0.0606964   -0.0871413   -0.0342514
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0348237   -0.0500661   -0.0195813
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                -0.0441335   -0.0522111   -0.0360559
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                -0.0407296   -0.0486892   -0.0327700
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                -0.0373215   -0.0467065   -0.0279364
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0036279   -0.0081798    0.0154355
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                -0.0121438   -0.0175817   -0.0067060
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                -0.0065823   -0.0134734    0.0003089
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                -0.0097844   -0.0191767   -0.0003921
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0007457   -0.0094424    0.0079510
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                -0.0080253   -0.0143712   -0.0016794
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                -0.0138301   -0.0213177   -0.0063424
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                -0.0026984   -0.0123293    0.0069326
12-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0236592   -0.0319636   -0.0153548
12-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                -0.0264384   -0.0335922   -0.0192847
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                -0.0244683   -0.0325870   -0.0163496
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                -0.0143366   -0.0203590   -0.0083142
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0014138   -0.0129199    0.0100922
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                -0.0228089   -0.0314573   -0.0141606
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                -0.0160887   -0.0251866   -0.0069909
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                -0.0128097   -0.0242424   -0.0013771
12-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0448746   -0.0751068   -0.0146424
12-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                -0.0403736   -0.0600568   -0.0206904
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                -0.0492812   -0.0673857   -0.0311768
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                -0.0339735   -0.0549803   -0.0129667
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0741577   -0.1005325   -0.0477828
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                -0.0372436   -0.0520860   -0.0224012
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                -0.0553836   -0.0705875   -0.0401797
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                -0.0557228   -0.0780694   -0.0333761
12-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0353335   -0.0439168   -0.0267502
12-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                -0.0381939   -0.0448244   -0.0315634
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                -0.0317147   -0.0379784   -0.0254509
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                -0.0257706   -0.0311398   -0.0204013
12-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.0423137   -0.0492123   -0.0354152
12-24 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                -0.0344938   -0.0376773   -0.0313103
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                -0.0364867   -0.0397424   -0.0332309
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                -0.0363351   -0.0400940   -0.0325762
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0607978   -0.0675256   -0.0540700
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                -0.0600616   -0.0644490   -0.0556742
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                -0.0573887   -0.0620005   -0.0527770
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                -0.0557275   -0.0601759   -0.0512791
12-24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.0216107   -0.0352642   -0.0079573
12-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                -0.0169113   -0.0289931   -0.0048295
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                -0.0213269   -0.0348952   -0.0077585
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                -0.0048038   -0.0166891    0.0070816
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0167776   -0.0195902   -0.0139649
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                -0.0212402   -0.0241107   -0.0183696
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                -0.0204421   -0.0245478   -0.0163365
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                -0.0185474   -0.0244514   -0.0126434


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
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0747429   -0.0775844   -0.0719013
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0101910   -0.0153291   -0.0050528
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
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188041   -0.0206556   -0.0169527


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20                0.1421761    0.0448362    0.2395160
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20                0.1517968    0.0529482    0.2506455
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20                0.0337227   -0.0781136    0.1455590
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20                0.0289968   -0.1173219    0.1753156
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20                0.0613028   -0.0986039    0.2212096
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.0230513   -0.1765201    0.1304176
0-3 months     ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.0832525   -0.1796141    0.0131090
0-3 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.1180027   -0.2170564   -0.0189490
0-3 months     ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.0247866   -0.1628027    0.1132295
0-3 months     ki0047075b-MAL-ED          NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              <20                0.0937952   -0.0435593    0.2311497
0-3 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <20                0.0562284   -0.0763463    0.1888030
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <20                0.0665831   -0.0794165    0.2125826
0-3 months     ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0184215   -0.0849732    0.0481302
0-3 months     ki0047075b-MAL-ED          PERU                           [25-30)              <20               -0.0499204   -0.1208798    0.0210390
0-3 months     ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.1137111   -0.1881239   -0.0392984
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20                0.0494619   -0.0607459    0.1596697
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20                0.1273911    0.0004238    0.2543584
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20                0.1390082    0.0261147    0.2519018
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.2560039    0.1320213    0.3799864
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.1929457    0.0647373    0.3211541
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.1224226    0.0022892    0.2425560
0-3 months     ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          [20-25)              <20                0.0267790   -0.1672200    0.2207780
0-3 months     ki1000108-IRC              INDIA                          [25-30)              <20                0.0650295   -0.1406201    0.2706791
0-3 months     ki1000108-IRC              INDIA                          >=30                 <20                0.0462397   -0.2230588    0.3155382
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               -0.0087460   -0.0789739    0.0614819
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.0406258   -0.1294432    0.0481915
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.1117803   -0.2004645   -0.0230961
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0213423   -0.0582824    0.1009670
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0220846   -0.1044977    0.0603284
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0332838   -0.1149166    0.0483490
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0468220   -0.0977435    0.0040994
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0491763   -0.1027552    0.0044026
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0761814   -0.1336338   -0.0187291
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20                0.0065749   -0.0504795    0.0636293
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0046353   -0.0617533    0.0524827
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20                0.0192492   -0.0443203    0.0828187
0-3 months     ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         [20-25)              <20               -0.0532186   -0.1288461    0.0224090
0-3 months     ki1101329-Keneba           GAMBIA                         [25-30)              <20               -0.0813024   -0.1583211   -0.0042837
0-3 months     ki1101329-Keneba           GAMBIA                         >=30                 <20               -0.1301618   -0.1977319   -0.0625917
0-3 months     ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0188726   -0.0498433    0.0120982
0-3 months     ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0386407   -0.0697927   -0.0074887
0-3 months     ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0390989   -0.0649560   -0.0132419
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.0213007   -0.0089586    0.0515600
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20                0.0181678   -0.0140345    0.0503702
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0278665   -0.0623279    0.0065950
0-3 months     ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              <20                0.0504093   -0.0033788    0.1041974
0-3 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.0745955   -0.1302463   -0.0189446
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.0503926   -0.1014379    0.0006526
0-3 months     ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          [20-25)              <20               -0.0123280   -0.0386808    0.0140248
0-3 months     ki1135781-COHORTS          INDIA                          [25-30)              <20               -0.0200730   -0.0468280    0.0066820
0-3 months     ki1135781-COHORTS          INDIA                          >=30                 <20               -0.0710277   -0.0998020   -0.0422535
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0025902   -0.0119538    0.0067734
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0214817   -0.0332575   -0.0097059
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0405202   -0.0560891   -0.0249512
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               -0.0524576   -0.1110419    0.0061266
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               -0.0263565   -0.0833463    0.0306333
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20                0.0034842   -0.0597312    0.0666996
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               -0.0530154   -0.1581416    0.0521109
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               -0.0373733   -0.1429693    0.0682226
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.0342726   -0.1377868    0.0692415
3-6 months     ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.0719863   -0.1394380   -0.0045345
3-6 months     ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.0964346   -0.1595052   -0.0333641
3-6 months     ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.0866304   -0.1751064    0.0018457
3-6 months     ki0047075b-MAL-ED          NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          [20-25)              <20               -0.3039623   -0.3665852   -0.2413393
3-6 months     ki0047075b-MAL-ED          NEPAL                          [25-30)              <20               -0.3222105   -0.3834875   -0.2609335
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=30                 <20               -0.3095136   -0.3749968   -0.2440304
3-6 months     ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0206725   -0.0991031    0.0577581
3-6 months     ki0047075b-MAL-ED          PERU                           [25-30)              <20                0.0206038   -0.0672744    0.1084821
3-6 months     ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.0390857   -0.1136941    0.0355227
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20                0.0326998   -0.0522603    0.1176599
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               -0.0409164   -0.1614588    0.0796260
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               -0.0728422   -0.1595373    0.0138530
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0346037   -0.1869210    0.1177137
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0762086   -0.2242583    0.0718410
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0098517   -0.1344721    0.1541755
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               -0.2053089   -0.3685215   -0.0420963
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               -0.1515050   -0.3199178    0.0169077
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               -0.2246326   -0.4460661   -0.0031990
3-6 months     ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          [20-25)              <20               -0.1391644   -0.2604108   -0.0179181
3-6 months     ki1000108-IRC              INDIA                          [25-30)              <20               -0.1089054   -0.2370334    0.0192226
3-6 months     ki1000108-IRC              INDIA                          >=30                 <20               -0.0964101   -0.2620410    0.0692208
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               -0.0452713   -0.1269779    0.0364353
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.0512993   -0.1338020    0.0312033
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.0665037   -0.1404691    0.0074617
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0074547   -0.0608625    0.0757719
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20                0.0416544   -0.0314243    0.1147332
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20                0.0067367   -0.0700455    0.0835188
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0032126   -0.0487051    0.0422798
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0013364   -0.0489514    0.0462786
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0292916   -0.0808118    0.0222286
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               -0.0168012   -0.0592086    0.0256062
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0056724   -0.0483493    0.0370045
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               -0.0336778   -0.0840029    0.0166474
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.0092872   -0.0599555    0.0785299
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0089313   -0.0778098    0.0599472
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0303186   -0.0387119    0.0993492
3-6 months     ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         [20-25)              <20               -0.0431095   -0.1027295    0.0165105
3-6 months     ki1101329-Keneba           GAMBIA                         [25-30)              <20               -0.0677157   -0.1280074   -0.0074239
3-6 months     ki1101329-Keneba           GAMBIA                         >=30                 <20               -0.0731192   -0.1246353   -0.0216031
3-6 months     ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0314121   -0.0860907    0.0232665
3-6 months     ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0235870   -0.0785551    0.0313811
3-6 months     ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.0749601   -0.1388996   -0.0110207
3-6 months     ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0043562   -0.0221407    0.0134283
3-6 months     ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0077590   -0.0305982    0.0150802
3-6 months     ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0188144   -0.0452588    0.0076300
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.0059570   -0.0222145    0.0341285
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               -0.0212004   -0.0509622    0.0085613
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0115116   -0.0426611    0.0196380
3-6 months     ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0462647   -0.0833740   -0.0091554
3-6 months     ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.0632057   -0.1006618   -0.0257496
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.0549243   -0.0914059   -0.0184428
3-6 months     ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          [20-25)              <20               -0.0063479   -0.0280354    0.0153397
3-6 months     ki1135781-COHORTS          INDIA                          [25-30)              <20               -0.0086655   -0.0307632    0.0134322
3-6 months     ki1135781-COHORTS          INDIA                          >=30                 <20               -0.0172183   -0.0405650    0.0061284
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0296052   -0.0402834   -0.0189269
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0196534   -0.0334630   -0.0058437
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0270544   -0.0427465   -0.0113624
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               -0.0002377   -0.0259926    0.0255172
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               -0.0224696   -0.0466748    0.0017355
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               -0.0162532   -0.0426574    0.0101509
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20                0.0602290    0.0018791    0.1185789
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20                0.0427821   -0.0169571    0.1025213
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <20                0.0525082   -0.0093801    0.1143965
6-12 months    ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          [20-25)              <20                0.0030559   -0.0312782    0.0373899
6-12 months    ki0047075b-MAL-ED          INDIA                          [25-30)              <20                0.0193765   -0.0161229    0.0548759
6-12 months    ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.0110578   -0.0573155    0.0351998
6-12 months    ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0003092   -0.0379976    0.0373793
6-12 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               -0.0402317   -0.0771331   -0.0033303
6-12 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               -0.0030255   -0.0370235    0.0309725
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               -0.0581531   -0.0950533   -0.0212528
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20                0.0205851   -0.0241961    0.0653662
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               -0.0522352   -0.0889214   -0.0155491
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20                0.0683203    0.0025271    0.1341134
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.0423387   -0.0220038    0.1066812
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0278776   -0.0350857    0.0908408
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               -0.0212747   -0.0989386    0.0563891
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20                0.0033009   -0.0790708    0.0856727
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20                0.0045408   -0.0918555    0.1009370
6-12 months    ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          [20-25)              <20                0.0038557   -0.0611611    0.0688726
6-12 months    ki1000108-IRC              INDIA                          [25-30)              <20               -0.0089794   -0.0746200    0.0566613
6-12 months    ki1000108-IRC              INDIA                          >=30                 <20                0.0155588   -0.0587911    0.0899088
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               -0.0127449   -0.0332868    0.0077969
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               -0.0248075   -0.0484197   -0.0011953
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               -0.0157705   -0.0357020    0.0041610
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)              <20               -0.0024860   -0.1370516    0.1320796
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <20               -0.0401040   -0.1667252    0.0865172
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <20               -0.0207350   -0.1545768    0.1131067
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20                0.0037484   -0.0292415    0.0367384
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0133093   -0.0471158    0.0204972
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0017635   -0.0373441    0.0338171
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0030712   -0.0250647    0.0189223
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0141738   -0.0375084    0.0091609
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0078679   -0.0322901    0.0165542
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20                0.0139986   -0.0073461    0.0353434
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20                0.0161826   -0.0049067    0.0372718
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20                0.0149831   -0.0107390    0.0407053
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0123711   -0.0493385    0.0245963
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               -0.0190141   -0.0554318    0.0174036
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               -0.0227304   -0.0589430    0.0134822
6-12 months    ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20                0.0240938    0.0004460    0.0477415
6-12 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20                0.0154058   -0.0079842    0.0387959
6-12 months    ki1101329-Keneba           GAMBIA                         >=30                 <20                0.0017760   -0.0188701    0.0224222
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               -0.0438997   -0.0813828   -0.0064167
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               -0.0400115   -0.0824148    0.0023917
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               -0.0383784   -0.0801657    0.0034089
6-12 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0164799   -0.0399212    0.0069614
6-12 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0320076   -0.0554515   -0.0085638
6-12 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.0282289   -0.0547483   -0.0017096
6-12 months    ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               -0.0049855   -0.0200633    0.0100923
6-12 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0197864   -0.0356850   -0.0038878
6-12 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               -0.0109541   -0.0288391    0.0069309
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               -0.0035799   -0.0181869    0.0110271
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               -0.0003507   -0.0155939    0.0148925
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               -0.0060521   -0.0215422    0.0094381
6-12 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0226550   -0.0429519   -0.0023581
6-12 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               -0.0318508   -0.0522653   -0.0114363
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               -0.0094877   -0.0289090    0.0099336
6-12 months    ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               -0.0024439   -0.0195165    0.0146286
6-12 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               -0.0068530   -0.0239329    0.0102268
6-12 months    ki1135781-COHORTS          INDIA                          >=30                 <20               -0.0081077   -0.0256655    0.0094501
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               -0.0106287   -0.0278958    0.0066385
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               -0.0235934   -0.0408528   -0.0063340
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               -0.0180376   -0.0353479   -0.0007273
6-12 months    ki1148112-LCNI-5           MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20                0.0234604   -0.0082057    0.0551266
6-12 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20                0.0401358    0.0096900    0.0705816
6-12 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20                0.0191577   -0.0103969    0.0487123
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0126938   -0.0185066   -0.0068811
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0141417   -0.0216439   -0.0066394
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0147675   -0.0246404   -0.0048945
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               -0.0057831   -0.0225547    0.0109885
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               -0.0057583   -0.0221723    0.0106556
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               -0.0039906   -0.0216277    0.0136465
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               -0.0319695   -0.0639249   -0.0000141
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               -0.0309483   -0.0612204   -0.0006762
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               -0.0278659   -0.0644942    0.0087624
12-24 months   ki0047075b-MAL-ED          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              <20               -0.0040275   -0.0156577    0.0076027
12-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <20               -0.0077563   -0.0203440    0.0048315
12-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <20               -0.0067197   -0.0201920    0.0067527
12-24 months   ki0047075b-MAL-ED          PERU                           <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               -0.0033530   -0.0180561    0.0113502
12-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20                0.0157441    0.0003193    0.0311688
12-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20                0.0110226   -0.0034286    0.0254738
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20                0.0034359   -0.0104360    0.0173079
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               -0.0061002   -0.0212393    0.0090390
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               -0.0008988   -0.0147369    0.0129393
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               -0.0061143   -0.0457792    0.0335506
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20                0.0005062   -0.0389383    0.0399507
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20                0.0211403   -0.0167265    0.0590071
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20                0.0131227   -0.0218277    0.0480731
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20                0.0008489   -0.0356397    0.0373374
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               -0.0150974   -0.0613792    0.0311843
12-24 months   ki1000108-IRC              INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          [20-25)              <20                0.0068738   -0.0142904    0.0280379
12-24 months   ki1000108-IRC              INDIA                          [25-30)              <20               -0.0001490   -0.0228121    0.0225141
12-24 months   ki1000108-IRC              INDIA                          >=30                 <20               -0.0272178   -0.0596260    0.0051903
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               -0.0093098   -0.0265590    0.0079394
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               -0.0059059   -0.0231002    0.0112884
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               -0.0024978   -0.0203969    0.0154013
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               -0.0157717   -0.0286939   -0.0028495
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               -0.0102102   -0.0238218    0.0034015
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               -0.0134123   -0.0284211    0.0015965
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               -0.0072797   -0.0180262    0.0034669
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               -0.0130844   -0.0245448   -0.0016240
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               -0.0019527   -0.0149181    0.0110127
12-24 months   ki1101329-Keneba           GAMBIA                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               -0.0027792   -0.0137512    0.0081928
12-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               -0.0008091   -0.0124041    0.0107860
12-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20                0.0093227   -0.0009353    0.0195806
12-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               -0.0213951   -0.0357855   -0.0070047
12-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               -0.0146749   -0.0293394   -0.0000104
12-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               -0.0113959   -0.0276126    0.0048209
12-24 months   ki1119695-PROBIT           BELARUS                        <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20                0.0045010   -0.0224275    0.0314296
12-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               -0.0044066   -0.0253348    0.0165215
12-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20                0.0109011   -0.0109302    0.0327323
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20                0.0369141    0.0066497    0.0671784
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20                0.0187741   -0.0116691    0.0492174
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20                0.0184349   -0.0161339    0.0530037
12-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               -0.0028604   -0.0136394    0.0079187
12-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20                0.0036188   -0.0069449    0.0141825
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20                0.0095629   -0.0004954    0.0196212
12-24 months   ki1135781-COHORTS          INDIA                          <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          [20-25)              <20                0.0078199    0.0002278    0.0154120
12-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <20                0.0058271   -0.0017955    0.0134497
12-24 months   ki1135781-COHORTS          INDIA                          >=30                 <20                0.0059786   -0.0018675    0.0138247
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20                0.0007362   -0.0072773    0.0087497
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20                0.0034091   -0.0047335    0.0115517
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20                0.0050703   -0.0029802    0.0131208
12-24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20                0.0046994   -0.0135321    0.0229309
12-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20                0.0002839   -0.0189650    0.0195327
12-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20                0.0168070   -0.0012949    0.0349089
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               -0.0044626   -0.0082879   -0.0006373
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               -0.0036646   -0.0084887    0.0011596
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               -0.0017698   -0.0081775    0.0046379
